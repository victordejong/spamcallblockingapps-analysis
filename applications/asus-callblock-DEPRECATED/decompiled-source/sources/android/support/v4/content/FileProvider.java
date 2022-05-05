package android.support.v4.content;

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
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.vcard.VCardConfig;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:android/support/v4/content/FileProvider.class */
public class FileProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f139a = {"_display_name", "_size"};

    /* renamed from: b  reason: collision with root package name */
    private static final File f140b = new File("/");
    private static HashMap<String, a> c = new HashMap<>();
    private a d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/FileProvider$a.class */
    public interface a {
        Uri a(File file);

        File a(Uri uri);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/FileProvider$b.class */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        final HashMap<String, File> f141a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        private final String f142b;

        public b(String str) {
            this.f142b = str;
        }

        @Override // android.support.v4.content.FileProvider.a
        public final Uri a(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f141a.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path)) {
                        entry = entry2;
                        if (entry != null) {
                            if (path.length() > entry.getValue().getPath().length()) {
                                entry = entry2;
                            }
                        }
                    }
                    entry = entry;
                }
                if (entry == null) {
                    throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
                }
                String path2 = entry.getValue().getPath();
                return new Uri.Builder().scheme("content").authority(this.f142b).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), "/")).build();
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }

        @Override // android.support.v4.content.FileProvider.a
        public final File a(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f141a.get(decode);
            if (file == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
            File file2 = new File(file, decode2);
            try {
                File canonicalFile = file2.getCanonicalFile();
                if (canonicalFile.getPath().startsWith(file.getPath())) {
                    return canonicalFile;
                }
                throw new SecurityException("Resolved path jumped beyond configured root");
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }
    }

    public static Uri a(Context context, String str, File file) {
        return a(context, str).a(file);
    }

    private static a a(Context context, String str) {
        b bVar;
        synchronized (c) {
            a aVar = c.get(str);
            bVar = aVar;
            if (aVar == null) {
                try {
                    try {
                        b bVar2 = new b(str);
                        XmlResourceParser loadXmlMetaData = context.getPackageManager().resolveContentProvider(str, 128).loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
                        if (loadXmlMetaData != null) {
                            while (true) {
                                int next = loadXmlMetaData.next();
                                if (next == 1) {
                                    c.put(str, bVar2);
                                    bVar = bVar2;
                                    break;
                                } else if (next == 2) {
                                    String name = loadXmlMetaData.getName();
                                    String attributeValue = loadXmlMetaData.getAttributeValue(null, ContactDetailCallogActivity.EXTRA_NAME);
                                    String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                                    File a2 = "root-path".equals(name) ? a(f140b, attributeValue2) : "files-path".equals(name) ? a(context.getFilesDir(), attributeValue2) : "cache-path".equals(name) ? a(context.getCacheDir(), attributeValue2) : "external-path".equals(name) ? a(Environment.getExternalStorageDirectory(), attributeValue2) : null;
                                    if (a2 == null) {
                                        continue;
                                    } else if (TextUtils.isEmpty(attributeValue)) {
                                        throw new IllegalArgumentException("Name must not be empty");
                                    } else {
                                        try {
                                            bVar2.f141a.put(attributeValue, a2.getCanonicalFile());
                                        } catch (IOException e) {
                                            throw new IllegalArgumentException("Failed to resolve canonical path for " + a2, e);
                                        }
                                    }
                                }
                            }
                        } else {
                            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
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
        } else if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        } else {
            this.d = a(context, providerInfo.authority);
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.d.a(uri).delete() ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002d, code lost:
        if (r5 != null) goto L_0x0030;
     */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getType(android.net.Uri r5) {
        /*
            r4 = this;
            r0 = r4
            android.support.v4.content.FileProvider$a r0 = r0.d
            r1 = r5
            java.io.File r0 = r0.a(r1)
            r5 = r0
            r0 = r5
            java.lang.String r0 = r0.getName()
            r1 = 46
            int r0 = r0.lastIndexOf(r1)
            r6 = r0
            r0 = r6
            if (r0 < 0) goto L_0x0032
            r0 = r5
            java.lang.String r0 = r0.getName()
            r1 = r6
            r2 = 1
            int r1 = r1 + r2
            java.lang.String r0 = r0.substring(r1)
            r5 = r0
            android.webkit.MimeTypeMap r0 = android.webkit.MimeTypeMap.getSingleton()
            r1 = r5
            java.lang.String r0 = r0.getMimeTypeFromExtension(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0032
        L_0x0030:
            r0 = r5
            return r0
        L_0x0032:
            java.lang.String r0 = "application/octet-stream"
            r5 = r0
            goto L_0x0030
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.FileProvider.getType(android.net.Uri):java.lang.String");
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
        int i;
        File a2 = this.d.a(uri);
        if ("r".equals(str)) {
            i = VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES;
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
        return ParcelFileDescriptor.open(a2, i);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        File a2 = this.d.a(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f139a;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int i = 0;
        for (String str3 : strArr3) {
            if ("_display_name".equals(str3)) {
                strArr4[i] = "_display_name";
                i++;
                objArr[i] = a2.getName();
            } else if ("_size".equals(str3)) {
                strArr4[i] = "_size";
                i++;
                objArr[i] = Long.valueOf(a2.length());
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
