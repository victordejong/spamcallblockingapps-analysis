package androidx.core.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.amazonaws.services.s3.util.Mimetypes;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider.class */
public class FileProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f1823a = {"_display_name", "_size"};

    /* renamed from: b  reason: collision with root package name */
    private static final File f1824b = new File("/");

    /* renamed from: c  reason: collision with root package name */
    private static HashMap<String, a> f1825c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private a f1826d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$a.class */
    public interface a {
        Uri a(File file);

        File a(Uri uri);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$b.class */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        final HashMap<String, File> f1827a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private final String f1828b;

        b(String str) {
            this.f1828b = str;
        }

        @Override // androidx.core.content.FileProvider.a
        public final Uri a(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f1827a.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry != null) {
                    String path2 = entry.getValue().getPath();
                    String substring = path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1);
                    return new Uri.Builder().scheme(Constants.VAST_TRACKER_CONTENT).authority(this.f1828b).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(substring, "/")).build();
                }
                throw new IllegalArgumentException("Failed to find configured root that contains ".concat(String.valueOf(canonicalPath)));
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file)));
            }
        }

        @Override // androidx.core.content.FileProvider.a
        public final File a(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f1827a.get(decode);
            if (file != null) {
                File file2 = new File(file, decode2);
                try {
                    File canonicalFile = file2.getCanonicalFile();
                    if (canonicalFile.getPath().startsWith(file.getPath())) {
                        return canonicalFile;
                    }
                    throw new SecurityException("Resolved path jumped beyond configured root");
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file2)));
                }
            } else {
                throw new IllegalArgumentException("Unable to find configured root for ".concat(String.valueOf(uri)));
            }
        }
    }

    public static Uri a(Context context, String str, File file) {
        return a(context, str).a(file);
    }

    private static a a(Context context, String str) {
        b bVar;
        File file;
        synchronized (f1825c) {
            a aVar = f1825c.get(str);
            bVar = aVar;
            if (aVar == null) {
                try {
                    try {
                        b bVar2 = new b(str);
                        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
                        if (resolveContentProvider != null) {
                            XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
                            if (loadXmlMetaData != null) {
                                while (true) {
                                    int next = loadXmlMetaData.next();
                                    if (next == 1) {
                                        f1825c.put(str, bVar2);
                                        bVar = bVar2;
                                        break;
                                    } else if (next == 2) {
                                        String name = loadXmlMetaData.getName();
                                        String attributeValue = loadXmlMetaData.getAttributeValue(null, "name");
                                        String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                                        if ("root-path".equals(name)) {
                                            file = f1824b;
                                        } else if ("files-path".equals(name)) {
                                            file = context.getFilesDir();
                                        } else if ("cache-path".equals(name)) {
                                            file = context.getCacheDir();
                                        } else if ("external-path".equals(name)) {
                                            file = Environment.getExternalStorageDirectory();
                                        } else if ("external-files-path".equals(name)) {
                                            File[] a2 = androidx.core.content.b.a(context);
                                            file = null;
                                            if (a2.length > 0) {
                                                file = a2[0];
                                            }
                                        } else if ("external-cache-path".equals(name)) {
                                            File[] b2 = androidx.core.content.b.b(context);
                                            file = null;
                                            if (b2.length > 0) {
                                                file = b2[0];
                                            }
                                        } else {
                                            file = null;
                                            if (Build.VERSION.SDK_INT >= 21) {
                                                file = null;
                                                if ("external-media-path".equals(name)) {
                                                    File[] externalMediaDirs = context.getExternalMediaDirs();
                                                    file = null;
                                                    if (externalMediaDirs.length > 0) {
                                                        file = externalMediaDirs[0];
                                                    }
                                                }
                                            }
                                        }
                                        if (file != null) {
                                            File a3 = a(file, attributeValue2);
                                            if (!TextUtils.isEmpty(attributeValue)) {
                                                try {
                                                    bVar2.f1827a.put(attributeValue, a3.getCanonicalFile());
                                                } catch (IOException e) {
                                                    throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(a3)), e);
                                                }
                                            } else {
                                                throw new IllegalArgumentException("Name must not be empty");
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                }
                            } else {
                                throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
                            }
                        } else {
                            throw new IllegalArgumentException("Couldn't find meta-data for provider with authority ".concat(String.valueOf(str)));
                        }
                    } catch (IOException e2) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                    }
                } catch (XmlPullParserException e3) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e3);
                }
            }
        }
        return bVar;
    }

    private static File a(File file, String... strArr) {
        for (int i = 0; i <= 0; i++) {
            String str = strArr[0];
            file = file;
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        } else if (providerInfo.grantUriPermissions) {
            this.f1826d = a(context, providerInfo.authority);
        } else {
            throw new SecurityException("Provider must grant uri permissions");
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f1826d.a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File a2 = this.f1826d.a(uri);
        int lastIndexOf = a2.getName().lastIndexOf(46);
        if (lastIndexOf < 0) {
            return Mimetypes.MIMETYPE_OCTET_STREAM;
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(a2.getName().substring(lastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : Mimetypes.MIMETYPE_OCTET_STREAM;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        int i;
        File a2 = this.f1826d.a(uri);
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if ("rwt".equals(str)) {
            i = 1006632960;
        } else {
            throw new IllegalArgumentException("Invalid mode: ".concat(String.valueOf(str)));
        }
        return ParcelFileDescriptor.open(a2, i);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        File a2 = this.f1826d.a(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f1823a;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int i = 0;
        for (String str3 : strArr3) {
            if ("_display_name".equals(str3)) {
                strArr4[i] = "_display_name";
                i++;
                objArr[i] = a2.getName();
            } else {
                i = i;
                if ("_size".equals(str3)) {
                    strArr4[i] = "_size";
                    i++;
                    objArr[i] = Long.valueOf(a2.length());
                }
            }
        }
        String[] strArr5 = new String[i];
        System.arraycopy(strArr4, 0, strArr5, 0, i);
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        MatrixCursor matrixCursor = new MatrixCursor(strArr5, 1);
        matrixCursor.addRow(objArr2);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
