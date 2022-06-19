package p193e.p1485h.p1486a.p1493c.p1511z0;

import android.content.Context;
import android.text.TextUtils;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.C22735g0;
/* renamed from: e.h.a.c.z0.a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/z0/a.class */
public class C22897a {

    /* renamed from: a */
    public final CleverTapInstanceConfig f63560a;

    /* renamed from: b */
    public final Context f63561b;

    public C22897a(Context context, CleverTapInstanceConfig cleverTapInstanceConfig) {
        this.f63561b = context;
        this.f63560a = cleverTapInstanceConfig;
    }

    /* renamed from: a */
    public void m7637a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            synchronized (C22897a.class) {
                File file = new File(this.f63561b.getFilesDir(), str);
                if (file.exists()) {
                    if (file.delete()) {
                        C22735g0 m42081b = this.f63560a.m42081b();
                        String str2 = this.f63560a.f2240a;
                        m42081b.m7855b(str2, "File Deleted:" + str);
                    } else {
                        C22735g0 m42081b2 = this.f63560a.m42081b();
                        String str3 = this.f63560a.f2240a;
                        m42081b2.m7855b(str3, "Failed to delete file" + str);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            C22735g0 m42081b3 = this.f63560a.m42081b();
            String str4 = this.f63560a.f2240a;
            StringBuilder m8692L = C22128a.m8692L("writeFileOnInternalStorage: failed", str, " Error:");
            m8692L.append(e.getLocalizedMessage());
            m42081b3.m7855b(str4, m8692L.toString());
        }
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0184: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:58:0x0184 */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x017a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m7636b(java.lang.String r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1511z0.C22897a.m7636b(java.lang.String):java.lang.String");
    }

    /* renamed from: c */
    public void m7635c(String str, String str2, JSONObject jSONObject) throws IOException {
        Exception e;
        FileWriter fileWriter;
        Throwable th;
        FileWriter fileWriter2 = null;
        try {
            try {
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    synchronized (C22897a.class) {
                        try {
                            File file = new File(this.f63561b.getFilesDir(), str);
                            if (!file.exists() && !file.mkdir()) {
                                return;
                            }
                            fileWriter = new FileWriter(new File(file, str2), false);
                            try {
                                fileWriter.append((CharSequence) jSONObject.toString());
                                fileWriter.flush();
                                fileWriter.close();
                                return;
                            } catch (Throwable th2) {
                                th = th2;
                                while (true) {
                                    try {
                                        break;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                }
                                FileWriter fileWriter3 = fileWriter;
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            fileWriter = null;
                        }
                    }
                    break;
                    FileWriter fileWriter32 = fileWriter;
                    try {
                        throw th;
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        FileWriter fileWriter4 = fileWriter;
                        C22735g0 m42081b = this.f63560a.m42081b();
                        FileWriter fileWriter5 = fileWriter;
                        String str3 = this.f63560a.f2240a;
                        FileWriter fileWriter6 = fileWriter;
                        FileWriter fileWriter7 = fileWriter;
                        StringBuilder sb = new StringBuilder();
                        FileWriter fileWriter8 = fileWriter;
                        sb.append("writeFileOnInternalStorage: failed");
                        FileWriter fileWriter9 = fileWriter;
                        sb.append(e.getLocalizedMessage());
                        fileWriter2 = fileWriter;
                        m42081b.m7855b(str3, sb.toString());
                        if (fileWriter == null) {
                            return;
                        }
                        fileWriter.close();
                    }
                }
            } catch (Exception e3) {
                e = e3;
                fileWriter = null;
            }
        } catch (Throwable th5) {
            if (fileWriter2 != null) {
                fileWriter2.close();
            }
            throw th5;
        }
    }
}
