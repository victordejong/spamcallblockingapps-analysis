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
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider.class */
public class FileProvider extends ContentProvider {

    /* renamed from: b */
    public static final String[] f793b = {"_display_name", "_size"};

    /* renamed from: c */
    public static final File f794c = new File("/");

    /* renamed from: d */
    public static HashMap<String, AbstractC0102a> f795d = new HashMap<>();

    /* renamed from: a */
    public AbstractC0102a f796a;

    /* renamed from: androidx.core.content.FileProvider$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$a.class */
    public interface AbstractC0102a {
        /* renamed from: a */
        Uri m6782a(File file);

        /* renamed from: b */
        File m6781b(Uri uri);
    }

    /* renamed from: a */
    public static File m6789a(File file, String... strArr) {
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
    public static Object[] m6788b(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    /* renamed from: c */
    public static String[] m6787c(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    /* renamed from: d */
    public static AbstractC0102a m6786d(Context context, String str) {
        AbstractC0102a abstractC0102a;
        synchronized (f795d) {
            AbstractC0102a abstractC0102a2 = f795d.get(str);
            abstractC0102a = abstractC0102a2;
            if (abstractC0102a2 == null) {
                try {
                    abstractC0102a = m6783g(context, str);
                    f795d.put(str, abstractC0102a);
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                } catch (XmlPullParserException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return abstractC0102a;
    }

    /* renamed from: e */
    public static Uri m6785e(Context context, String str, File file) {
        return m6786d(context, str).m6782a(file);
    }

    /* renamed from: f */
    public static int m6784f(String str) {
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
    public static AbstractC0102a m6783g(Context context, String str) {
        File file;
        b bVar = new b(str);
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
                return bVar;
            }
            if (next == 2) {
                String name = loadXmlMetaData.getName();
                String attributeValue = loadXmlMetaData.getAttributeValue(null, "name");
                String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                if ("root-path".equals(name)) {
                    file = f794c;
                } else if ("files-path".equals(name)) {
                    file = context.getFilesDir();
                } else if ("cache-path".equals(name)) {
                    file = context.getCacheDir();
                } else if ("external-path".equals(name)) {
                    file = Environment.getExternalStorageDirectory();
                } else if ("external-files-path".equals(name)) {
                    File[] h = g8.h(context, (String) null);
                    file = null;
                    if (h.length > 0) {
                        file = h[0];
                    }
                } else if ("external-cache-path".equals(name)) {
                    File[] g = g8.g(context);
                    file = null;
                    if (g.length > 0) {
                        file = g[0];
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
                    bVar.c(attributeValue, m6789a(file, attributeValue2));
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
            this.f796a = m6786d(context, providerInfo.authority);
            return;
        }
        throw new SecurityException("Provider must not be exported");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f796a.m6781b(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File m6781b = this.f796a.m6781b(uri);
        int lastIndexOf = m6781b.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(m6781b.getName().substring(lastIndexOf + 1));
            return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
        }
        return "application/octet-stream";
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
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        return ParcelFileDescriptor.open(this.f796a.m6781b(uri), m6784f(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        int i2;
        File m6781b = this.f796a.m6781b(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f793b;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int length = strArr3.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i3 >= length) {
                String[] m6787c = m6787c(strArr4, i5);
                Object[] m6788b = m6788b(objArr, i5);
                MatrixCursor matrixCursor = new MatrixCursor(m6787c, 1);
                matrixCursor.addRow(m6788b);
                return matrixCursor;
            }
            String str3 = strArr3[i3];
            if ("_display_name".equals(str3)) {
                strArr4[i5] = "_display_name";
                objArr[i5] = m6781b.getName();
                i2 = i5 + 1;
            } else {
                i = i5;
                if ("_size".equals(str3)) {
                    strArr4[i5] = "_size";
                    objArr[i5] = Long.valueOf(m6781b.length());
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
