package p124i4;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Scanner;
import org.json.JSONObject;
/* renamed from: i4.j */
/* loaded from: classes-dex2jar.jar:i4/j.class */
public class C3108j {

    /* renamed from: a */
    public final Context f10529a;

    /* renamed from: a */
    public File m2607a() {
        File file = new File(this.f10529a.getFilesDir(), ".com.google.firebase.crashlytics");
        File file2 = file;
        if (!file.exists()) {
            if (file.mkdirs()) {
                file2 = file;
            } else {
                Log.w("FirebaseCrashlytics", "Couldn't create file", null);
                file2 = null;
            }
        }
        return new File(file2, "com.crashlytics.settings.json");
    }

    /* renamed from: b */
    public JSONObject m2606b() {
        JSONObject jSONObject;
        FileInputStream fileInputStream;
        Throwable th;
        JSONObject jSONObject2;
        Log.isLoggable("FirebaseCrashlytics", 3);
        FileInputStream fileInputStream2 = null;
        try {
            File m2607a = m2607a();
            if (m2607a.exists()) {
                fileInputStream = new FileInputStream(m2607a);
                try {
                    Scanner useDelimiter = new Scanner(fileInputStream).useDelimiter("\\A");
                    fileInputStream2 = fileInputStream;
                    jSONObject2 = new JSONObject(useDelimiter.hasNext() ? useDelimiter.next() : "");
                } catch (Exception e) {
                    jSONObject = null;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                            jSONObject = null;
                        } catch (IOException e2) {
                            jSONObject = null;
                        }
                    }
                    return jSONObject;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                        }
                    }
                    throw th;
                }
            } else {
                Log.isLoggable("FirebaseCrashlytics", 2);
                jSONObject2 = null;
            }
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e4) {
                }
            }
            jSONObject = jSONObject2;
        } catch (Exception e5) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
        return jSONObject;
    }
}
