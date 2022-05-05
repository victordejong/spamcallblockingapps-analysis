package com.facebook.appevents.p039t;

import android.os.AsyncTask;
import androidx.annotation.Nullable;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.t.a */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/a.class */
public final class C2350a {

    /* renamed from: f */
    public static final List<String> f2873f = Arrays.asList("fb_mobile_add_to_cart", "fb_mobile_complete_registration", "other", "fb_mobile_purchase");
    @Nullable

    /* renamed from: g */
    public static C2353c f2874g;
    @Nullable

    /* renamed from: h */
    public static C2353c f2875h;
    @Nullable

    /* renamed from: i */
    public static C2353c f2876i;
    @Nullable

    /* renamed from: j */
    public static C2353c f2877j;
    @Nullable

    /* renamed from: k */
    public static C2353c f2878k;
    @Nullable

    /* renamed from: l */
    public static C2353c f2879l;
    @Nullable

    /* renamed from: m */
    public static C2353c f2880m;
    @Nullable

    /* renamed from: n */
    public static C2353c f2881n;
    @Nullable

    /* renamed from: o */
    public static C2353c f2882o;
    @Nullable

    /* renamed from: p */
    public static C2353c f2883p;
    @Nullable

    /* renamed from: q */
    public static C2353c f2884q;
    @Nullable

    /* renamed from: r */
    public static C2353c f2885r;
    @Nullable

    /* renamed from: s */
    public static C2353c f2886s;

    /* renamed from: a */
    public File f2887a;

    /* renamed from: b */
    public File f2888b;

    /* renamed from: c */
    public float[] f2889c;
    @Nullable

    /* renamed from: d */
    public String f2890d;
    @Nullable

    /* renamed from: e */
    public String f2891e;

    /* renamed from: com.facebook.appevents.t.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/a$a.class */
    public class RunnableC2351a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f2892a;

