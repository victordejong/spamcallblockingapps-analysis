package p131c.p161d.p282e.p352w.p353o;

import android.content.Context;
import com.android.volley.Request;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: c.d.e.w.o.o */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/o.class */
public class C6100o {

    /* renamed from: c */
    public static final Map<String, C6100o> f19601c = new HashMap();

    /* renamed from: a */
    public final Context f19602a;

    /* renamed from: b */
    public final String f19603b;

    public C6100o(Context context, String str) {
        this.f19602a = context;
        this.f19603b = str;
    }

    /* renamed from: a */
    public static C6100o m22022a(Context context, String str) {
        C6100o oVar;
        synchronized (C6100o.class) {
            try {
                if (!f19601c.containsKey(str)) {
                    f19601c.put(str, new C6100o(context, str));
                }
                oVar = f19601c.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return oVar;
    }

    /* renamed from: a */
    public Void m22023a() {
        synchronized (this) {
            this.f19602a.deleteFile(this.f19603b);
        }
        return null;
    }

    /* renamed from: a */
    public Void m22021a(C6087f fVar) throws IOException {
        synchronized (this) {
            FileOutputStream openFileOutput = this.f19602a.openFileOutput(this.f19603b, 0);
            openFileOutput.write(fVar.toString().getBytes(Request.DEFAULT_PARAMS_ENCODING));
            openFileOutput.close();
        }
        return null;
    }

    /* renamed from: b */
    public String m22020b() {
        return this.f19603b;
    }

    /* renamed from: c */
    public C6087f m22019c() throws IOException {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2;
        synchronized (this) {
            try {
                fileInputStream = this.f19602a.openFileInput(this.f19603b);
            } catch (FileNotFoundException | JSONException e) {
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = null;
            }
            try {
                int available = fileInputStream.available();
                byte[] bArr = new byte[available];
                fileInputStream.read(bArr, 0, available);
                C6087f a = C6087f.m22092a(new JSONObject(new String(bArr, Request.DEFAULT_PARAMS_ENCODING)));
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return a;
            } catch (FileNotFoundException | JSONException e2) {
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return null;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                throw th;
            }
        }
    }
}
