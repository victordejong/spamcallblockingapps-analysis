package p000;

import android.os.AsyncTask;
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
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: dl0 */
/* loaded from: classes-dex2jar.jar:dl0.class */
public final class dl0 {

    /* renamed from: v */
    public static final List<String> f6060v = Arrays.asList("fb_mobile_add_to_cart", "fb_mobile_complete_registration", "other", "fb_mobile_purchase");

    /* renamed from: w */
    public static final Map<String, String> f6061w = new C1301a();

    /* renamed from: a */
    public String f6062a;

    /* renamed from: b */
    public File f6063b;

    /* renamed from: c */
    public File f6064c;

    /* renamed from: d */
    public File f6065d;

    /* renamed from: e */
    public int f6066e;

    /* renamed from: f */
    public float[] f6067f;

    /* renamed from: g */
    public String f6068g;

    /* renamed from: h */
    public String f6069h;

    /* renamed from: i */
    public C1304d f6070i;

    /* renamed from: j */
    public C1304d f6071j;

    /* renamed from: k */
    public C1304d f6072k;

    /* renamed from: l */
    public C1304d f6073l;

    /* renamed from: m */
    public C1304d f6074m;

    /* renamed from: n */
    public C1304d f6075n;

    /* renamed from: o */
    public C1304d f6076o;

    /* renamed from: p */
    public C1304d f6077p;

    /* renamed from: q */
    public C1304d f6078q;

    /* renamed from: r */
    public C1304d f6079r;

    /* renamed from: s */
    public C1304d f6080s;

    /* renamed from: t */
    public C1304d f6081t;

    /* renamed from: u */
    public C1304d f6082u;

    /* renamed from: dl0$a */
    /* loaded from: classes-dex2jar.jar:dl0$a.class */
    public static final class C1301a extends HashMap<String, String> {
        public C1301a() {
            put("embedding.weight", "embed.weight");
            put("dense1.weight", "fc1.weight");
            put("dense2.weight", "fc2.weight");
            put("dense3.weight", "fc3.weight");
            put("dense1.bias", "fc1.bias");
            put("dense2.bias", "fc2.bias");
            put("dense3.bias", "fc3.bias");
        }
    }

    /* renamed from: dl0$b */
    /* loaded from: classes-dex2jar.jar:dl0$b.class */
    public class RunnableC1302b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f6083a;

