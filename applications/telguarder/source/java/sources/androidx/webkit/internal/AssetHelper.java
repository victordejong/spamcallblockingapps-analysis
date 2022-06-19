package androidx.webkit.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.TypedValue;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.zip.GZIPInputStream;
/* loaded from: classes-dex2jar.jar:androidx/webkit/internal/AssetHelper.class */
public class AssetHelper {
    public static final String DEFAULT_MIME_TYPE = "text/plain";
    private static final String TAG = "AssetHelper";
    private Context mContext;

    public AssetHelper(Context context) {
        this.mContext = context;
    }

    public static String getCanonicalDirPath(File file) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        String str = canonicalPath;
        if (!canonicalPath.endsWith("/")) {
            str = canonicalPath + "/";
        }
        return str;
    }

    public static File getCanonicalFileIfChild(File file, String str) throws IOException {
        String canonicalDirPath = getCanonicalDirPath(file);
        String canonicalPath = new File(file, str).getCanonicalPath();
        if (canonicalPath.startsWith(canonicalDirPath)) {
            return new File(canonicalPath);
        }
        return null;
    }

    public static File getDataDir(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? context.getDataDir() : context.getCacheDir().getParentFile();
    }

    private int getFieldId(String str, String str2) {
        return this.mContext.getResources().getIdentifier(str2, str, this.mContext.getPackageName());
    }

    private int getValueType(int i) {
        TypedValue typedValue = new TypedValue();
        this.mContext.getResources().getValue(i, typedValue, true);
        return typedValue.type;
    }

    public static String guessMimeType(String str) {
        String guessContentTypeFromName = URLConnection.guessContentTypeFromName(str);
        String str2 = guessContentTypeFromName;
        if (guessContentTypeFromName == null) {
            str2 = DEFAULT_MIME_TYPE;
        }
        return str2;
    }

    private static InputStream handleSvgzStream(String str, InputStream inputStream) throws IOException {
        GZIPInputStream gZIPInputStream = inputStream;
        if (str.endsWith(".svgz")) {
            gZIPInputStream = new GZIPInputStream(inputStream);
        }
        return gZIPInputStream;
    }

    public static InputStream openFile(File file) throws FileNotFoundException, IOException {
        return handleSvgzStream(file.getPath(), new FileInputStream(file));
    }

    private static String removeLeadingSlash(String str) {
        String str2 = str;
        if (str.length() > 1) {
            str2 = str;
            if (str.charAt(0) == '/') {
                str2 = str.substring(1);
            }
        }
        return str2;
    }

    public InputStream openAsset(String str) throws IOException {
        String removeLeadingSlash = removeLeadingSlash(str);
        return handleSvgzStream(removeLeadingSlash, this.mContext.getAssets().open(removeLeadingSlash, 2));
    }

    public InputStream openResource(String str) throws Resources.NotFoundException, IOException {
        String removeLeadingSlash = removeLeadingSlash(str);
        String[] split = removeLeadingSlash.split("/", -1);
        if (split.length != 2) {
            throw new IllegalArgumentException("Incorrect resource path: " + removeLeadingSlash);
        }
        String str2 = split[0];
        String str3 = split[1];
        int lastIndexOf = str3.lastIndexOf(46);
        String str4 = str3;
        if (lastIndexOf != -1) {
            str4 = str3.substring(0, lastIndexOf);
        }
        int fieldId = getFieldId(str2, str4);
        int valueType = getValueType(fieldId);
        if (valueType != 3) {
            throw new IOException(String.format("Expected %s resource to be of TYPE_STRING but was %d", removeLeadingSlash, Integer.valueOf(valueType)));
        }
        return handleSvgzStream(removeLeadingSlash, this.mContext.getResources().openRawResource(fieldId));
    }
}
