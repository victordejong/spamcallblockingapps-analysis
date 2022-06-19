package com.facebook.p094a.p100e;

import android.os.AsyncTask;
import com.facebook.C2095j;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.a.e.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a/e/a.class */
public final class C1886a {

    /* renamed from: a */
    private static final List<String> f5706a = Arrays.asList("fb_mobile_add_to_cart", "fb_mobile_complete_registration", "other", "fb_mobile_purchase");

    /* renamed from: w */
    private static final Map<String, String> f5707w = new HashMap<String, String>() { // from class: com.facebook.a.e.a.1
        {
            put("embedding.weight", "embed.weight");
            put("dense1.weight", "fc1.weight");
            put("dense2.weight", "fc2.weight");
            put("dense3.weight", "fc3.weight");
            put("dense1.bias", "fc1.bias");
            put("dense2.bias", "fc2.bias");
            put("dense3.bias", "fc3.bias");
        }
    };

    /* renamed from: b */
    private String f5708b;

    /* renamed from: c */
    private File f5709c;

    /* renamed from: d */
    private File f5710d;

    /* renamed from: e */
    private File f5711e = new File(C2095j.m15360h().getFilesDir(), "facebook_ml/");

    /* renamed from: f */
    private int f5712f;

    /* renamed from: g */
    private float[] f5713g;

    /* renamed from: h */
    private String f5714h;

    /* renamed from: i */
    private String f5715i;

    /* renamed from: j */
    private C1890b f5716j;

    /* renamed from: k */
    private C1890b f5717k;

    /* renamed from: l */
    private C1890b f5718l;

    /* renamed from: m */
    private C1890b f5719m;

    /* renamed from: n */
    private C1890b f5720n;

    /* renamed from: o */
    private C1890b f5721o;

    /* renamed from: p */
    private C1890b f5722p;

    /* renamed from: q */
    private C1890b f5723q;

    /* renamed from: r */
    private C1890b f5724r;

    /* renamed from: s */
    private C1890b f5725s;

    /* renamed from: t */
    private C1890b f5726t;

    /* renamed from: u */
    private C1890b f5727u;

    /* renamed from: v */
    private C1890b f5728v;

    /* renamed from: com.facebook.a.e.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/e/a$a.class */
    public static class AsyncTaskC1889a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        Runnable f5731a;

        /* renamed from: b */
        File f5732b;

        /* renamed from: c */
        String f5733c;

