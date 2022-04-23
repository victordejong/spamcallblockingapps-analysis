package p459j.p460a.p536l0;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.collection.LruCache;
import androidx.fragment.app.Fragment;
import com.amazonaws.auth.BasicSessionCredentials;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.PersistableTransfer;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.TransferManager;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.S3ProgressListener;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import gogolook.callgogolook2.MyApplication;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p119d.p120a.C5765c;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p147j.AbstractC6078h;
import p459j.p460a.p471b1.p473b.C11510a;
import p459j.p460a.p471b1.p473b.C11511b;
import p459j.p460a.p507f0.AbstractC12383b;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
/* renamed from: j.a.l0.c */
/* loaded from: classes3-dex2jar.jar:j/a/l0/c.class */
public class C13008c {

    /* renamed from: a */
    public static final String f29408a = "c";

    /* renamed from: b */
    public static final Bitmap.CompressFormat f29409b = Bitmap.CompressFormat.JPEG;

    /* renamed from: c */
    public static C13013e f29410c = new C13013e();

    /* renamed from: d */
    public static int f29411d = -1;

    /* renamed from: e */
    public static int f29412e = -1;

    /* renamed from: f */
    public static int f29413f = -1;

    /* renamed from: g */
    public static int f29414g = -1;

    /* renamed from: h */
    public static int f29415h = -1;

    /* renamed from: j.a.l0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/l0/c$a.class */
    public static final class AsyncTaskC13009a extends AsyncTask {

        /* renamed from: a */
        public final /* synthetic */ JSONObject f29416a;

        /* renamed from: b */
        public final /* synthetic */ String f29417b;

        /* renamed from: c */
        public final /* synthetic */ String f29418c;

        /* renamed from: d */
        public final /* synthetic */ JSONObject f29419d;

        /* renamed from: e */
        public final /* synthetic */ JSONArray f29420e;

        public AsyncTaskC13009a(JSONObject jSONObject, String str, String str2, JSONObject jSONObject2, JSONArray jSONArray) {
            this.f29416a = jSONObject;
            this.f29417b = str;
            this.f29418c = str2;
            this.f29419d = jSONObject2;
            this.f29420e = jSONArray;
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object[] objArr) {
            JSONObject jSONObject;
            Uri b;
            JSONObject jSONObject2 = this.f29416a;
            if (jSONObject2 != null) {
                C13008c.m4794e(C13008c.m4802b(this.f29417b, this.f29418c, "profile", jSONObject2));
            } else {
                C13008c.m4794e(null);
            }
            JSONObject jSONObject3 = this.f29419d;
            if (jSONObject3 != null) {
                C13008c.m4797d(C13008c.m4802b(this.f29417b, this.f29418c, "cover", jSONObject3));
            } else {
                C13008c.m4797d(null);
            }
            JSONArray jSONArray = this.f29420e;
            if (jSONArray == null || jSONArray.length() <= 0) {
                C13008c.m4807a((ArrayList<Uri>) null);
                return null;
            }
            for (int i = 0; i < this.f29420e.length(); i++) {
                try {
                    jSONObject = this.f29420e.getJSONObject(i);
                } catch (Exception e) {
                    jSONObject = null;
                }
                if (!(jSONObject == null || (b = C13008c.m4802b(this.f29417b, this.f29418c, "photos", jSONObject)) == null)) {
                    C13008c.m4805b(i, b);
                }
            }
            return null;
        }
    }

    /* renamed from: j.a.l0.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/l0/c$b.class */
    public static final class AsyncTaskC13010b extends AsyncTask {

        /* renamed from: a */
        public final /* synthetic */ Uri f29421a;

        /* renamed from: b */
        public final /* synthetic */ String f29422b;

        /* renamed from: c */
        public final /* synthetic */ EnumC13014f f29423c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC12383b f29424d;

        public AsyncTaskC13010b(Uri uri, String str, EnumC13014f fVar, AbstractC12383b bVar) {
            this.f29421a = uri;
            this.f29422b = str;
            this.f29423c = fVar;
            this.f29424d = bVar;
        }

