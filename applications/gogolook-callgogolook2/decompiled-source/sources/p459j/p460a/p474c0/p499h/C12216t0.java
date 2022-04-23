package p459j.p460a.p474c0.p499h;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.annotation.NonNull;
import androidx.core.content.FileProvider;
import com.criteo.publisher.model.C2052w;
import com.flurry.sdk.C3496r;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import p081h.p203i.p316b.p320d.C9362b;
import p459j.p460a.p471b1.p473b.C11511b;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p582w0.C14017g4;
import p626l.p641z.p642c.AbstractC15118l;
/* renamed from: j.a.c0.h.t0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/t0.class */
public class C12216t0 {

    /* renamed from: a */
    public static final HashSet<String> f27382a = new HashSet<>(Arrays.asList("sms", "mms", "smsto", "smsto"));

    /* renamed from: b */
    public static final HashSet<String> f27383b = new HashSet<>(Arrays.asList("android.resource", "content", "file", "bugle"));

    /* renamed from: a */
    public static long m6773a(Uri uri) {
        C12151d.m7002b();
        if (m6756g(uri)) {
            ParcelFileDescriptor parcelFileDescriptor = null;
            ParcelFileDescriptor parcelFileDescriptor2 = null;
            try {
                try {
                    ParcelFileDescriptor openFileDescriptor = AbstractC11516a.m9413n().mo9412a().getContentResolver().openFileDescriptor(uri, C3496r.f6031a);
                    parcelFileDescriptor2 = openFileDescriptor;
                    parcelFileDescriptor = openFileDescriptor;
                    long max = Math.max(openFileDescriptor.getStatSize(), 0L);
                    if (openFileDescriptor != null) {
                        try {
                            openFileDescriptor.close();
                        } catch (IOException e) {
                        }
                    }
                    return max;
                } catch (Throwable th) {
                    if (parcelFileDescriptor2 != null) {
                        try {
                            parcelFileDescriptor2.close();
                        } catch (IOException e2) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e3) {
                C12153d0.m6986b("MessagingApp", "Error getting content size", e3);
                if (parcelFileDescriptor == null) {
                    return 0L;
                }
                try {
                    parcelFileDescriptor.close();
                    return 0L;
                } catch (IOException e4) {
                    return 0L;
                }
            }
        } else {
            C12151d.m7005a("Unsupported uri type!");
            return 0L;
        }
    }

    /* renamed from: a */
    public static ContentValues m6766a(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", str);
        contentValues.put("_display_name", str);
        contentValues.put("mime_type", str2);
        return contentValues;
    }

    /* renamed from: a */
    public static ContentValues m6765a(String str, String str2, String str3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", str);
        contentValues.put("_display_name", str);
        contentValues.put("mime_type", str2);
        contentValues.put("relative_path", Environment.DIRECTORY_PICTURES + "/" + str3);
        return contentValues;
    }

    /* renamed from: a */
    public static Uri m6777a(Context context, int i) {
        return new Uri.Builder().scheme("android.resource").authority(context.getPackageName()).appendPath(String.valueOf(i)).build();
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.net.Uri m6776a(android.content.Context r4, java.io.InputStream r5, android.net.Uri r6) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p499h.C12216t0.m6776a(android.content.Context, java.io.InputStream, android.net.Uri):android.net.Uri");
    }

    @TargetApi(29)
    /* renamed from: a */
    public static Uri m6774a(Context context, String str, int i, String str2) {
        ContentValues contentValues;
        Uri uri;
        if (C12205r.m6809d(str)) {
            uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            contentValues = m6765a(m6775a(context, str, i), str, str2);
        } else if (C12205r.m6804i(str)) {
            uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            contentValues = m6761b(m6775a(context, str, i), str, str2);
        } else {
            uri = MediaStore.Downloads.EXTERNAL_CONTENT_URI;
            contentValues = m6766a(m6775a(context, str, i), str);
        }
        return context.getContentResolver().insert(uri, contentValues);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.net.Uri m6772a(android.net.Uri r4, java.io.File r5, java.lang.String r6) {
        /*
            j.a.c0.a r0 = p459j.p460a.p474c0.AbstractC11516a.m9413n()
            android.content.Context r0 = r0.mo9412a()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r4
            boolean r0 = m6756g(r0)     // Catch: all -> 0x0064, Exception -> 0x006b
            if (r0 == 0) goto L_0x001d
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x0064, Exception -> 0x006b
            r1 = r4
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: all -> 0x0064, Exception -> 0x006b
            r4 = r0
            goto L_0x003e
        L_0x001d:
            java.net.URL r0 = new java.net.URL     // Catch: all -> 0x0064, Exception -> 0x006b
            r7 = r0
            r0 = r7
            r1 = r4
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0064, Exception -> 0x006b
            r0.<init>(r1)     // Catch: all -> 0x0064, Exception -> 0x006b
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream     // Catch: all -> 0x0064, Exception -> 0x006b
            r1 = r0
            r2 = r7
            java.net.URLConnection r2 = r2.openConnection()     // Catch: all -> 0x0064, Exception -> 0x006b
            java.lang.Object r2 = com.google.firebase.perf.network.FirebasePerfUrlConnection.instrument(r2)     // Catch: all -> 0x0064, Exception -> 0x006b
            java.net.URLConnection r2 = (java.net.URLConnection) r2     // Catch: all -> 0x0064, Exception -> 0x006b
            java.io.InputStream r2 = r2.getInputStream()     // Catch: all -> 0x0064, Exception -> 0x006b
            r1.<init>(r2)     // Catch: all -> 0x0064, Exception -> 0x006b
            r4 = r0
        L_0x003e:
            r0 = r4
            r1 = r5
            r2 = r6
            android.net.Uri r0 = m6768a(r0, r1, r2)     // Catch: all -> 0x005c, Exception -> 0x0060
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x005a
            r0 = r4
            r0.close()     // Catch: IOException -> 0x0050
            goto L_0x005a
        L_0x0050:
            r4 = move-exception
            java.lang.String r0 = "MessagingApp"
            java.lang.String r1 = "error trying to close the inputStream"
            r2 = r4
            p459j.p460a.p474c0.p499h.C12153d0.m6986b(r0, r1, r2)
        L_0x005a:
            r0 = r5
            return r0
        L_0x005c:
            r5 = move-exception
            goto L_0x008f
        L_0x0060:
            r5 = move-exception
            goto L_0x006e
        L_0x0064:
            r5 = move-exception
            r0 = r8
            r4 = r0
            goto L_0x008f
        L_0x006b:
            r5 = move-exception
            r0 = 0
            r4 = r0
        L_0x006e:
            java.lang.String r0 = "MessagingApp"
            java.lang.String r1 = "Error while retrieving media "
            r2 = r5
            p459j.p460a.p474c0.p499h.C12153d0.m6986b(r0, r1, r2)     // Catch: all -> 0x008e
            r0 = r4
            if (r0 == 0) goto L_0x008c
            r0 = r4
            r0.close()     // Catch: IOException -> 0x0082
            goto L_0x008c
        L_0x0082:
            r4 = move-exception
            java.lang.String r0 = "MessagingApp"
            java.lang.String r1 = "error trying to close the inputStream"
            r2 = r4
            p459j.p460a.p474c0.p499h.C12153d0.m6986b(r0, r1, r2)
        L_0x008c:
            r0 = 0
            return r0
        L_0x008e:
            r5 = move-exception
        L_0x008f:
            r0 = r4
            if (r0 == 0) goto L_0x00a4
            r0 = r4
            r0.close()     // Catch: IOException -> 0x009a
            goto L_0x00a4
        L_0x009a:
            r4 = move-exception
            java.lang.String r0 = "MessagingApp"
            java.lang.String r1 = "error trying to close the inputStream"
            r2 = r4
            p459j.p460a.p474c0.p499h.C12153d0.m6986b(r0, r1, r2)
        L_0x00a4:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p499h.C12216t0.m6772a(android.net.Uri, java.io.File, java.lang.String):android.net.Uri");
    }

    /* renamed from: a */
    public static Uri m6771a(Uri uri, String str, int i, String str2) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        try {
            InputStream openInputStream = m6756g(uri) ? a.getContentResolver().openInputStream(uri) : new BufferedInputStream(((URLConnection) FirebasePerfUrlConnection.instrument(new URL(uri.toString()).openConnection())).getInputStream());
            Uri a2 = m6774a(a, str, i, str2);
            if (a2 != null) {
                Uri b = m6764b(a, openInputStream, a2);
                if (openInputStream != null) {
                    openInputStream.close();
                }
                return b;
            } else if (openInputStream == null) {
                return null;
            } else {
                openInputStream.close();
                return null;
            }
        } catch (Exception e) {
            C12153d0.m6986b("MessagingApp", "Error while retrieving media ", e);
            return null;
        }
    }

    /* renamed from: a */
    public static Uri m6770a(InputStream inputStream) {
        return m6776a(AbstractC11516a.m9413n().mo9412a(), inputStream, MediaScratchFileProvider.m27783b((String) null));
    }

    /* renamed from: a */
    public static /* synthetic */ Uri m6769a(InputStream inputStream, Uri uri, FileOutputStream fileOutputStream) {
        try {
            C9362b.m15364a(inputStream, fileOutputStream);
            return uri;
        } catch (IOException e) {
            C12153d0.m6986b("MessagingApp", "Error while copying content ", e);
            return null;
        }
    }

    /* renamed from: a */
    public static Uri m6768a(InputStream inputStream, File file, String str) {
        if (file.exists() || file.mkdirs()) {
            try {
                return m6776a(AbstractC11516a.m9413n().mo9412a(), inputStream, Uri.fromFile(C12241y.m6566a(file, str)));
            } catch (IOException e) {
                C12153d0.m6987b("MessagingApp", "Error creating file in " + file.getAbsolutePath());
                return null;
            }
        } else {
            C12153d0.m6987b("MessagingApp", "Error creating " + file.getAbsolutePath());
            return null;
        }
    }

    /* renamed from: a */
    public static Uri m6767a(String str) {
        return m6759d(m6762b(str));
    }

    /* renamed from: a */
    public static String m6775a(Context context, String str, int i) {
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
        String string = context.getString(C12205r.m6809d(str) ? R$string.new_image_file_name_format : R$string.new_file_name_format);
        Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(string);
        return String.format(Locale.US, simpleDateFormat.format(date) + "_%02d." + extensionFromMimeType, Integer.valueOf(i));
    }

    /* renamed from: b */
    public static ContentValues m6761b(String str, String str2, String str3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", str);
        contentValues.put("_display_name", str);
        contentValues.put("mime_type", str2);
        contentValues.put("relative_path", Environment.DIRECTORY_MOVIES + "/" + str3);
        return contentValues;
    }

    /* renamed from: b */
    public static Uri m6764b(Context context, final InputStream inputStream, final Uri uri) {
        C12151d.m7002b();
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, C2052w.f2268l);
            if (openFileDescriptor != null) {
                Uri uri2 = (Uri) C11511b.m9426a(new FileOutputStream(openFileDescriptor.getFileDescriptor()), new AbstractC15118l() { // from class: j.a.c0.h.a
                    @Override // p626l.p641z.p642c.AbstractC15118l
                    public final Object invoke(Object obj) {
                        return C12216t0.m6769a(inputStream, uri, (FileOutputStream) obj);
                    }
                });
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return uri2;
            } else if (openFileDescriptor == null) {
                return null;
            } else {
                openFileDescriptor.close();
                return null;
            }
        } catch (Throwable th) {
            C12153d0.m6986b("MessagingApp", "Error while copying content ", th);
            return null;
        }
    }

    /* renamed from: b */
    public static Uri m6762b(String str) {
        return TextUtils.isEmpty(str) ? null : Uri.parse(str);
    }

    /* renamed from: b */
    public static String m6763b(Uri uri) {
        if (!m6757f(uri)) {
            return null;
        }
        return uri.getPath();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public static int m6760c(Uri uri) {
        C12162f0 f0Var = new C12162f0();
        try {
            try {
                f0Var.m6949a(uri);
                int a = f0Var.m6951a(9, 0);
                f0Var.m6948b();
                return a;
            } catch (IOException e) {
                C12153d0.m6986b("MessagingApp", "Unable extract duration from media file: " + uri, e);
                f0Var.m6948b();
                return 0;
            }
        } catch (Throwable th) {
            f0Var.m6948b();
            throw th;
        }
    }

    /* renamed from: d */
    public static Uri m6759d(Uri uri) {
        Uri uri2 = uri;
        if (C14017g4.m2803u()) {
            uri2 = uri;
            if (m6757f(uri)) {
                uri2 = uri;
                if (uri.getPath() != null) {
                    uri2 = FileProvider.getUriForFile(MyApplication.m29013o(), "gogolook.callgogolook2.provider", new File(uri.getPath()));
                }
            }
        }
        return uri2;
    }

    /* renamed from: e */
    public static boolean m6758e(Uri uri) {
        return TextUtils.equals(uri.getScheme(), "android.resource");
    }

    /* renamed from: f */
    public static boolean m6757f(Uri uri) {
        return uri != null && TextUtils.equals(uri.getScheme(), "file");
    }

    /* renamed from: g */
    public static boolean m6756g(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.equals(scheme, "android.resource") || TextUtils.equals(scheme, "content") || TextUtils.equals(scheme, "file");
    }

    /* renamed from: h */
    public static boolean m6755h(@NonNull Uri uri) {
        C12151d.m7000b(uri);
        return f27383b.contains(uri.getScheme());
    }

    /* renamed from: i */
    public static boolean m6754i(Uri uri) {
        String authority = uri.getAuthority();
        return TextUtils.equals("content", uri.getScheme()) && (TextUtils.equals("media", authority) || TextUtils.equals("com.android.providers.media.documents", authority));
    }

    /* renamed from: j */
    public static boolean m6753j(Uri uri) {
        return uri != null && f27382a.contains(uri.getScheme());
    }

    /* renamed from: k */
    public static String[] m6752k(Uri uri) {
        if (!m6753j(uri)) {
            return null;
        }
        String[] split = uri.getSchemeSpecificPart().split("\\?");
        if (TextUtils.isEmpty(split[0])) {
            return null;
        }
        return PhoneNumberUtils.replaceUnicodeDigits(split[0]).replace(';', ',').split(",");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.net.Uri m6751l(android.net.Uri r4) {
        /*
            j.a.c0.a r0 = p459j.p460a.p474c0.AbstractC11516a.m9413n()
            android.content.Context r0 = r0.mo9412a()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            boolean r0 = m6756g(r0)     // Catch: all -> 0x0065, Exception -> 0x0069
            if (r0 == 0) goto L_0x001c
            r0 = r5
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x0065, Exception -> 0x0069
            r1 = r4
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: all -> 0x0065, Exception -> 0x0069
            r4 = r0
            goto L_0x003d
        L_0x001c:
            java.net.URL r0 = new java.net.URL     // Catch: all -> 0x0065, Exception -> 0x0069
            r5 = r0
            r0 = r5
            r1 = r4
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0065, Exception -> 0x0069
            r0.<init>(r1)     // Catch: all -> 0x0065, Exception -> 0x0069
            java.io.BufferedInputStream r0 = new java.io.BufferedInputStream     // Catch: all -> 0x0065, Exception -> 0x0069
            r1 = r0
            r2 = r5
            java.net.URLConnection r2 = r2.openConnection()     // Catch: all -> 0x0065, Exception -> 0x0069
            java.lang.Object r2 = com.google.firebase.perf.network.FirebasePerfUrlConnection.instrument(r2)     // Catch: all -> 0x0065, Exception -> 0x0069
            java.net.URLConnection r2 = (java.net.URLConnection) r2     // Catch: all -> 0x0065, Exception -> 0x0069
            java.io.InputStream r2 = r2.getInputStream()     // Catch: all -> 0x0065, Exception -> 0x0069
            r1.<init>(r2)     // Catch: all -> 0x0065, Exception -> 0x0069
            r4 = r0
        L_0x003d:
            r0 = r4
            android.net.Uri r0 = m6770a(r0)     // Catch: all -> 0x0059, Exception -> 0x0061
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0057
            r0 = r4
            r0.close()     // Catch: IOException -> 0x004d
            goto L_0x0057
        L_0x004d:
            r4 = move-exception
            java.lang.String r0 = "MessagingApp"
            java.lang.String r1 = "error trying to close the inputStream"
            r2 = r4
            p459j.p460a.p474c0.p499h.C12153d0.m6986b(r0, r1, r2)
        L_0x0057:
            r0 = r6
            return r0
        L_0x0059:
            r5 = move-exception
            r0 = r4
            r6 = r0
            r0 = r5
            r4 = r0
            goto L_0x0093
        L_0x0061:
            r6 = move-exception
            goto L_0x006c
        L_0x0065:
            r4 = move-exception
            goto L_0x0093
        L_0x0069:
            r6 = move-exception
            r0 = 0
            r4 = r0
        L_0x006c:
            java.lang.String r0 = "MessagingApp"
            java.lang.String r1 = "Error while retrieving media "
            r2 = r6
            p459j.p460a.p474c0.p499h.C12153d0.m6986b(r0, r1, r2)     // Catch: all -> 0x008c
            r0 = r4
            if (r0 == 0) goto L_0x008a
            r0 = r4
            r0.close()     // Catch: IOException -> 0x0080
            goto L_0x008a
        L_0x0080:
            r4 = move-exception
            java.lang.String r0 = "MessagingApp"
            java.lang.String r1 = "error trying to close the inputStream"
            r2 = r4
            p459j.p460a.p474c0.p499h.C12153d0.m6986b(r0, r1, r2)
        L_0x008a:
            r0 = 0
            return r0
        L_0x008c:
            r6 = move-exception
            r0 = r4
            r5 = r0
            r0 = r6
            r4 = r0
            r0 = r5
            r6 = r0
        L_0x0093:
            r0 = r6
            if (r0 == 0) goto L_0x00a8
            r0 = r6
            r0.close()     // Catch: IOException -> 0x009e
            goto L_0x00a8
        L_0x009e:
            r6 = move-exception
            java.lang.String r0 = "MessagingApp"
            java.lang.String r1 = "error trying to close the inputStream"
            r2 = r6
            p459j.p460a.p474c0.p499h.C12153d0.m6986b(r0, r1, r2)
        L_0x00a8:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p499h.C12216t0.m6751l(android.net.Uri):android.net.Uri");
    }

    /* renamed from: m */
    public static String m6750m(Uri uri) {
        return uri == null ? null : uri.toString();
    }
}
