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
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider.class */
public class FileProvider extends ContentProvider {

    /* renamed from: a */
    private static final String[] f3477a = {"_display_name", "_size"};

    /* renamed from: b */
    private static final File f3478b = new File("/");

    /* renamed from: c */
    private static HashMap<String, AbstractC0786a> f3479c = new HashMap<>();

    /* renamed from: d */
    private AbstractC0786a f3480d;

    /* renamed from: androidx.core.content.FileProvider$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$a.class */
    public interface AbstractC0786a {
        /* renamed from: a */
        Uri mo44506a(File file);

        /* renamed from: a */
        File mo44507a(Uri uri);
    }

    /* renamed from: androidx.core.content.FileProvider$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$b.class */
    public static final class C0787b implements AbstractC0786a {

        /* renamed from: a */
        final HashMap<String, File> f3481a = new HashMap<>();

        /* renamed from: b */
        private final String f3482b;

        C0787b(String str) {
            this.f3482b = str;
        }

        @Override // androidx.core.content.FileProvider.AbstractC0786a
        /* renamed from: a */
        public final Uri mo44506a(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f3481a.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException("Failed to find configured root that contains ".concat(String.valueOf(canonicalPath)));
                }
                String path2 = entry.getValue().getPath();
                String substring = path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1);
                return new Uri.Builder().scheme(Constants.VAST_TRACKER_CONTENT).authority(this.f3482b).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(substring, "/")).build();
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file)));
            }
        }

        @Override // androidx.core.content.FileProvider.AbstractC0786a
        /* renamed from: a */
        public final File mo44507a(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f3481a.get(decode);
            if (file != null) {
                File file2 = new File(file, decode2);
                try {
                    File canonicalFile = file2.getCanonicalFile();
                    if (!canonicalFile.getPath().startsWith(file.getPath())) {
                        throw new SecurityException("Resolved path jumped beyond configured root");
                    }
                    return canonicalFile;
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file2)));
                }
            }
            throw new IllegalArgumentException("Unable to find configured root for ".concat(String.valueOf(uri)));
        }
    }

    /* renamed from: a */
    public static Uri m44509a(Context context, String str, File file) {
        return m44510a(context, str).mo44506a(file);
    }

    /* renamed from: a */
    private static AbstractC0786a m44510a(Context context, String str) {
        C0787b c0787b;
        File file;
        synchronized (f3479c) {
            AbstractC0786a abstractC0786a = f3479c.get(str);
            c0787b = abstractC0786a;
            if (abstractC0786a == null) {
                try {
                    try {
                        C0787b c0787b2 = new C0787b(str);
                        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
                        if (resolveContentProvider == null) {
                            throw new IllegalArgumentException("Couldn't find meta-data for provider with authority ".concat(String.valueOf(str)));
                        }
                        XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
                        if (loadXmlMetaData == null) {
                            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
                        }
                        while (true) {
                            int next = loadXmlMetaData.next();
                            if (next == 1) {
                                f3479c.put(str, c0787b2);
                                c0787b = c0787b2;
                                break;
                            } else if (next == 2) {
                                String name = loadXmlMetaData.getName();
                                String attributeValue = loadXmlMetaData.getAttributeValue(null, "name");
                                String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                                if ("root-path".equals(name)) {
                                    file = f3478b;
                                } else if ("files-path".equals(name)) {
                                    file = context.getFilesDir();
                                } else if ("cache-path".equals(name)) {
                                    file = context.getCacheDir();
                                } else if ("external-path".equals(name)) {
                                    file = Environment.getExternalStorageDirectory();
                                } else if ("external-files-path".equals(name)) {
                                    File[] m44503a = C0790b.m44503a(context);
                                    file = null;
                                    if (m44503a.length > 0) {
                                        file = m44503a[0];
                                    }
                                } else if ("external-cache-path".equals(name)) {
                                    File[] m44495b = C0790b.m44495b(context);
                                    file = null;
                                    if (m44495b.length > 0) {
                                        file = m44495b[0];
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
                                    File m44508a = m44508a(file, attributeValue2);
                                    if (TextUtils.isEmpty(attributeValue)) {
                                        throw new IllegalArgumentException("Name must not be empty");
                                    }
                                    try {
                                        c0787b2.f3481a.put(attributeValue, m44508a.getCanonicalFile());
                                    } catch (IOException e) {
                                        throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(m44508a)), e);
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    } catch (IOException e2) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                    }
                } catch (XmlPullParserException e3) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e3);
                }
            }
        }
        return c0787b;
    }

    /* renamed from: a */
    private static File m44508a(File file, String... strArr) {
        int i = 0;
        while (true) {
            File file2 = file;
            if (i <= 0) {
                String str = strArr[0];
                file = file2;
                if (str != null) {
                    file = new File(file2, str);
                }
                i++;
            } else {
                return file2;
            }
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (!providerInfo.exported) {
            if (!providerInfo.grantUriPermissions) {
                throw new SecurityException("Provider must grant uri permissions");
            }
            this.f3480d = m44510a(context, providerInfo.authority);
            return;
        }
        throw new SecurityException("Provider must not be exported");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f3480d.mo44507a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File mo44507a = this.f3480d.mo44507a(uri);
        int lastIndexOf = mo44507a.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(mo44507a.getName().substring(lastIndexOf + 1));
            return mimeTypeFromExtension != null ? mimeTypeFromExtension : Mimetypes.MIMETYPE_OCTET_STREAM;
        }
        return Mimetypes.MIMETYPE_OCTET_STREAM;
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
        File mo44507a = this.f3480d.mo44507a(uri);
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if (!"rwt".equals(str)) {
            throw new IllegalArgumentException("Invalid mode: ".concat(String.valueOf(str)));
        } else {
            i = 1006632960;
        }
        return ParcelFileDescriptor.open(mo44507a, i);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        int i2;
        File mo44507a = this.f3480d.mo44507a(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f3477a;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int length = strArr3.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i3 >= length) {
                String[] strArr5 = new String[i5];
                System.arraycopy(strArr4, 0, strArr5, 0, i5);
                Object[] objArr2 = new Object[i5];
                System.arraycopy(objArr, 0, objArr2, 0, i5);
                MatrixCursor matrixCursor = new MatrixCursor(strArr5, 1);
                matrixCursor.addRow(objArr2);
                return matrixCursor;
            }
            String str3 = strArr3[i3];
            if ("_display_name".equals(str3)) {
                strArr4[i5] = "_display_name";
                objArr[i5] = mo44507a.getName();
                i2 = i5 + 1;
            } else {
                i = i5;
                if ("_size".equals(str3)) {
                    strArr4[i5] = "_size";
                    objArr[i5] = Long.valueOf(mo44507a.length());
                    i2 = i5 + 1;
                } else {
                    i3++;
                    i4 = i;
                }
            }
            i = i2;
            i3++;
            i4 = i;
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
