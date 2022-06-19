package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.remoteconfig.internal.o */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/o.class */
public final class C15931o {

    /* renamed from: b */
    private static final Map<String, C15931o> f56560b = new HashMap();

    /* renamed from: a */
    final String f56561a;

    /* renamed from: c */
    private final Context f56562c;

    private C15931o(Context context, String str) {
        this.f56562c = context;
        this.f56561a = str;
    }

    /* renamed from: a */
    public static C15931o m8039a(Context context, String str) {
        C15931o c15931o;
        synchronized (C15931o.class) {
            try {
                Map<String, C15931o> map = f56560b;
                if (!map.containsKey(str)) {
                    map.put(str, new C15931o(context, str));
                }
                c15931o = map.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return c15931o;
    }

    /* renamed from: a */
    public final C15918f m8040a() throws IOException {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Throwable th;
        synchronized (this) {
            try {
                fileInputStream = this.f56562c.openFileInput(this.f56561a);
            } catch (FileNotFoundException | JSONException e) {
                fileInputStream = null;
            } catch (Throwable th2) {
                fileInputStream2 = null;
                th = th2;
            }
            try {
                int available = fileInputStream.available();
                byte[] bArr = new byte[available];
                fileInputStream.read(bArr, 0, available);
                C15918f m8068a = C15918f.m8068a(new JSONObject(new String(bArr, "UTF-8")));
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return m8068a;
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

    /* renamed from: a */
    public final Void m8038a(C15918f c15918f) throws IOException {
        synchronized (this) {
            FileOutputStream openFileOutput = this.f56562c.openFileOutput(this.f56561a, 0);
            openFileOutput.write(c15918f.toString().getBytes("UTF-8"));
            openFileOutput.close();
        }
        return null;
    }

    /* renamed from: b */
    public final Void m8037b() {
        synchronized (this) {
            this.f56562c.deleteFile(this.f56561a);
        }
        return null;
    }
}
