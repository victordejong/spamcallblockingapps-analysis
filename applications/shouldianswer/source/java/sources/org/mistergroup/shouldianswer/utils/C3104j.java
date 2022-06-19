package org.mistergroup.shouldianswer.utils;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import io.fabric.sdk.android.C1449c;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import kotlin.p081e.p083b.C1694h;
import kotlin.p088io.C1766c;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.utils.j */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/j.class */
public final class C3104j {

    /* renamed from: c */
    private static C1449c f9126c;

    /* renamed from: f */
    private static int f9129f;

    /* renamed from: g */
    private static int f9130g;

    /* renamed from: h */
    private static OutputStreamWriter f9131h;

    /* renamed from: a */
    public static final C3104j f9124a = new C3104j();

    /* renamed from: b */
    private static final int f9125b = Process.myPid();

    /* renamed from: d */
    private static final String f9127d = f9127d;

    /* renamed from: d */
    private static final String f9127d = f9127d;

    /* renamed from: e */
    private static final SimpleDateFormat f9128e = new SimpleDateFormat("dd.MM HH:mm:ss.SSS");

    /* renamed from: i */
    private static final Calendar f9132i = Calendar.getInstance();

    private C3104j() {
    }

    /* renamed from: a */
    private final void m165a(int i, String str, String str2) {
        String str3;
        String str4;
        String str5 = i != 4 ? i != 6 ? "d" : "e" : "i";
        if (str2 != null) {
            str3 = "mtz-" + str2;
        } else {
            str3 = "mtz";
        }
        if (str2 != null) {
            str4 = '(' + str2 + ") ";
        } else {
            str4 = "";
        }
        int myTid = Process.myTid();
        m156b(f9128e.format(Long.valueOf(System.currentTimeMillis())) + "| " + String.valueOf(f9125b) + "|" + String.valueOf(myTid) + "|" + str5 + "|" + str4 + str);
        if (f9126c != null) {
            Crashlytics.getInstance().core.log(i, str3, str);
        } else {
            Log.d(str3, str);
        }
    }

    /* renamed from: a */
    private final void m159a(String str, ArrayList<String> arrayList) {
        try {
            File fileStreamPath = MyApp.f5480c.m1802a().getFileStreamPath(str);
            if (fileStreamPath == null || !fileStreamPath.exists()) {
                return;
            }
            FileInputStream openFileInput = MyApp.f5480c.m1802a().openFileInput(str);
            InputStreamReader inputStreamReader = new InputStreamReader(openFileInput);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            for (String str2 : C1766c.m2990a((Reader) bufferedReader)) {
                arrayList.add(str2);
            }
            bufferedReader.close();
            inputStreamReader.close();
            openFileInput.close();
        } catch (Exception e) {
            m158a(this, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m158a(C3104j c3104j, Exception exc, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        c3104j.m162a(exc, str);
    }

    /* renamed from: a */
    public static /* synthetic */ void m157a(C3104j c3104j, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        c3104j.m155b(str, str2);
    }

    /* renamed from: b */
    private final void m156b(String str) {
        synchronized (this) {
            try {
                int i = f9132i.get(5);
                if (i != f9130g) {
                    f9130g = i;
                    int i2 = f9132i.get(7);
                    int i3 = i2 - 1;
                    int i4 = i3;
                    if (i3 == 0) {
                        i4 = 7;
                    }
                    if (f9129f > 0 && i2 != f9129f && f9131h != null) {
                        OutputStreamWriter outputStreamWriter = f9131h;
                        if (outputStreamWriter == null) {
                            C1694h.m3124a();
                        }
                        outputStreamWriter.close();
                        f9131h = null;
                        f9129f = 0;
                    }
                    if (f9131h == null) {
                        for (int i5 = 1; i5 <= 7; i5++) {
                            if (i5 != i2 && i5 != i4) {
                                MyApp.f5480c.m1802a().deleteFile(f9127d + i5 + ".log");
                            }
                        }
                        f9129f = i2;
                        f9131h = new OutputStreamWriter(MyApp.f5480c.m1802a().openFileOutput(f9127d + i2 + ".log", 32768));
                    }
                }
                OutputStreamWriter outputStreamWriter2 = f9131h;
                if (outputStreamWriter2 == null) {
                    C1694h.m3124a();
                }
                outputStreamWriter2.write(str + "\n");
                OutputStreamWriter outputStreamWriter3 = f9131h;
                if (outputStreamWriter3 == null) {
                    C1694h.m3124a();
                }
                outputStreamWriter3.flush();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m154b(C3104j c3104j, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        c3104j.m153c(str, str2);
    }

    /* renamed from: c */
    public static /* synthetic */ void m152c(C3104j c3104j, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        c3104j.m151d(str, str2);
    }

    /* renamed from: a */
    public final List<String> m166a(int i) {
        int i2 = 7;
        int i3 = f9132i.get(7);
        int i4 = i3 - 1;
        if (i4 != 0) {
            i2 = i4;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        m159a("service" + i2 + ".log", arrayList);
        m159a("service" + f9127d + i3 + ".log", arrayList);
        ArrayList<String> arrayList2 = new ArrayList<>();
        m159a(f9127d + i2 + ".log", arrayList2);
        m159a(f9127d + i3 + ".log", arrayList2);
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i5 = size > i ? size - i : 0; i5 < size; i5++) {
            arrayList3.add(arrayList.get(i5));
        }
        int size2 = arrayList2.size();
        int i6 = 0;
        if (size2 > i) {
            i6 = size2 - i;
        }
        while (i6 < size2) {
            arrayList3.add(arrayList2.get(i6));
            i6++;
        }
        return arrayList3;
    }

    /* renamed from: a */
    public final void m164a(C1449c c1449c) {
        C1694h.m3117b(c1449c, "fabric");
        f9126c = c1449c;
    }

    /* renamed from: a */
    public final void m163a(Exception exc) {
        C1694h.m3117b(exc, "e");
        m152c(this, "SILENTEXCEPTION " + exc.getMessage(), null, 2, null);
    }

    /* renamed from: a */
    public final void m162a(Exception exc, String str) {
        C1694h.m3117b(exc, "e");
        m152c(this, "EXCEPTION " + exc.getMessage(), null, 2, null);
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        C1694h.m3122a((Object) stringWriter2, "sw.toString()");
        for (String str2 : TextUtils.split(stringWriter2, "\n\t")) {
            m151d("EXCEPTIONSTACK " + str2, str);
        }
        if (f9126c != null) {
            Crashlytics.getInstance().core.logException(exc);
        }
    }

    /* renamed from: a */
    public final void m161a(String str) {
        C1694h.m3117b(str, "event");
        Answers.getInstance().logCustom(new CustomEvent(str));
        C3074a.f8976a.m227c(str);
    }

    /* renamed from: a */
    public final void m160a(String str, String str2) {
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        C1694h.m3117b(str2, "val");
        if (f9126c != null) {
            Crashlytics.setString(str, str2);
        }
    }

    /* renamed from: b */
    public final void m155b(String str, String str2) {
        C1694h.m3117b(str, "msg");
        m165a(3, str, str2);
    }

    /* renamed from: c */
    public final void m153c(String str, String str2) {
        C1694h.m3117b(str, "msg");
        m165a(4, str, str2);
    }

    /* renamed from: d */
    public final void m151d(String str, String str2) {
        C1694h.m3117b(str, "msg");
        m165a(6, str, str2);
    }
}