        @Override // android.os.AsyncTask
        public Object doInBackground(Object[] objArr) {
            try {
                C12378a.C12380b c = C12378a.m6275a(C12378a.EnumC12382d.GET_SHOWCARD_IMAGE_TOKEN, new String[0]).m6261c();
                String str = c.f27922c;
                if (c != null && c.f27921b == 200 && !TextUtils.isEmpty(str)) {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.has("result")) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject("result");
                        C13008c.f29410c.f29433a = jSONObject2.getString("security_token");
                        C13008c.f29410c.f29434b = jSONObject2.getString("aws_region");
                        C13008c.f29410c.f29435c = jSONObject2.getString("remote_path");
                        C13008c.f29410c.f29436d = jSONObject2.getString("card_bucket_name");
                        C13008c.f29410c.f29437e = jSONObject2.getString("report_bucket_name");
                        C13008c.f29410c.f29438f = jSONObject2.getString("aws_access_key_id");
                        C13008c.f29410c.f29439g = jSONObject2.getString("aws_secret_access_key");
                        C13013e eVar = C13008c.f29410c;
                        long currentTimeMillis = System.currentTimeMillis();
                        long j = jSONObject2.getLong("duration");
                        Long.signum(j);
                        eVar.f29440h = currentTimeMillis + (j * 1000);
                        try {
                            C13008c.m4796d(this.f29421a, this.f29422b, this.f29423c, this.f29424d);
                        } catch (Exception e) {
                            if (this.f29424d != null) {
                                this.f29424d.mo3002a(404, this.f29421a.toString(), null);
                            }
                        }
                    }
                } else if (this.f29424d != null) {
                    this.f29424d.mo3002a(404, this.f29421a.toString(), null);
                }
                return null;
            } catch (Exception e2) {
                AbstractC12383b bVar = this.f29424d;
                if (bVar != null) {
                    try {
                        bVar.mo3002a(404, this.f29421a.toString(), null);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                e2.printStackTrace();
                return null;
            }
        }
    }

    /* renamed from: j.a.l0.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/l0/c$c.class */
    public static final class C13011c implements S3ProgressListener {

        /* renamed from: a */
        public final /* synthetic */ Uri f29425a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC12383b f29426b;

        public C13011c(Uri uri, AbstractC12383b bVar) {
            this.f29425a = uri;
            this.f29426b = bVar;
        }

        @Override // com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.S3ProgressListener
        public void onPersistableTransfer(PersistableTransfer persistableTransfer) {
        }

