package p081h.p203i.p325c.p327b0.p328p;

import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.GuardedBy;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
@AnyThread
/* renamed from: h.i.c.b0.p.o */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/o.class */
public class C9432o {
    @GuardedBy("ConfigStorageClient.class")

    /* renamed from: c */
    public static final Map<String, C9432o> f21531c = new HashMap();

    /* renamed from: a */
    public final Context f21532a;

    /* renamed from: b */
    public final String f21533b;

    public C9432o(Context context, String str) {
        this.f21532a = context;
        this.f21533b = str;
    }

    /* renamed from: a */
    public static C9432o m15189a(Context context, String str) {
        C9432o oVar;
        synchronized (C9432o.class) {
            try {
                if (!f21531c.containsKey(str)) {
                    f21531c.put(str, new C9432o(context, str));
                }
                oVar = f21531c.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return oVar;
    }

    /* renamed from: a */
    public Void m15190a() {
        synchronized (this) {
            this.f21532a.deleteFile(this.f21533b);
        }
        return null;
    }

    /* renamed from: a */
    public Void m15188a(C9419f fVar) throws IOException {
        synchronized (this) {
            FileOutputStream openFileOutput = this.f21532a.openFileOutput(this.f21533b, 0);
            openFileOutput.write(fVar.toString().getBytes("UTF-8"));
            openFileOutput.close();
        }
        return null;
    }

    /* renamed from: b */
    public String m15187b() {
        return this.f21533b;
    }

    @Nullable
    /* renamed from: c */
    public C9419f m15186c() throws IOException {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Throwable th;
        synchronized (this) {
            try {
                fileInputStream = this.f21532a.openFileInput(this.f21533b);
                try {
                    byte[] bArr = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr, 0, bArr.length);
                    C9419f a = C9419f.m15255a(new JSONObject(new String(bArr, "UTF-8")));
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return a;
                } catch (FileNotFoundException | JSONException e) {
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                    throw th;
                }
            } catch (FileNotFoundException | JSONException e2) {
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream2 = null;
            }
        }
    }
}
