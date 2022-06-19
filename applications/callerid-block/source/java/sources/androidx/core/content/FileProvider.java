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
import com.callerid.block.bean.EZBlackList;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider.class */
public class FileProvider extends ContentProvider {

    /* renamed from: c */
    private static final String[] f1664c = {"_display_name", "_size"};

    /* renamed from: d */
    private static final File f1665d = new File("/");

    /* renamed from: e */
    private static HashMap<String, AbstractC0264a> f1666e = new HashMap<>();

    /* renamed from: b */
    private AbstractC0264a f1667b;

    /* renamed from: androidx.core.content.FileProvider$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$a.class */
    public interface AbstractC0264a {
        /* renamed from: a */
        File m13558a(Uri uri);

        /* renamed from: b */
        Uri m13557b(File file);
    }

    /* renamed from: a */
    private static File m13565a(File file, String... strArr) {
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String str = strArr[i];
            File file2 = file;
            if (str != null) {
                file2 = new File(file, str);
            }
            i++;
            file = file2;
        }
        return file;
    }

    /* renamed from: b */
    private static Object[] m13564b(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    /* renamed from: c */
    private static String[] m13563c(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    /* renamed from: d */
    private static AbstractC0264a m13562d(Context context, String str) {
        AbstractC0264a abstractC0264a;
        synchronized (f1666e) {
            AbstractC0264a abstractC0264a2 = f1666e.get(str);
            abstractC0264a = abstractC0264a2;
            if (abstractC0264a2 == null) {
                try {
                    abstractC0264a = m13559g(context, str);
                    f1666e.put(str, abstractC0264a);
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                } catch (XmlPullParserException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return abstractC0264a;
    }

    /* renamed from: e */
    public static Uri m13561e(Context context, String str, File file) {
        return m13562d(context, str).m13557b(file);
    }

    /* renamed from: f */
    private static int m13560f(String str) {
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
    private static AbstractC0264a m13559g(Context context, String str) {
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
                String attributeValue = loadXmlMetaData.getAttributeValue(null, EZBlackList.NAME);
                String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                if ("root-path".equals(name)) {
                    file = f1665d;
                } else if ("files-path".equals(name)) {
                    file = context.getFilesDir();
                } else if ("cache-path".equals(name)) {
                    file = context.getCacheDir();
                } else if ("external-path".equals(name)) {
                    file = Environment.getExternalStorageDirectory();
                } else if ("external-files-path".equals(name)) {
                    File[] m13549h = C0265a.m13549h(context, null);
                    file = null;
                    if (m13549h.length > 0) {
                        file = m13549h[0];
                    }
                } else if ("external-cache-path".equals(name)) {
                    File[] m13550g = C0265a.m13550g(context);
                    file = null;
                    if (m13550g.length > 0) {
                        file = m13550g[0];
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
                    bVar.c(attributeValue, m13565a(file, attributeValue2));
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
            this.f1667b = m13562d(context, providerInfo.authority);
            return;
        }
        throw new SecurityException("Provider must not be exported");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f1667b.m13558a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File m13558a = this.f1667b.m13558a(uri);
        int lastIndexOf = m13558a.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(m13558a.getName().substring(lastIndexOf + 1));
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
        return ParcelFileDescriptor.open(this.f1667b.m13558a(uri), m13560f(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        int i2;
        File m13558a = this.f1667b.m13558a(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f1664c;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int length = strArr3.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i3 >= length) {
                String[] m13563c = m13563c(strArr4, i5);
                Object[] m13564b = m13564b(objArr, i5);
                MatrixCursor matrixCursor = new MatrixCursor(m13563c, 1);
                matrixCursor.addRow(m13564b);
                return matrixCursor;
            }
            String str3 = strArr3[i3];
            if ("_display_name".equals(str3)) {
                strArr4[i5] = "_display_name";
                objArr[i5] = m13558a.getName();
                i2 = i5 + 1;
            } else {
                i = i5;
                if ("_size".equals(str3)) {
                    strArr4[i5] = "_size";
                    objArr[i5] = Long.valueOf(m13558a.length());
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
