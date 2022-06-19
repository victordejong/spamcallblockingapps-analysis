package androidx.core.content;

import android.annotation.SuppressLint;
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
import com.allinone.callerid.bean.ShortCut;
import com.yanzhenjie.nohttp.Headers;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider.class */
public class FileProvider extends ContentProvider {

    /* renamed from: d */
    private static final String[] f2945d = {"_display_name", "_size"};

    /* renamed from: e */
    private static final File f2946e = new File("/");

    /* renamed from: f */
    private static HashMap<String, AbstractC0584a> f2947f = new HashMap<>();

    /* renamed from: g */
    private AbstractC0584a f2948g;

    /* renamed from: androidx.core.content.FileProvider$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$a.class */
    public interface AbstractC0584a {
        /* renamed from: a */
        File mo33356a(Uri uri);

        /* renamed from: b */
        Uri mo33355b(File file);
    }

    /* renamed from: androidx.core.content.FileProvider$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$b.class */
    public static class C0585b implements AbstractC0584a {

        /* renamed from: a */
        private final String f2949a;

        /* renamed from: b */
        private final HashMap<String, File> f2950b = new HashMap<>();

        C0585b(String str) {
            this.f2949a = str;
        }

        @Override // androidx.core.content.FileProvider.AbstractC0584a
        /* renamed from: a */
        public File mo33356a(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f2950b.get(decode);
            if (file == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
            File file2 = new File(file, decode2);
            try {
                File canonicalFile = file2.getCanonicalFile();
                if (!canonicalFile.getPath().startsWith(file.getPath())) {
                    throw new SecurityException("Resolved path jumped beyond configured root");
                }
                return canonicalFile;
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }

        @Override // androidx.core.content.FileProvider.AbstractC0584a
        /* renamed from: b */
        public Uri mo33355b(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f2950b.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
                }
                String path2 = entry.getValue().getPath();
                String substring = path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1);
                return new Uri.Builder().scheme("content").authority(this.f2949a).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(substring, "/")).build();
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }

        /* renamed from: c */
        void m33354c(String str, File file) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.f2950b.put(str, file.getCanonicalFile());
                    return;
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e);
                }
            }
            throw new IllegalArgumentException("Name must not be empty");
        }
    }

    /* renamed from: a */
    private static File m33363a(File file, String... strArr) {
        int length = strArr.length;
        int i = 0;
        while (true) {
            File file2 = file;
            if (i < length) {
                String str = strArr[i];
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

    /* renamed from: b */
    private static Object[] m33362b(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    /* renamed from: c */
    private static String[] m33361c(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    /* renamed from: d */
    private static AbstractC0584a m33360d(Context context, String str) {
        AbstractC0584a abstractC0584a;
        synchronized (f2947f) {
            AbstractC0584a abstractC0584a2 = f2947f.get(str);
            abstractC0584a = abstractC0584a2;
            if (abstractC0584a2 == null) {
                try {
                    abstractC0584a = m33357g(context, str);
                    f2947f.put(str, abstractC0584a);
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                } catch (XmlPullParserException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return abstractC0584a;
    }

    /* renamed from: e */
    public static Uri m33359e(Context context, String str, File file) {
        return m33360d(context, str).mo33355b(file);
    }

    /* renamed from: f */
    private static int m33358f(String str) {
        int i;
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if (!"rwt".equals(str)) {
            throw new IllegalArgumentException("Invalid mode: " + str);
        } else {
            i = 1006632960;
        }
        return i;
    }

    /* renamed from: g */
    private static AbstractC0584a m33357g(Context context, String str) {
        File file;
        C0585b c0585b = new C0585b(str);
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (resolveContentProvider == null) {
            throw new IllegalArgumentException("Couldn't find meta-data for provider with authority " + str);
        }
        XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
        if (loadXmlMetaData == null) {
            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        while (true) {
            int next = loadXmlMetaData.next();
            if (next == 1) {
                return c0585b;
            }
            if (next == 2) {
                String name = loadXmlMetaData.getName();
                String attributeValue = loadXmlMetaData.getAttributeValue(null, ShortCut.NAME);
                String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                if ("root-path".equals(name)) {
                    file = f2946e;
                } else if ("files-path".equals(name)) {
                    file = context.getFilesDir();
                } else if ("cache-path".equals(name)) {
                    file = context.getCacheDir();
                } else if ("external-path".equals(name)) {
                    file = Environment.getExternalStorageDirectory();
                } else if ("external-files-path".equals(name)) {
                    File[] m33346h = C0586a.m33346h(context, null);
                    file = null;
                    if (m33346h.length > 0) {
                        file = m33346h[0];
                    }
                } else if ("external-cache-path".equals(name)) {
                    File[] m33347g = C0586a.m33347g(context);
                    file = null;
                    if (m33347g.length > 0) {
                        file = m33347g[0];
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
                    c0585b.m33354c(attributeValue, m33363a(file, attributeValue2));
                }
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
            this.f2948g = m33360d(context, providerInfo.authority.split(";")[0]);
            return;
        }
        throw new SecurityException("Provider must not be exported");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f2948g.mo33356a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File mo33356a = this.f2948g.mo33356a(uri);
        int lastIndexOf = mo33356a.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(mo33356a.getName().substring(lastIndexOf + 1));
            return mimeTypeFromExtension != null ? mimeTypeFromExtension : Headers.HEAD_VALUE_CONTENT_TYPE_OCTET_STREAM;
        }
        return Headers.HEAD_VALUE_CONTENT_TYPE_OCTET_STREAM;
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
    @SuppressLint({"UnknownNullness"})
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        return ParcelFileDescriptor.open(this.f2948g.mo33356a(uri), m33358f(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        int i2;
        File mo33356a = this.f2948g.mo33356a(uri);
        String queryParameter = uri.getQueryParameter("displayName");
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f2945d;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int length = strArr3.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i3 >= length) {
                String[] m33361c = m33361c(strArr4, i5);
                Object[] m33362b = m33362b(objArr, i5);
                MatrixCursor matrixCursor = new MatrixCursor(m33361c, 1);
                matrixCursor.addRow(m33362b);
                return matrixCursor;
            }
            String str3 = strArr3[i3];
            if ("_display_name".equals(str3)) {
                strArr4[i5] = "_display_name";
                int i6 = i5 + 1;
                objArr[i5] = queryParameter == null ? mo33356a.getName() : queryParameter;
                i2 = i6;
            } else {
                i = i5;
                if ("_size".equals(str3)) {
                    strArr4[i5] = "_size";
                    objArr[i5] = Long.valueOf(mo33356a.length());
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