        public RunnableC2351a(Runnable runnable) {
            this.f2892a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2350a.this.m35067b()) {
                C2350a.this.m35066b(this.f2892a);
            }
        }
    }

    /* renamed from: com.facebook.appevents.t.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/a$b.class */
    public static class AsyncTaskC2352b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        public Runnable f2894a;

        /* renamed from: b */
        public File f2895b;

        /* renamed from: c */
        public String f2896c;

        public AsyncTaskC2352b(String str, File file, Runnable runnable) {
            this.f2896c = str;
            this.f2895b = file;
            this.f2894a = runnable;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                File file = new File(C6135n.m23746e().getFilesDir(), "facebook_ml/");
                if (!file.exists()) {
                    file.mkdirs();
                }
                URL url = new URL(this.f2896c);
                int contentLength = ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection())).getContentLength();
                DataInputStream dataInputStream = new DataInputStream(FirebasePerfUrlConnection.openStream(url));
                byte[] bArr = new byte[contentLength];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f2895b));
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                dataOutputStream.close();
                return true;
            } catch (Exception e) {
                return false;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            if (bool.booleanValue()) {
                this.f2894a.run();
            }
        }
    }

    /* renamed from: com.facebook.appevents.t.a$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/a$c.class */
    public static class C2353c {

        /* renamed from: a */
        public int[] f2897a;

        /* renamed from: b */
        public float[] f2898b;

        public C2353c(int[] iArr, float[] fArr) {
            this.f2897a = iArr;
            this.f2898b = fArr;
        }
    }

    public C2350a(String str, int i, String str2, @Nullable String str3, float[] fArr) {
        this.f2889c = fArr;
        this.f2890d = str2;
        this.f2891e = str3;
        File filesDir = C6135n.m23746e().getFilesDir();
        this.f2887a = new File(filesDir, "facebook_ml/" + str + "_" + i);
        this.f2888b = new File(filesDir, "facebook_ml/" + str + "_" + i + "_rule");
    }

    @Nullable
    /* renamed from: a */
    public File m35072a() {
        return this.f2888b;
    }

    @Nullable
    /* renamed from: a */
    public String m35068a(float[] fArr, String str) {
        float[] a = C2358c.m35039a(C2359d.m35034a(str, 128), f2874g.f2898b, 1, 128, 64);
        C2353c cVar = f2875h;
        float[] fArr2 = cVar.f2898b;
        int[] iArr = cVar.f2897a;
        int i = 0;
        float[] a2 = C2358c.m35041a(a, fArr2, 1, 128, 64, iArr[2], iArr[0]);
        C2353c cVar2 = f2876i;
        float[] fArr3 = cVar2.f2898b;
        int[] iArr2 = cVar2.f2897a;
        float[] a3 = C2358c.m35041a(a, fArr3, 1, 128, 64, iArr2[2], iArr2[0]);
        C2353c cVar3 = f2877j;
        float[] fArr4 = cVar3.f2898b;
        int[] iArr3 = cVar3.f2897a;
        float[] a4 = C2358c.m35041a(a, fArr4, 1, 128, 64, iArr3[2], iArr3[0]);
        float[] fArr5 = f2878k.f2898b;
        int[] iArr4 = f2875h.f2897a;
        C2358c.m35042a(a2, fArr5, 1, (128 - iArr4[2]) + 1, iArr4[0]);
        float[] fArr6 = f2879l.f2898b;
        int[] iArr5 = f2876i.f2897a;
        C2358c.m35042a(a3, fArr6, 1, (128 - iArr5[2]) + 1, iArr5[0]);
        float[] fArr7 = f2880m.f2898b;
        int[] iArr6 = f2877j.f2897a;
        C2358c.m35042a(a4, fArr7, 1, (128 - iArr6[2]) + 1, iArr6[0]);
        int[] iArr7 = f2875h.f2897a;
        C2358c.m35046a(a2, ((128 - iArr7[2]) + 1) * iArr7[0]);
        int[] iArr8 = f2876i.f2897a;
        C2358c.m35046a(a3, ((128 - iArr8[2]) + 1) * iArr8[0]);
        int[] iArr9 = f2877j.f2897a;
        C2358c.m35046a(a4, ((128 - iArr9[2]) + 1) * iArr9[0]);
        int[] iArr10 = f2875h.f2897a;
        float[] a5 = C2358c.m35044a(a2, (128 - iArr10[2]) + 1, iArr10[0], (128 - iArr10[2]) + 1);
        int[] iArr11 = f2876i.f2897a;
        float[] a6 = C2358c.m35044a(a3, (128 - iArr11[2]) + 1, iArr11[0], (128 - iArr11[2]) + 1);
        int[] iArr12 = f2877j.f2897a;
        float[] a7 = C2358c.m35043a(C2358c.m35043a(C2358c.m35043a(a5, a6), C2358c.m35044a(a4, (128 - iArr12[2]) + 1, iArr12[0], (128 - iArr12[2]) + 1)), fArr);
        C2353c cVar4 = f2881n;
        float[] fArr8 = cVar4.f2898b;
        float[] fArr9 = f2884q.f2898b;
        int[] iArr13 = cVar4.f2897a;
        float[] a8 = C2358c.m35040a(a7, fArr8, fArr9, 1, iArr13[1], iArr13[0]);
        C2358c.m35046a(a8, f2884q.f2897a[0]);
        C2353c cVar5 = f2882o;
        float[] fArr10 = cVar5.f2898b;
        float[] fArr11 = f2885r.f2898b;
        int[] iArr14 = cVar5.f2897a;
        float[] a9 = C2358c.m35040a(a8, fArr10, fArr11, 1, iArr14[1], iArr14[0]);
        C2358c.m35046a(a9, f2885r.f2897a[0]);
        C2353c cVar6 = f2883p;
        float[] fArr12 = cVar6.f2898b;
        float[] fArr13 = f2886s.f2898b;
        int[] iArr15 = cVar6.f2897a;
        float[] a10 = C2358c.m35040a(a9, fArr12, fArr13, 1, iArr15[1], iArr15[0]);
        C2358c.m35038b(a10, f2886s.f2897a[0]);
        while (true) {
            float[] fArr14 = this.f2889c;
            if (i >= fArr14.length) {
                return "other";
            }
            if (a10[i] >= fArr14[i]) {
                return f2873f.get(i);
            }
            i++;
        }
    }

    /* renamed from: a */
    public final void m35069a(Runnable runnable) {
        if (this.f2887a.exists()) {
            runnable.run();
            return;
        }
        String str = this.f2890d;
        if (str != null) {
            new AsyncTaskC2352b(str, this.f2887a, runnable).execute(new String[0]);
        }
    }

    /* renamed from: b */
    public final void m35066b(Runnable runnable) {
        String str;
        if (this.f2888b.exists() || (str = this.f2891e) == null) {
            runnable.run();
        } else {
            new AsyncTaskC2352b(str, this.f2888b, runnable).execute(new String[0]);
        }
    }

    /* renamed from: b */
    public final boolean m35067b() {
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f2887a);
            int available = fileInputStream.available();
            DataInputStream dataInputStream = new DataInputStream(fileInputStream);
            byte[] bArr = new byte[available];
            dataInputStream.readFully(bArr);
            dataInputStream.close();
            if (available < 4) {
                return false;
            }
            ByteBuffer wrap = ByteBuffer.wrap(bArr, 0, 4);
            wrap.order(ByteOrder.LITTLE_ENDIAN);
            int i = wrap.getInt();
            int i2 = i + 4;
            if (available < i2) {
                return false;
            }
            JSONObject jSONObject = new JSONObject(new String(bArr, 4, i));
            JSONArray names = jSONObject.names();
            String[] strArr = new String[names.length()];
            for (int i3 = 0; i3 < strArr.length; i3++) {
                strArr[i3] = names.getString(i3);
            }
            Arrays.sort(strArr);
            HashMap hashMap = new HashMap();
            int length = strArr.length;
            int i4 = i2;
            int i5 = 0;
            while (i5 < length) {
                String str = strArr[i5];
                JSONArray jSONArray = jSONObject.getJSONArray(str);
                int[] iArr = new int[jSONArray.length()];
                int i6 = 1;
                for (int i7 = 0; i7 < iArr.length; i7++) {
                    iArr[i7] = jSONArray.getInt(i7);
                    i6 *= iArr[i7];
                }
                int i8 = i6 * 4;
                int i9 = i4 + i8;
                if (i9 > available) {
                    return false;
                }
                ByteBuffer wrap2 = ByteBuffer.wrap(bArr, i4, i8);
                wrap2.order(ByteOrder.LITTLE_ENDIAN);
                float[] fArr = new float[i6];
                wrap2.asFloatBuffer().get(fArr, 0, i6);
                hashMap.put(str, new C2353c(iArr, fArr));
                i5++;
                i4 = i9;
            }
            f2874g = (C2353c) hashMap.get("embed.weight");
            f2875h = (C2353c) hashMap.get("convs.0.weight");
            f2876i = (C2353c) hashMap.get("convs.1.weight");
            f2877j = (C2353c) hashMap.get("convs.2.weight");
            f2875h.f2898b = C2358c.m35037b(f2875h.f2898b, f2875h.f2897a[0], f2875h.f2897a[1], f2875h.f2897a[2]);
            f2876i.f2898b = C2358c.m35037b(f2876i.f2898b, f2876i.f2897a[0], f2876i.f2897a[1], f2876i.f2897a[2]);
            f2877j.f2898b = C2358c.m35037b(f2877j.f2898b, f2877j.f2897a[0], f2877j.f2897a[1], f2877j.f2897a[2]);
            f2878k = (C2353c) hashMap.get("convs.0.bias");
            f2879l = (C2353c) hashMap.get("convs.1.bias");
            f2880m = (C2353c) hashMap.get("convs.2.bias");
            f2881n = (C2353c) hashMap.get("fc1.weight");
            f2882o = (C2353c) hashMap.get("fc2.weight");
            f2883p = (C2353c) hashMap.get("fc3.weight");
            f2881n.f2898b = C2358c.m35045a(f2881n.f2898b, f2881n.f2897a[0], f2881n.f2897a[1]);
            f2882o.f2898b = C2358c.m35045a(f2882o.f2898b, f2882o.f2897a[0], f2882o.f2897a[1]);
            f2883p.f2898b = C2358c.m35045a(f2883p.f2898b, f2883p.f2897a[0], f2883p.f2897a[1]);
            f2884q = (C2353c) hashMap.get("fc1.bias");
            f2885r = (C2353c) hashMap.get("fc2.bias");
            f2886s = (C2353c) hashMap.get("fc3.bias");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: c */
    public void m35065c(Runnable runnable) {
        m35069a(new RunnableC2351a(runnable));
    }
}