        public RunnableC1302b(Runnable runnable) {
            dl0.this = r4;
            this.f6083a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (dl0.this.m2500h()) {
                dl0.this.m2503e(this.f6083a);
            }
        }
    }

    /* renamed from: dl0$c */
    /* loaded from: classes-dex2jar.jar:dl0$c.class */
    public static class AsyncTaskC1303c extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        public Runnable f6085a;

        /* renamed from: b */
        public File f6086b;

        /* renamed from: c */
        public String f6087c;

        public AsyncTaskC1303c(String str, File file, Runnable runnable) {
            this.f6087c = str;
            this.f6086b = file;
            this.f6085a = runnable;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            try {
                URL url = new URL(this.f6087c);
                int contentLength = ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection())).getContentLength();
                DataInputStream dataInputStream = new DataInputStream(FirebasePerfUrlConnection.openStream(url));
                byte[] bArr = new byte[contentLength];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f6086b));
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                dataOutputStream.close();
                return Boolean.TRUE;
            } catch (Exception e) {
                return Boolean.FALSE;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            if (bool.booleanValue()) {
                this.f6085a.run();
            }
        }
    }

    /* renamed from: dl0$d */
    /* loaded from: classes-dex2jar.jar:dl0$d.class */
    public static class C1304d {

        /* renamed from: a */
        public int[] f6088a;

        /* renamed from: b */
        public float[] f6089b;

        public C1304d(int[] iArr, float[] fArr) {
            this.f6088a = iArr;
            this.f6089b = fArr;
        }
    }

    public dl0(String str, int i, String str2, String str3, float[] fArr) {
        this.f6062a = str;
        this.f6066e = i;
        this.f6067f = fArr;
        this.f6068g = str2;
        this.f6069h = str3;
        File file = new File(ui0.e().getFilesDir(), "facebook_ml/");
        this.f6065d = file;
        if (!file.exists()) {
            this.f6065d.mkdirs();
        }
        File file2 = this.f6065d;
        this.f6063b = new File(file2, str + "_" + i);
        File file3 = this.f6065d;
        this.f6064c = new File(file3, str + "_" + i + "_rule");
    }

    /* renamed from: c */
    public final void m2505c() {
        File[] listFiles = this.f6065d.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return;
        }
        String str = this.f6062a + "_" + this.f6066e;
        for (File file : listFiles) {
            String name = file.getName();
            if (name.startsWith(this.f6062a) && !name.startsWith(str)) {
                file.delete();
            }
        }
    }

    /* renamed from: d */
    public final void m2504d(Runnable runnable) {
        if (this.f6063b.exists()) {
            runnable.run();
        } else if (this.f6068g == null) {
        } else {
            new AsyncTaskC1303c(this.f6068g, this.f6063b, runnable).execute(new String[0]);
        }
    }

    /* renamed from: e */
    public final void m2503e(Runnable runnable) {
        if (this.f6064c.exists() || this.f6069h == null) {
            runnable.run();
        } else {
            new AsyncTaskC1303c(this.f6069h, this.f6064c, runnable).execute(new String[0]);
        }
    }

    /* renamed from: f */
    public File m2502f() {
        return this.f6064c;
    }

    /* renamed from: g */
    public void m2501g(Runnable runnable) {
        m2504d(new RunnableC1302b(runnable));
        m2505c();
    }

    /* renamed from: h */
    public final boolean m2500h() {
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f6063b);
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
            int length = names.length();
            String[] strArr = new String[length];
            for (int i3 = 0; i3 < length; i3++) {
                strArr[i3] = names.getString(i3);
            }
            Arrays.sort(strArr);
            HashMap hashMap = new HashMap();
            int i4 = 0;
            int i5 = i2;
            while (true) {
                int i6 = i5;
                int i7 = 1;
                if (i4 >= length) {
                    this.f6070i = (C1304d) hashMap.get("embed.weight");
                    this.f6071j = (C1304d) hashMap.get("convs.0.weight");
                    this.f6072k = (C1304d) hashMap.get("convs.1.weight");
                    this.f6073l = (C1304d) hashMap.get("convs.2.weight");
                    C1304d c1304d = this.f6071j;
                    float[] fArr = c1304d.f6089b;
                    int[] iArr = c1304d.f6088a;
                    c1304d.f6089b = fl0.m1702k(fArr, iArr[0], iArr[1], iArr[2]);
                    C1304d c1304d2 = this.f6072k;
                    float[] fArr2 = c1304d2.f6089b;
                    int[] iArr2 = c1304d2.f6088a;
                    c1304d2.f6089b = fl0.m1702k(fArr2, iArr2[0], iArr2[1], iArr2[2]);
                    C1304d c1304d3 = this.f6073l;
                    float[] fArr3 = c1304d3.f6089b;
                    int[] iArr3 = c1304d3.f6088a;
                    c1304d3.f6089b = fl0.m1702k(fArr3, iArr3[0], iArr3[1], iArr3[2]);
                    this.f6074m = (C1304d) hashMap.get("convs.0.bias");
                    this.f6075n = (C1304d) hashMap.get("convs.1.bias");
                    this.f6076o = (C1304d) hashMap.get("convs.2.bias");
                    this.f6077p = (C1304d) hashMap.get("fc1.weight");
                    this.f6078q = (C1304d) hashMap.get("fc2.weight");
                    this.f6079r = (C1304d) hashMap.get("fc3.weight");
                    C1304d c1304d4 = this.f6077p;
                    float[] fArr4 = c1304d4.f6089b;
                    int[] iArr4 = c1304d4.f6088a;
                    c1304d4.f6089b = fl0.m1703j(fArr4, iArr4[0], iArr4[1]);
                    C1304d c1304d5 = this.f6078q;
                    float[] fArr5 = c1304d5.f6089b;
                    int[] iArr5 = c1304d5.f6088a;
                    c1304d5.f6089b = fl0.m1703j(fArr5, iArr5[0], iArr5[1]);
                    C1304d c1304d6 = this.f6079r;
                    float[] fArr6 = c1304d6.f6089b;
                    int[] iArr6 = c1304d6.f6088a;
                    c1304d6.f6089b = fl0.m1703j(fArr6, iArr6[0], iArr6[1]);
                    this.f6080s = (C1304d) hashMap.get("fc1.bias");
                    this.f6081t = (C1304d) hashMap.get("fc2.bias");
                    this.f6082u = (C1304d) hashMap.get("fc3.bias");
                    return true;
                }
                String str = strArr[i4];
                JSONArray jSONArray = jSONObject.getJSONArray(str);
                int length2 = jSONArray.length();
                int[] iArr7 = new int[length2];
                for (int i8 = 0; i8 < length2; i8++) {
                    iArr7[i8] = jSONArray.getInt(i8);
                    i7 *= iArr7[i8];
                }
                int i9 = i7 * 4;
                int i10 = i6 + i9;
                if (i10 > available) {
                    return false;
                }
                ByteBuffer wrap2 = ByteBuffer.wrap(bArr, i6, i9);
                wrap2.order(ByteOrder.LITTLE_ENDIAN);
                float[] fArr7 = new float[i7];
                wrap2.asFloatBuffer().get(fArr7, 0, i7);
                Map<String, String> map = f6061w;
                String str2 = str;
                if (map.containsKey(str)) {
                    str2 = map.get(str);
                }
                hashMap.put(str2, new C1304d(iArr7, fArr7));
                i4++;
                i5 = i10;
            }
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: i */
    public String m2499i(float[] fArr, String str) {
        float[] m1708e = fl0.m1708e(gl0.b(str, 128), this.f6070i.f6089b, 1, 128, 64);
        C1304d c1304d = this.f6071j;
        float[] fArr2 = c1304d.f6089b;
        int[] iArr = c1304d.f6088a;
        float[] m1710c = fl0.m1710c(m1708e, fArr2, 1, 128, 64, iArr[2], iArr[0]);
        C1304d c1304d2 = this.f6072k;
        float[] fArr3 = c1304d2.f6089b;
        int[] iArr2 = c1304d2.f6088a;
        float[] m1710c2 = fl0.m1710c(m1708e, fArr3, 1, 128, 64, iArr2[2], iArr2[0]);
        C1304d c1304d3 = this.f6073l;
        float[] fArr4 = c1304d3.f6089b;
        int[] iArr3 = c1304d3.f6088a;
        float[] m1710c3 = fl0.m1710c(m1708e, fArr4, 1, 128, 64, iArr3[2], iArr3[0]);
        float[] fArr5 = this.f6074m.f6089b;
        int[] iArr4 = this.f6071j.f6088a;
        fl0.m1712a(m1710c, fArr5, 1, (128 - iArr4[2]) + 1, iArr4[0]);
        float[] fArr6 = this.f6075n.f6089b;
        int[] iArr5 = this.f6072k.f6088a;
        fl0.m1712a(m1710c2, fArr6, 1, (128 - iArr5[2]) + 1, iArr5[0]);
        float[] fArr7 = this.f6076o.f6089b;
        int[] iArr6 = this.f6073l.f6088a;
        fl0.m1712a(m1710c3, fArr7, 1, (128 - iArr6[2]) + 1, iArr6[0]);
        int[] iArr7 = this.f6071j.f6088a;
        fl0.m1705h(m1710c, ((128 - iArr7[2]) + 1) * iArr7[0]);
        int[] iArr8 = this.f6072k.f6088a;
        fl0.m1705h(m1710c2, ((128 - iArr8[2]) + 1) * iArr8[0]);
        int[] iArr9 = this.f6073l.f6088a;
        fl0.m1705h(m1710c3, ((128 - iArr9[2]) + 1) * iArr9[0]);
        int[] iArr10 = this.f6071j.f6088a;
        float[] m1707f = fl0.m1707f(m1710c, (128 - iArr10[2]) + 1, iArr10[0], (128 - iArr10[2]) + 1);
        int[] iArr11 = this.f6072k.f6088a;
        float[] m1707f2 = fl0.m1707f(m1710c2, (128 - iArr11[2]) + 1, iArr11[0], (128 - iArr11[2]) + 1);
        int[] iArr12 = this.f6073l.f6088a;
        float[] m1711b = fl0.m1711b(fl0.m1711b(fl0.m1711b(m1707f, m1707f2), fl0.m1707f(m1710c3, (128 - iArr12[2]) + 1, iArr12[0], (128 - iArr12[2]) + 1)), fArr);
        C1304d c1304d4 = this.f6077p;
        float[] fArr8 = c1304d4.f6089b;
        float[] fArr9 = this.f6080s.f6089b;
        int[] iArr13 = c1304d4.f6088a;
        float[] m1709d = fl0.m1709d(m1711b, fArr8, fArr9, 1, iArr13[1], iArr13[0]);
        fl0.m1705h(m1709d, this.f6080s.f6088a[0]);
        C1304d c1304d5 = this.f6078q;
        float[] fArr10 = c1304d5.f6089b;
        float[] fArr11 = this.f6081t.f6089b;
        int[] iArr14 = c1304d5.f6088a;
        float[] m1709d2 = fl0.m1709d(m1709d, fArr10, fArr11, 1, iArr14[1], iArr14[0]);
        fl0.m1705h(m1709d2, this.f6081t.f6088a[0]);
        C1304d c1304d6 = this.f6079r;
        float[] fArr12 = c1304d6.f6089b;
        float[] fArr13 = this.f6082u.f6089b;
        int[] iArr15 = c1304d6.f6088a;
        float[] m1709d3 = fl0.m1709d(m1709d2, fArr12, fArr13, 1, iArr15[1], iArr15[0]);
        fl0.m1704i(m1709d3, this.f6082u.f6088a[0]);
        return m2497k(m1709d3);
    }

    /* renamed from: j */
    public String m2498j(float[] fArr) {
        return fArr[1] >= this.f6067f[0] ? "SHOULD_FILTER" : null;
    }

    /* renamed from: k */
    public String m2497k(float[] fArr) {
        if (fArr.length == 0 || this.f6067f.length == 0) {
            return null;
        }
        if (this.f6062a.equals("SUGGEST_EVENT")) {
            return m2496l(fArr);
        }
        if (!this.f6062a.equals("DATA_DETECTION_ADDRESS")) {
            return null;
        }
        return m2498j(fArr);
    }

    /* renamed from: l */
    public String m2496l(float[] fArr) {
        if (this.f6067f.length != fArr.length) {
            return null;
        }
        int i = 0;
        while (true) {
            float[] fArr2 = this.f6067f;
            if (i >= fArr2.length) {
                return "other";
            }
            if (fArr[i] >= fArr2[i]) {
                return f6060v.get(i);
            }
            i++;
        }
    }
}
