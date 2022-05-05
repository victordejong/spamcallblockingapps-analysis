package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import java.io.BufferedInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import p081h.p203i.p316b.p320d.C9362b;
import p459j.p460a.p471b1.p473b.C11510a;
/* renamed from: j.a.c0.h.v */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/v.class */
public class C12219v {
    /* renamed from: a */
    public static File m6732a(Context context) {
        return C11510a.m9436d(context);
    }

    /* renamed from: a */
    public static File m6729a(String str, boolean z) {
        File file = new File(m6732a(MyApplication.m29013o()), str);
        if (z && file.exists()) {
            file.delete();
        }
        return file;
    }

    /* renamed from: a */
    public static StackTraceElement m6734a(int i) {
        if (i >= 0) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace == null || stackTrace.length < i + 2) {
                return null;
            }
            for (int i2 = 0; i2 < stackTrace.length - 1; i2++) {
                if ("getCaller".equals(stackTrace[i2].getMethodName())) {
                    return stackTrace[i2 + i + 1];
                }
            }
            return null;
        }
        throw new IllegalArgumentException("depth cannot be negative");
    }

    /* renamed from: a */
    public static void m6733a(long j, SmsMessage[] smsMessageArr, String str) {
        try {
            File a = m6729a("smsdump-" + Long.toString(j), true);
            if (a != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(a));
                int length = TextUtils.isEmpty(str) ? 0 : str.length();
                dataOutputStream.writeInt(length);
                if (length > 0) {
                    dataOutputStream.writeUTF(str);
                }
                dataOutputStream.writeInt(smsMessageArr.length);
                for (SmsMessage smsMessage : smsMessageArr) {
                    byte[] pdu = smsMessage.getPdu();
                    dataOutputStream.writeInt(pdu.length);
                    dataOutputStream.write(pdu, 0, pdu.length);
                }
                dataOutputStream.flush();
                dataOutputStream.close();
                m6731a(a);
            }
        } catch (IOException e) {
            C12153d0.m6986b("MessagingApp", "dumpSms: " + e, e);
        }
    }

    /* renamed from: a */
    public static void m6731a(File file) {
        if (file.exists()) {
            file.setReadable(true, false);
        }
    }

    /* renamed from: a */
    public static boolean m6735a() {
        AbstractC12170i.m6941a().mo6916a("bugle_debugging", false);
        return false;
    }

    /* renamed from: a */
    public static byte[] m6730a(String str) {
        byte[] bArr = null;
        bArr = null;
        try {
            File a = m6729a(str, false);
            if (a != null) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(a));
                byte[] a2 = C9362b.m15366a(bufferedInputStream);
                if (a2 == null || a2.length < 1) {
                    C12153d0.m6987b("MessagingApp", "receiveFromDumpFile: empty data");
                }
                bArr = a2;
                bufferedInputStream.close();
                bArr = a2;
            }
        } catch (IOException e) {
            C12153d0.m6986b("MessagingApp", "receiveFromDumpFile: " + e, e);
        }
        return bArr;
    }
}
