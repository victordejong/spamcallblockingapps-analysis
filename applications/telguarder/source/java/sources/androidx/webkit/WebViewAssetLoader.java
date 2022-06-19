package androidx.webkit;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebResourceResponse;
import androidx.webkit.internal.AssetHelper;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewAssetLoader.class */
public final class WebViewAssetLoader {
    public static final String DEFAULT_DOMAIN = "appassets.androidplatform.net";
    private static final String TAG = "WebViewAssetLoader";
    private final List<PathMatcher> mMatchers;

    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewAssetLoader$AssetsPathHandler.class */
    public static final class AssetsPathHandler implements PathHandler {
        private AssetHelper mAssetHelper;

        public AssetsPathHandler(Context context) {
            this.mAssetHelper = new AssetHelper(context);
        }

        AssetsPathHandler(AssetHelper assetHelper) {
            this.mAssetHelper = assetHelper;
        }

        @Override // androidx.webkit.WebViewAssetLoader.PathHandler
        public WebResourceResponse handle(String str) {
            try {
                return new WebResourceResponse(AssetHelper.guessMimeType(str), null, this.mAssetHelper.openAsset(str));
            } catch (IOException e) {
                Log.e(WebViewAssetLoader.TAG, "Error opening asset path: " + str, e);
                return new WebResourceResponse(null, null, null);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewAssetLoader$Builder.class */
    public static final class Builder {
        private boolean mHttpAllowed = false;
        private String mDomain = WebViewAssetLoader.DEFAULT_DOMAIN;
        private List<PathMatcher> mBuilderMatcherList = new ArrayList();

        public Builder addPathHandler(String str, PathHandler pathHandler) {
            this.mBuilderMatcherList.add(new PathMatcher(this.mDomain, str, this.mHttpAllowed, pathHandler));
            return this;
        }

        public WebViewAssetLoader build() {
            return new WebViewAssetLoader(this.mBuilderMatcherList);
        }

        public Builder setDomain(String str) {
            this.mDomain = str;
            return this;
        }

        public Builder setHttpAllowed(boolean z) {
            this.mHttpAllowed = z;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewAssetLoader$InternalStoragePathHandler.class */
    public static final class InternalStoragePathHandler implements PathHandler {
        private static final String[] FORBIDDEN_DATA_DIRS = {"app_webview/", "databases/", "lib/", "shared_prefs/", "code_cache/"};
        private final File mDirectory;

        public InternalStoragePathHandler(Context context, File file) {
            try {
                this.mDirectory = new File(AssetHelper.getCanonicalDirPath(file));
                if (isAllowedInternalStorageDir(context)) {
                    return;
                }
                throw new IllegalArgumentException("The given directory \"" + file + "\" doesn't exist under an allowed app internal storage directory");
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve the canonical path for the given directory: " + file.getPath(), e);
            }
        }

        private boolean isAllowedInternalStorageDir(Context context) throws IOException {
            String canonicalDirPath = AssetHelper.getCanonicalDirPath(this.mDirectory);
            String canonicalDirPath2 = AssetHelper.getCanonicalDirPath(context.getCacheDir());
            String canonicalDirPath3 = AssetHelper.getCanonicalDirPath(AssetHelper.getDataDir(context));
            if ((canonicalDirPath.startsWith(canonicalDirPath2) || canonicalDirPath.startsWith(canonicalDirPath3)) && !canonicalDirPath.equals(canonicalDirPath2) && !canonicalDirPath.equals(canonicalDirPath3)) {
                for (String str : FORBIDDEN_DATA_DIRS) {
                    if (canonicalDirPath.startsWith(canonicalDirPath3 + str)) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }

        @Override // androidx.webkit.WebViewAssetLoader.PathHandler
        public WebResourceResponse handle(String str) {
            File canonicalFileIfChild;
            try {
                canonicalFileIfChild = AssetHelper.getCanonicalFileIfChild(this.mDirectory, str);
            } catch (IOException e) {
                Log.e(WebViewAssetLoader.TAG, "Error opening the requested path: " + str, e);
            }
            if (canonicalFileIfChild != null) {
                return new WebResourceResponse(AssetHelper.guessMimeType(str), null, AssetHelper.openFile(canonicalFileIfChild));
            }
            Log.e(WebViewAssetLoader.TAG, String.format("The requested file: %s is outside the mounted directory: %s", str, this.mDirectory));
            return new WebResourceResponse(null, null, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewAssetLoader$PathHandler.class */
    public interface PathHandler {
        WebResourceResponse handle(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewAssetLoader$PathMatcher.class */
    public static class PathMatcher {
        static final String HTTPS_SCHEME = "https";
        static final String HTTP_SCHEME = "http";
        final String mAuthority;
        final PathHandler mHandler;
        final boolean mHttpEnabled;
        final String mPath;

        PathMatcher(String str, String str2, boolean z, PathHandler pathHandler) {
            if (str2.isEmpty() || str2.charAt(0) != '/') {
                throw new IllegalArgumentException("Path should start with a slash '/'.");
            }
            if (!str2.endsWith("/")) {
                throw new IllegalArgumentException("Path should end with a slash '/'");
            }
            this.mAuthority = str;
            this.mPath = str2;
            this.mHttpEnabled = z;
            this.mHandler = pathHandler;
        }

        public String getSuffixPath(String str) {
            return str.replaceFirst(this.mPath, "");
        }

        public PathHandler match(Uri uri) {
            if (!uri.getScheme().equals("http") || this.mHttpEnabled) {
                if ((!uri.getScheme().equals("http") && !uri.getScheme().equals("https")) || !uri.getAuthority().equals(this.mAuthority) || !uri.getPath().startsWith(this.mPath)) {
                    return null;
                }
                return this.mHandler;
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewAssetLoader$ResourcesPathHandler.class */
    public static final class ResourcesPathHandler implements PathHandler {
        private AssetHelper mAssetHelper;

        public ResourcesPathHandler(Context context) {
            this.mAssetHelper = new AssetHelper(context);
        }

        ResourcesPathHandler(AssetHelper assetHelper) {
            this.mAssetHelper = assetHelper;
        }

        @Override // androidx.webkit.WebViewAssetLoader.PathHandler
        public WebResourceResponse handle(String str) {
            try {
                return new WebResourceResponse(AssetHelper.guessMimeType(str), null, this.mAssetHelper.openResource(str));
            } catch (Resources.NotFoundException e) {
                Log.e(WebViewAssetLoader.TAG, "Resource not found from the path: " + str, e);
                return new WebResourceResponse(null, null, null);
            } catch (IOException e2) {
                Log.e(WebViewAssetLoader.TAG, "Error opening resource from the path: " + str, e2);
                return new WebResourceResponse(null, null, null);
            }
        }
    }

    WebViewAssetLoader(List<PathMatcher> list) {
        this.mMatchers = list;
    }

    public WebResourceResponse shouldInterceptRequest(Uri uri) {
        WebResourceResponse handle;
        for (PathMatcher pathMatcher : this.mMatchers) {
            PathHandler match = pathMatcher.match(uri);
            if (match != null && (handle = match.handle(pathMatcher.getSuffixPath(uri.getPath()))) != null) {
                return handle;
            }
        }
        return null;
    }
}