        AsyncTaskC1889a(String str, File file, Runnable runnable) {
            this.f5733c = str;
            this.f5732b = file;
            this.f5731a = runnable;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            Boolean bool;
            try {
                URL url = new URL(this.f5733c);
                int contentLength = url.openConnection().getContentLength();
                DataInputStream dataInputStream = new DataInputStream(url.openStream());
                byte[] bArr = new byte[contentLength];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f5732b));
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                dataOutputStream.close();
                bool = true;
            } catch (Exception e) {
                bool = false;
            }
            return bool;
        }

        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            if (bool.booleanValue()) {
                this.f5731a.run();
            }
        }
    }

    /* renamed from: com.facebook.a.e.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/e/a$b.class */
    public static class C1890b {

        /* renamed from: a */
        public int[] f5734a;

        /* renamed from: b */
        public float[] f5735b;

        C1890b(int[] iArr, float[] fArr) {
            this.f5734a = iArr;
            this.f5735b = fArr;
        }
    }

    public C1886a(String str, int i, String str2, String str3, float[] fArr) {
        this.f5708b = str;
        this.f5712f = i;
        this.f5713g = fArr;
        this.f5714h = str2;
        this.f5715i = str3;
        if (!this.f5711e.exists()) {
            this.f5711e.mkdirs();
        }
        this.f5709c = new File(this.f5711e, str + "_" + i);
        this.f5710d = new File(this.f5711e, str + "_" + i + "_rule");
    }

    /* renamed from: b */
    private void m15984b() {
        File[] listFiles = this.f5711e.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return;
        }
        String str = this.f5708b + "_" + this.f5712f;
        for (File file : listFiles) {
            String name = file.getName();
            if (name.startsWith(this.f5708b) && !name.startsWith(str)) {
                file.delete();
            }
        }
    }

    /* renamed from: b */
    private void m15983b(Runnable runnable) {
        if (this.f5709c.exists()) {
            runnable.run();
        } else if (this.f5714h == null) {
        } else {
            new AsyncTaskC1889a(this.f5714h, this.f5709c, runnable).execute(new String[0]);
        }
    }

    /* renamed from: c */
    public void m15980c(Runnable runnable) {
        if (this.f5710d.exists() || this.f5715i == null) {
            runnable.run();
        } else {
            new AsyncTaskC1889a(this.f5715i, this.f5710d, runnable).execute(new String[0]);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0175, code lost:
        r7.f5716j = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("embed.weight");
        r7.f5717k = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("convs.0.weight");
        r7.f5718l = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("convs.1.weight");
        r7.f5719m = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("convs.2.weight");
        r7.f5717k.f5735b = com.facebook.p094a.p100e.C1897c.m15957a(r7.f5717k.f5735b, r7.f5717k.f5734a[0], r7.f5717k.f5734a[1], r7.f5717k.f5734a[2]);
        r7.f5718l.f5735b = com.facebook.p094a.p100e.C1897c.m15957a(r7.f5718l.f5735b, r7.f5718l.f5734a[0], r7.f5718l.f5734a[1], r7.f5718l.f5734a[2]);
        r7.f5719m.f5735b = com.facebook.p094a.p100e.C1897c.m15957a(r7.f5719m.f5735b, r7.f5719m.f5734a[0], r7.f5719m.f5734a[1], r7.f5719m.f5734a[2]);
        r7.f5720n = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("convs.0.bias");
        r7.f5721o = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("convs.1.bias");
        r7.f5722p = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("convs.2.bias");
        r7.f5723q = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("fc1.weight");
        r7.f5724r = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("fc2.weight");
        r7.f5725s = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("fc3.weight");
        r7.f5723q.f5735b = com.facebook.p094a.p100e.C1897c.m15958a(r7.f5723q.f5735b, r7.f5723q.f5734a[0], r7.f5723q.f5734a[1]);
        r7.f5724r.f5735b = com.facebook.p094a.p100e.C1897c.m15958a(r7.f5724r.f5735b, r7.f5724r.f5734a[0], r7.f5724r.f5734a[1]);
        r7.f5725s.f5735b = com.facebook.p094a.p100e.C1897c.m15958a(r7.f5725s.f5735b, r7.f5725s.f5734a[0], r7.f5725s.f5734a[1]);
        r7.f5726t = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("fc1.bias");
        r7.f5727u = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("fc2.bias");
        r7.f5728v = (com.facebook.p094a.p100e.C1886a.C1890b) r0.get("fc3.bias");
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0340, code lost:
        r12 = true;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m15981c() {
        /*
            Method dump skipped, instructions count: 844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.p094a.p100e.C1886a.m15981c():boolean");
    }

    /* renamed from: a */
    public File m15990a() {
        return this.f5710d;
    }

    /* renamed from: a */
    String m15986a(float[] fArr) {
        String str = null;
        if (fArr.length != 0) {
            if (this.f5713g.length == 0) {
                str = null;
            } else if (this.f5708b.equals("SUGGEST_EVENT")) {
                str = m15982b(fArr);
            } else {
                str = null;
                if (this.f5708b.equals("DATA_DETECTION_ADDRESS")) {
                    str = m15979c(fArr);
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public String m15985a(float[] fArr, String str) {
        float[] m15952a = C1897c.m15952a(C1898d.m15947a(str, 128), this.f5716j.f5735b, 1, 128, 64);
        float[] m15954a = C1897c.m15954a(m15952a, this.f5717k.f5735b, 1, 128, 64, this.f5717k.f5734a[2], this.f5717k.f5734a[0]);
        float[] m15954a2 = C1897c.m15954a(m15952a, this.f5718l.f5735b, 1, 128, 64, this.f5718l.f5734a[2], this.f5718l.f5734a[0]);
        float[] m15954a3 = C1897c.m15954a(m15952a, this.f5719m.f5735b, 1, 128, 64, this.f5719m.f5734a[2], this.f5719m.f5734a[0]);
        C1897c.m15955a(m15954a, this.f5720n.f5735b, 1, (128 - this.f5717k.f5734a[2]) + 1, this.f5717k.f5734a[0]);
        C1897c.m15955a(m15954a2, this.f5721o.f5735b, 1, (128 - this.f5718l.f5734a[2]) + 1, this.f5718l.f5734a[0]);
        C1897c.m15955a(m15954a3, this.f5722p.f5735b, 1, (128 - this.f5719m.f5734a[2]) + 1, this.f5719m.f5734a[0]);
        C1897c.m15959a(m15954a, ((128 - this.f5717k.f5734a[2]) + 1) * this.f5717k.f5734a[0]);
        C1897c.m15959a(m15954a2, ((128 - this.f5718l.f5734a[2]) + 1) * this.f5718l.f5734a[0]);
        C1897c.m15959a(m15954a3, ((128 - this.f5719m.f5734a[2]) + 1) * this.f5719m.f5734a[0]);
        float[] m15950b = C1897c.m15950b(m15954a, (128 - this.f5717k.f5734a[2]) + 1, this.f5717k.f5734a[0], (128 - this.f5717k.f5734a[2]) + 1);
        float[] m15950b2 = C1897c.m15950b(m15954a2, (128 - this.f5718l.f5734a[2]) + 1, this.f5718l.f5734a[0], (128 - this.f5718l.f5734a[2]) + 1);
        float[] m15953a = C1897c.m15953a(C1897c.m15956a(C1897c.m15956a(C1897c.m15956a(m15950b, m15950b2), C1897c.m15950b(m15954a3, (128 - this.f5719m.f5734a[2]) + 1, this.f5719m.f5734a[0], (128 - this.f5719m.f5734a[2]) + 1)), fArr), this.f5723q.f5735b, this.f5726t.f5735b, 1, this.f5723q.f5734a[1], this.f5723q.f5734a[0]);
        C1897c.m15959a(m15953a, this.f5726t.f5734a[0]);
        float[] m15953a2 = C1897c.m15953a(m15953a, this.f5724r.f5735b, this.f5727u.f5735b, 1, this.f5724r.f5734a[1], this.f5724r.f5734a[0]);
        C1897c.m15959a(m15953a2, this.f5727u.f5734a[0]);
        float[] m15953a3 = C1897c.m15953a(m15953a2, this.f5725s.f5735b, this.f5728v.f5735b, 1, this.f5725s.f5734a[1], this.f5725s.f5734a[0]);
        C1897c.m15951b(m15953a3, this.f5728v.f5734a[0]);
        return m15986a(m15953a3);
    }

    /* renamed from: a */
    public void m15987a(final Runnable runnable) {
        m15983b(new Runnable() { // from class: com.facebook.a.e.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (C1886a.this.m15981c()) {
                    C1886a.this.m15980c(runnable);
                }
            }
        });
        m15984b();
    }

    /* renamed from: b */
    String m15982b(float[] fArr) {
        String str;
        if (this.f5713g.length == fArr.length) {
            int i = 0;
            while (true) {
                if (i >= this.f5713g.length) {
                    str = "other";
                    break;
                } else if (fArr[i] >= this.f5713g[i]) {
                    str = f5706a.get(i);
                    break;
                } else {
                    i++;
                }
            }
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: c */
    String m15979c(float[] fArr) {
        return fArr[1] >= this.f5713g[0] ? "SHOULD_FILTER" : null;
    }
}
