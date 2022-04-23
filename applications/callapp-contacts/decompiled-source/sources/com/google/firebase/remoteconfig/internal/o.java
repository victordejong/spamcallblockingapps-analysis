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
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/o.class */
public final class o {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, o> f32648b = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    final String f32649a;

    /* renamed from: c  reason: collision with root package name */
    private final Context f32650c;

    private o(Context context, String str) {
        this.f32650c = context;
        this.f32649a = str;
    }

    public static o a(Context context, String str) {
        o oVar;
        synchronized (o.class) {
            try {
                Map<String, o> map = f32648b;
                if (!map.containsKey(str)) {
                    map.put(str, new o(context, str));
                }
                oVar = map.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return oVar;
    }

    public final f a() throws IOException {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Throwable th;
        synchronized (this) {
            try {
                fileInputStream = this.f32650c.openFileInput(this.f32649a);
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
                f a2 = f.a(new JSONObject(new String(bArr, "UTF-8")));
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return a2;
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

    public final Void a(f fVar) throws IOException {
        synchronized (this) {
            FileOutputStream openFileOutput = this.f32650c.openFileOutput(this.f32649a, 0);
            openFileOutput.write(fVar.toString().getBytes("UTF-8"));
            openFileOutput.close();
        }
        return null;
    }

    public final Void b() {
        synchronized (this) {
            this.f32650c.deleteFile(this.f32649a);
        }
        return null;
    }
}
