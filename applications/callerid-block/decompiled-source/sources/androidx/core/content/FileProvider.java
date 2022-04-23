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

    /* JADX INFO: Access modifiers changed from: package-private */
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
        for (String str : strArr) {
            file = file;
            if (str != null) {
                file = new File(file, str);
            }
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
        AbstractC0264a aVar;
        synchronized (f1666e) {
            AbstractC0264a aVar2 = f1666e.get(str);
            aVar = aVar2;
            if (aVar2 == null) {
                try {
                    aVar = m13559g(context, str);
                    f1666e.put(str, aVar);
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                } catch (XmlPullParserException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return aVar;
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
        } else if ("rwt".equals(str)) {
            i = 1006632960;
        } else {
            throw new IllegalArgumentException("Invalid mode: " + str);
        }
        return i;
    }

    /* renamed from: g */
    private static AbstractC0264a m13559g(Context context, String str) {
        File file;
        b bVar = new b(str);
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (resolveContentProvider != null) {
            XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
            if (loadXmlMetaData != null) {
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
                            File[] h = C0265a.m13549h(context, null);
                            file = null;
                            if (h.length > 0) {
                                file = h[0];
                            }
                        } else if ("external-cache-path".equals(name)) {
                            File[] g = C0265a.m13550g(context);
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
                            bVar.c(attributeValue, m13565a(file, attributeValue2));
                        }
                    }
                }
            } else {
                throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
            }
        } else {
            throw new IllegalArgumentException("Couldn't find meta-data for provider with authority " + str);
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        } else if (providerInfo.grantUriPermissions) {
            this.f1667b = m13562d(context, providerInfo.authority);
        } else {
            throw new SecurityException("Provider must grant uri permissions");
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f1667b.m13558a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File a = this.f1667b.m13558a(uri);
        int lastIndexOf = a.getName().lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(a.getName().substring(lastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
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
        File a = this.f1667b.m13558a(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f1664c;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int i = 0;
        for (String str3 : strArr3) {
            if ("_display_name".equals(str3)) {
                strArr4[i] = "_display_name";
                i++;
                objArr[i] = a.getName();
            } else {
                i = i;
                if ("_size".equals(str3)) {
                    strArr4[i] = "_size";
                    i++;
                    objArr[i] = Long.valueOf(a.length());
                }
            }
        }
        String[] c = m13563c(strArr4, i);
        Object[] b = m13564b(objArr, i);
        MatrixCursor matrixCursor = new MatrixCursor(c, 1);
        matrixCursor.addRow(b);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
