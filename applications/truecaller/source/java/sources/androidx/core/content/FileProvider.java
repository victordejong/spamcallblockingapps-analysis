package androidx.core.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider.class */
public class FileProvider extends ContentProvider {

    /* renamed from: b */
    public static final String[] f699b = {"_display_name", "_size"};

    /* renamed from: c */
    public static final File f700c = new File(StringConstant.SLASH);

    /* renamed from: d */
    public static HashMap<String, AbstractC0126a> f701d = new HashMap<>();

    /* renamed from: a */
    public AbstractC0126a f702a;

    /* renamed from: androidx.core.content.FileProvider$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$a.class */
    public interface AbstractC0126a {
        /* renamed from: a */
        Uri mo42987a(File file);

        /* renamed from: b */
        File mo42986b(Uri uri);
    }

    /* renamed from: androidx.core.content.FileProvider$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$b.class */
    public static class C0127b implements AbstractC0126a {

        /* renamed from: a */
        public final String f703a;

        /* renamed from: b */
        public final HashMap<String, File> f704b = new HashMap<>();

        public C0127b(String str) {
            this.f703a = str;
        }

        @Override // androidx.core.content.FileProvider.AbstractC0126a
        /* renamed from: a */
        public Uri mo42987a(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f704b.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException(C22128a.m8543z2("Failed to find configured root that contains ", canonicalPath));
                }
                String path2 = entry.getValue().getPath();
                String substring = path2.endsWith(StringConstant.SLASH) ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1);
                return new Uri.Builder().scheme("content").authority(this.f703a).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(substring, StringConstant.SLASH)).build();
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }

        @Override // androidx.core.content.FileProvider.AbstractC0126a
        /* renamed from: b */
        public File mo42986b(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f704b.get(decode);
            if (file != null) {
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
            throw new IllegalArgumentException(C22128a.m8571s2("Unable to find configured root for ", uri));
        }
    }

    /* renamed from: a */
    public static AbstractC0126a m42990a(Context context, String str) {
        AbstractC0126a abstractC0126a;
        synchronized (f701d) {
            AbstractC0126a abstractC0126a2 = f701d.get(str);
            abstractC0126a = abstractC0126a2;
            if (abstractC0126a2 == null) {
                try {
                    abstractC0126a = m42988c(context, str);
                    f701d.put(str, abstractC0126a);
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                } catch (XmlPullParserException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return abstractC0126a;
    }

    /* renamed from: b */
    public static Uri m42989b(Context context, String str, File file) {
        return m42990a(context, str).mo42987a(file);
    }

    /* renamed from: c */
    public static AbstractC0126a m42988c(Context context, String str) throws IOException, XmlPullParserException {
        File file;
        C0127b c0127b = new C0127b(str);
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (resolveContentProvider != null) {
            XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
            if (loadXmlMetaData == null) {
                throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
            }
            while (true) {
                int next = loadXmlMetaData.next();
                if (next == 1) {
                    return c0127b;
                }
                if (next == 2) {
                    String name = loadXmlMetaData.getName();
                    String attributeValue = loadXmlMetaData.getAttributeValue(null, AnalyticsConstants.NAME);
                    String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                    int i = 0;
                    if ("root-path".equals(name)) {
                        file = f700c;
                    } else if ("files-path".equals(name)) {
                        file = context.getFilesDir();
                    } else if ("cache-path".equals(name)) {
                        file = context.getCacheDir();
                    } else if ("external-path".equals(name)) {
                        file = Environment.getExternalStorageDirectory();
                    } else if ("external-files-path".equals(name)) {
                        Object obj = C26467a.f74235a;
                        File[] m1792b = C26467a.C26469b.m1792b(context, null);
                        file = null;
                        if (m1792b.length > 0) {
                            file = m1792b[0];
                        }
                    } else if ("external-cache-path".equals(name)) {
                        Object obj2 = C26467a.f74235a;
                        File[] m1793a = C26467a.C26469b.m1793a(context);
                        file = null;
                        if (m1793a.length > 0) {
                            file = m1793a[0];
                        }
                    } else {
                        file = null;
                        if ("external-media-path".equals(name)) {
                            File[] externalMediaDirs = context.getExternalMediaDirs();
                            file = null;
                            if (externalMediaDirs.length > 0) {
                                file = externalMediaDirs[0];
                            }
                        }
                    }
                    if (file != null) {
                        while (i < 1) {
                            String str2 = new String[]{attributeValue2}[i];
                            File file2 = file;
                            if (str2 != null) {
                                file2 = new File(file, str2);
                            }
                            i++;
                            file = file2;
                        }
                        if (TextUtils.isEmpty(attributeValue)) {
                            throw new IllegalArgumentException("Name must not be empty");
                        }
                        try {
                            c0127b.f704b.put(attributeValue, file.getCanonicalFile());
                        } catch (IOException e) {
                            throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e);
                        }
                    } else {
                        continue;
                    }
                }
            }
        } else {
            throw new IllegalArgumentException(C22128a.m8543z2("Couldn't find meta-data for provider with authority ", str));
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (!providerInfo.exported) {
            if (!providerInfo.grantUriPermissions) {
                throw new SecurityException("Provider must grant uri permissions");
            }
            this.f702a = m42990a(context, providerInfo.authority.split(";")[0]);
            return;
        }
        throw new SecurityException("Provider must not be exported");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f702a.mo42986b(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File mo42986b = this.f702a.mo42986b(uri);
        int lastIndexOf = mo42986b.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(mo42986b.getName().substring(lastIndexOf + 1));
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
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        int i;
        File mo42986b = this.f702a.mo42986b(uri);
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if (!"rwt".equals(str)) {
            throw new IllegalArgumentException(C22128a.m8543z2("Invalid mode: ", str));
        } else {
            i = 1006632960;
        }
        return ParcelFileDescriptor.open(mo42986b, i);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        int i2;
        File mo42986b = this.f702a.mo42986b(uri);
        String queryParameter = uri.getQueryParameter("displayName");
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f699b;
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
                int i6 = i5 + 1;
                objArr[i5] = queryParameter == null ? mo42986b.getName() : queryParameter;
                i2 = i6;
            } else {
                i = i5;
                if ("_size".equals(str3)) {
                    strArr4[i5] = "_size";
                    objArr[i5] = Long.valueOf(mo42986b.length());
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