        @Override // com.amazonaws.event.ProgressListener
        public void progressChanged(ProgressEvent progressEvent) {
            if (progressEvent.getEventCode() == 2) {
                String unused = C13008c.f29408a;
                String str = "uploadS3: STARTED_EVENT_CODE: uri=" + this.f29425a.toString();
            } else if (progressEvent.getEventCode() == 4) {
                String unused2 = C13008c.f29408a;
                String str2 = "uploadS3: COMPLETED_EVENT_CODE: uri=" + this.f29425a.toString();
                AbstractC12383b bVar = this.f29426b;
                if (bVar != null) {
                    try {
                        bVar.mo3002a(200, this.f29425a.toString(), null);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else if (progressEvent.getEventCode() == 8 || progressEvent.getEventCode() == 16) {
                String unused3 = C13008c.f29408a;
                String str3 = "uploadS3: EVENT_CODE=" + progressEvent.getEventCode() + ": uri=" + this.f29425a.toString();
                try {
                    this.f29426b.mo3002a(404, this.f29425a.toString(), null);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* renamed from: j.a.l0.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/l0/c$d.class */
    public static final class C13012d extends AbstractC6078h<Bitmap> {

        /* renamed from: d */
        public final int f29427d = C13008c.m4793f();

        /* renamed from: e */
        public final int f29428e = C13008c.m4795e();

        /* renamed from: f */
        public float f29429f = 0.5f;

        /* renamed from: g */
        public float f29430g = 0.5f;

        /* renamed from: h */
        public final /* synthetic */ String f29431h;

        /* renamed from: i */
        public final /* synthetic */ ImageView f29432i;

        public C13012d(String str, ImageView imageView) {
            this.f29431h = str;
            this.f29432i = imageView;
        }

        /* renamed from: a */
        public void m4786a(Bitmap bitmap, AbstractC6063c<? super Bitmap> cVar) {
            String str = this.f29431h;
            String substring = str.substring(str.lastIndexOf(47));
            int indexOf = substring.indexOf(95) + 1;
            int indexOf2 = substring.indexOf(95, indexOf);
            int i = indexOf2 + 1;
            int indexOf3 = substring.indexOf(95, i);
            int i2 = indexOf3 + 1;
            int indexOf4 = substring.indexOf(95, i2);
            int i3 = indexOf4 + 1;
            int indexOf5 = substring.indexOf(95, i3);
            int i4 = indexOf5;
            if (indexOf5 == -1) {
                i4 = substring.lastIndexOf(46);
            }
            int intValue = Integer.valueOf(substring.substring(indexOf, indexOf2)).intValue();
            int intValue2 = Integer.valueOf(substring.substring(i, indexOf3)).intValue();
            int intValue3 = Integer.valueOf(substring.substring(i2, indexOf4)).intValue();
            int intValue4 = Integer.valueOf(substring.substring(i3, i4)).intValue();
            this.f29429f = intValue3 / intValue;
            this.f29430g = intValue4 / intValue2;
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            float f = width;
            int i5 = (int) (this.f29429f * f);
            float f2 = height;
            int i6 = (int) (this.f29430g * f2);
            float max = Math.max(this.f29427d / f, this.f29428e / f2);
            int i7 = (int) (f * max);
            int i8 = (int) (f2 * max);
            Matrix matrix = new Matrix();
            matrix.postScale(max, max);
            int i9 = (int) (i5 * max);
            int i10 = this.f29427d;
            int a = C13008c.m4820a(i9, i10 / 2, i7 - (i10 / 2));
            int i11 = (int) (i6 * max);
            int i12 = this.f29428e;
            this.f29432i.setImageBitmap(Bitmap.createBitmap(bitmap, C13008c.m4820a((int) ((a - (this.f29427d / 2)) / max), 0, bitmap.getWidth() - ((int) (this.f29427d / max))), C13008c.m4820a((int) ((C13008c.m4820a(i11, i12 / 2, i8 - (i12 / 2)) - (this.f29428e / 2)) / max), 0, bitmap.getHeight() - ((int) (this.f29428e / max))), (int) (this.f29427d / max), (int) (this.f29428e / max), matrix, true));
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo2507a(Object obj, AbstractC6063c cVar) {
            m4786a((Bitmap) obj, (AbstractC6063c<? super Bitmap>) cVar);
        }
    }

    /* renamed from: j.a.l0.c$e */
    /* loaded from: classes3-dex2jar.jar:j/a/l0/c$e.class */
    public static class C13013e {

        /* renamed from: a */
        public String f29433a;

        /* renamed from: b */
        public String f29434b;

        /* renamed from: c */
        public String f29435c;

        /* renamed from: d */
        public String f29436d;

        /* renamed from: e */
        public String f29437e;

        /* renamed from: f */
        public String f29438f;

        /* renamed from: g */
        public String f29439g;

        /* renamed from: h */
        public long f29440h;

        /* renamed from: a */
        public boolean m4785a() {
            return TextUtils.isEmpty(this.f29433a) || TextUtils.isEmpty(this.f29434b) || TextUtils.isEmpty(this.f29435c) || TextUtils.isEmpty(this.f29436d) || TextUtils.isEmpty(this.f29438f) || TextUtils.isEmpty(this.f29439g) || this.f29440h < System.currentTimeMillis();
        }
    }

    /* renamed from: j.a.l0.c$f */
    /* loaded from: classes3-dex2jar.jar:j/a/l0/c$f.class */
    public enum EnumC13014f {
        REPORT
    }

    static {
        Bitmap.CompressFormat compressFormat = f29409b;
        new LruCache(16);
    }

    /* renamed from: a */
    public static int m4820a(int i, int i2, int i3) {
        int i4 = i;
        if (i > i3) {
            i4 = i3;
        }
        int i5 = i4;
        if (i4 < i2) {
            i5 = i2;
        }
        return i5;
    }

    @Nullable
    /* renamed from: a */
    public static String m4810a(@NonNull String str, @NonNull String str2, String str3, @NonNull String str4) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str4)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(1024);
        sb.append(str);
        sb.append('/');
        sb.append(str2);
        sb.append('/');
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
            sb.append('/');
        }
        sb.append(str4);
        return sb.toString();
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m4811a(String str, File file) {
        try {
            C11511b.m9423b(new File(str, ".nomedia"));
            return null;
        } catch (IOException | IllegalStateException e) {
            C14080m2.m2612a(e);
            return null;
        }
    }

    /* renamed from: a */
    public static void m4818a(Activity activity, Fragment fragment, int i) {
        if (activity == null && fragment == null) {
            throw new NullPointerException("params activity and fragment should not both null");
        }
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("image/*");
        Intent createChooser = Intent.createChooser(intent, null);
        try {
            if (fragment == null) {
                activity.startActivityForResult(createChooser, i);
            } else {
                fragment.startActivityForResult(createChooser, i);
            }
        } catch (ActivityNotFoundException e) {
        }
    }

    /* renamed from: a */
    public static void m4816a(Uri uri, AbstractC12383b bVar) {
        m4799c(uri, null, EnumC13014f.REPORT, bVar);
    }

    /* renamed from: a */
    public static void m4814a(ImageView imageView, String str) {
        C5776l.m24470c(MyApplication.m29013o()).m24450a(str).m24524l().m24512b((C5765c<String>) new C13012d(str, imageView));
    }

    /* renamed from: a */
    public static void m4813a(File file) {
        if (file.exists()) {
            for (File file2 : file.listFiles()) {
                file2.delete();
            }
        }
    }

    /* renamed from: a */
    public static void m4808a(String str, String str2, JSONObject jSONObject, JSONObject jSONObject2, JSONArray jSONArray) {
        if (!TextUtils.isEmpty(str)) {
            C14217x3.m2181a(new AsyncTaskC13009a(jSONObject, str, str2, jSONObject2, jSONArray));
        }
    }

    /* renamed from: a */
    public static void m4807a(ArrayList<Uri> arrayList) {
        int i = 0;
        int size = arrayList == null ? 0 : arrayList.size();
        while (i < 10) {
            m4805b(i, i < size ? arrayList.get(i) : null);
            i++;
        }
    }

    /* renamed from: a */
    public static boolean m4817a(Uri uri) {
        return m4800c(uri) && new File(uri.getPath()).exists();
    }

    /* renamed from: a */
    public static boolean m4812a(String str) {
        return !TextUtils.isEmpty(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0103, code lost:
        if (r0.endsWith("_s") == false) goto L_0x0114;
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0146 A[Catch: all -> 0x01c7, Exception -> 0x01d2, TryCatch #2 {Exception -> 0x01d2, all -> 0x01c7, blocks: (B:6:0x0007, B:8:0x0010, B:10:0x0019, B:12:0x0028, B:14:0x0032, B:16:0x0043, B:18:0x004b, B:22:0x005a, B:24:0x0065, B:27:0x0078, B:31:0x0083, B:33:0x008e, B:36:0x009a, B:40:0x00a4, B:42:0x00af, B:44:0x00bb, B:46:0x00c1, B:48:0x00c8, B:50:0x00e2, B:52:0x00ed, B:56:0x00fb, B:59:0x0108, B:60:0x0114, B:60:0x0114, B:61:0x0117, B:63:0x0146, B:65:0x015a, B:67:0x0164, B:69:0x0196, B:72:0x01a2, B:73:0x01ad, B:77:0x01bd), top: B:89:0x0007 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.net.Uri m4802b(java.lang.String r5, java.lang.String r6, java.lang.String r7, org.json.JSONObject r8) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p536l0.C13008c.m4802b(java.lang.String, java.lang.String, java.lang.String, org.json.JSONObject):android.net.Uri");
    }

    /* renamed from: b */
    public static void m4805b(int i, Uri uri) {
        if (m4817a(uri) || m4804b(uri)) {
            C13915b3.m3044e("wc_photo_uri_" + i, uri.toString());
            return;
        }
        C13915b3.m3061a("wc_photo_uri_" + i);
    }

    /* renamed from: b */
    public static void m4803b(Uri uri, String str, EnumC13014f fVar, AbstractC12383b bVar) {
        if (f29410c.m4785a()) {
            C14217x3.m2181a(new AsyncTaskC13010b(uri, str, fVar, bVar));
        } else {
            m4796d(uri, str, fVar, bVar);
        }
    }

    /* renamed from: b */
    public static boolean m4804b(Uri uri) {
        return m4800c(uri) && uri.getPath().startsWith("https");
    }

    /* renamed from: c */
    public static int m4801c() {
        ActivityManager.MemoryInfo g = m4792g();
        long j = g.availMem;
        int i = 2;
        if (j >= (j > g.threshold ? 1 : 2) * 265420800) {
            return 2;
        }
        long j2 = g.availMem;
        if (j2 > g.threshold) {
            i = 1;
        }
        return j2 >= ((long) (i * 117964800)) ? 1 : 0;
    }

    /* renamed from: c */
    public static void m4799c(Uri uri, String str, EnumC13014f fVar, AbstractC12383b bVar) {
        if (uri != null && !TextUtils.isEmpty(uri.getPath())) {
            File file = new File(uri.getPath());
            if (file.exists() && !TextUtils.isEmpty(file.getName()) && fVar.equals(EnumC13014f.REPORT)) {
                m4803b(uri, str, fVar, bVar);
            }
        }
    }

    /* renamed from: c */
    public static boolean m4800c(Uri uri) {
        return uri != null && m4812a(uri.getPath());
    }

    /* renamed from: d */
    public static void m4798d() {
        File b = C11510a.m9438b(MyApplication.m29013o(), true);
        m4813a(new File(b, "uil-images"));
        m4813a(new File(b, "whoscallcache"));
        m4813a(b);
    }

    /* renamed from: d */
    public static void m4797d(Uri uri) {
        if (m4817a(uri) || m4804b(uri)) {
            C13915b3.m3044e("wc_cover_uri", uri.toString());
        } else {
            C13915b3.m3061a("wc_cover_uri");
        }
    }

    /* renamed from: d */
    public static void m4796d(Uri uri, String str, EnumC13014f fVar, AbstractC12383b bVar) {
        String str2;
        File file = new File(uri.getPath());
        if (!file.exists() || TextUtils.isEmpty(file.getName())) {
            try {
                bVar.mo3002a(404, uri.toString(), null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (f29410c.m4785a() && fVar.equals(EnumC13014f.REPORT)) {
            m4803b(uri, str, fVar, bVar);
        } else if (fVar.equals(EnumC13014f.REPORT)) {
            StringBuilder sb = new StringBuilder();
            sb.append(f29410c.f29435c);
            sb.append("/");
            if (TextUtils.isEmpty(str)) {
                str2 = "";
            } else {
                str2 = str + "/";
            }
            sb.append(str2);
            sb.append(file.getName());
            String sb2 = sb.toString();
            String str3 = f29410c.f29437e;
            String str4 = f29410c.f29438f;
            String str5 = f29410c.f29439g;
            String str6 = f29410c.f29434b;
            String str7 = "uploadS3: fileName=" + sb2 + ",bucketName=" + str3;
            TransferManager transferManager = new TransferManager(new BasicSessionCredentials(str4, str5, f29410c.f29433a));
            transferManager.getAmazonS3Client().setRegion(Region.getRegion(Regions.fromName(str6)));
            transferManager.upload(new PutObjectRequest(str3, sb2, file), new C13011c(uri, bVar));
        }
    }

    /* renamed from: e */
    public static int m4795e() {
        if (f29412e == -1) {
            f29412e = (int) TypedValue.applyDimension(1, 150.0f, MyApplication.m29013o().getResources().getDisplayMetrics());
        }
        return f29412e;
    }

    /* renamed from: e */
    public static void m4794e(Uri uri) {
        if (m4817a(uri) || m4804b(uri)) {
            C13915b3.m3044e("wc_profile_uri", uri.toString());
        } else {
            C13915b3.m3061a("wc_profile_uri");
        }
    }

    /* renamed from: f */
    public static int m4793f() {
        if (f29411d == -1) {
            f29411d = ((WindowManager) MyApplication.m29013o().getSystemService("window")).getDefaultDisplay().getWidth();
        }
        return f29411d;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: g */
    public static ActivityManager.MemoryInfo m4792g() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) MyApplication.m29013o().getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    /* renamed from: h */
    public static int m4791h() {
        if (f29414g == -1) {
            f29414g = (int) TypedValue.applyDimension(1, 180.0f, MyApplication.m29013o().getResources().getDisplayMetrics());
        }
        return f29414g;
    }

    /* renamed from: i */
    public static int m4790i() {
        if (f29413f == -1) {
            f29413f = ((WindowManager) MyApplication.m29013o().getSystemService("window")).getDefaultDisplay().getWidth();
        }
        return f29413f;
    }

    /* renamed from: j */
    public static String m4789j() {
        File d;
        if (C11510a.m9436d(MyApplication.m29013o()) == null) {
            return MyApplication.m29013o().getFilesDir().getPath();
        }
        final String str = d.getPath() + "/wc_pics";
        try {
            C11511b.m9430a(new File(str), new AbstractC15118l() { // from class: j.a.l0.a
                @Override // p626l.p641z.p642c.AbstractC15118l
                public final Object invoke(Object obj) {
                    return C13008c.m4811a(str, (File) obj);
                }
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
        return str;
    }

    /* renamed from: k */
    public static int m4788k() {
        if (f29415h == -1) {
            f29415h = ((WindowManager) MyApplication.m29013o().getSystemService("window")).getDefaultDisplay().getHeight();
        }
        return f29415h;
    }

    /* renamed from: l */
    public static final ArrayList<Uri> m4787l() {
        ArrayList<Uri> arrayList = new ArrayList<>(10);
        for (int i = 0; i < 10; i++) {
            String b = C13915b3.m3056b("wc_photo_uri_" + i, (String) null);
            if (!TextUtils.isEmpty(b)) {
                Uri parse = Uri.parse(b);
                if (m4817a(parse) || m4804b(parse)) {
                    arrayList.add(parse);
                }
            }
        }
        return arrayList;
    }
}
