package p459j.p460a.p474c0.p488f;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import gogolook.callgogolook2.messaging.datamodel.MmsFileProvider;
import gogolook.callgogolook2.messaging.receiver.SendStatusReceiver;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import p065f.p066a.p068b.p069a.C4258k;
import p459j.p460a.p474c0.p480d.C11687a;
import p459j.p460a.p474c0.p480d.p481d.C11690a;
import p459j.p460a.p474c0.p480d.p481d.C11694e;
import p459j.p460a.p474c0.p480d.p481d.C11695f;
import p459j.p460a.p474c0.p480d.p481d.C11698i;
import p459j.p460a.p474c0.p480d.p481d.C11700k;
import p459j.p460a.p474c0.p480d.p481d.C11707n;
import p459j.p460a.p474c0.p480d.p481d.C11713t;
import p459j.p460a.p474c0.p480d.p481d.C11714u;
import p459j.p460a.p474c0.p480d.p481d.C11715v;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.f.h */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/h.class */
public class C11831h {
    /* renamed from: a */
    public static int m8170a(int i, int i2) {
        C12151d.m7003a(i == -1);
        switch (i) {
            case 1:
            case 2:
            case 7:
            case 8:
                return 2;
            case 3:
            case 5:
                return 1;
            case 4:
                return i2 == 404 ? 3 : 1;
            case 6:
            default:
                return 2;
        }
    }

    /* renamed from: a */
    public static Uri m8164a(Context context, C11695f fVar, int i) throws C11830g {
        Throwable th;
        IOException e;
        OutOfMemoryError e2;
        FileOutputStream fileOutputStream;
        Uri a = MmsFileProvider.m27763a();
        File b = MmsFileProvider.m27760b(a);
        FileOutputStream fileOutputStream2 = null;
        FileOutputStream fileOutputStream3 = null;
        FileOutputStream fileOutputStream4 = null;
        try {
            try {
                b.getParentFile().mkdirs();
                fileOutputStream = new FileOutputStream(b);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            e = e3;
        } catch (OutOfMemoryError e4) {
            e2 = e4;
        }
        try {
            byte[] a2 = new C11700k(context, fVar).m8564a();
            if (a2 == null) {
                throw new C11830g(3, "Failed to compose PDU");
            } else if (a2.length <= C11828f.m8193a(i).m8186g()) {
                fileOutputStream.write(a2);
                try {
                    fileOutputStream.close();
                } catch (IOException e5) {
                }
                return a;
            } else {
                throw new C11830g(3, 10000);
            }
        } catch (IOException e6) {
            e = e6;
            fileOutputStream3 = fileOutputStream;
            if (b != null) {
                b.delete();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot create temporary file ");
            sb.append(b.getAbsolutePath());
            C12153d0.m6986b("MessagingApp", sb.toString(), e);
            throw new C11830g(1, "Cannot create raw mms file");
        } catch (OutOfMemoryError e7) {
            e2 = e7;
            fileOutputStream2 = fileOutputStream;
            if (b != null) {
                b.delete();
            }
            C12153d0.m6986b("MessagingApp", "Out of memory in composing PDU", e2);
            throw new C11830g(2, 10000);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream4 = fileOutputStream;
            if (fileOutputStream4 != null) {
                try {
                    fileOutputStream4.close();
                } catch (IOException e8) {
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static C11713t m8163a(byte[] bArr, int i) {
        if (bArr != null) {
            C11695f a = new C11707n(bArr, C11828f.m8193a(i).m8176q()).m8520a();
            if (a == null) {
                C12153d0.m6987b("MessagingApp", "MmsSender: downloaded pdu could not be parsed (invalid)");
            } else if (a instanceof C11713t) {
                return (C11713t) a;
            } else {
                C12153d0.m6987b("MessagingApp", "MmsSender: downloaded pdu not RetrieveConf: " + a.getClass().getName());
            }
        }
        C12153d0.m6987b("MessagingApp", "MmsSender: downloaded pdu is empty");
        return null;
    }

    /* renamed from: a */
    public static void m8169a(Context context, int i, Uri uri, C11715v vVar, Bundle bundle) throws C11830g {
        m8168a(context, i, uri, null, vVar, true, bundle);
    }

    /* renamed from: a */
    public static void m8168a(Context context, int i, Uri uri, String str, C11695f fVar, boolean z, Bundle bundle) throws C11830g {
        Uri a = m8164a(context, fVar, i);
        Intent intent = new Intent("gogolook.callgogolook2.messaging.receiver.SendStatusReceiver.MMS_SENT", uri, context, SendStatusReceiver.class);
        intent.putExtra("content_uri", a);
        intent.putExtra("response_important", z);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        C4258k.m29207a(i, context, a, str, PendingIntent.getBroadcast(context, 0, intent, 134217728));
    }

    /* renamed from: a */
    public static void m8167a(Context context, int i, String str, Bundle bundle) throws C11830g, C11687a {
        Uri parse = Uri.parse(str);
        Uri a = MmsFileProvider.m27763a();
        Intent intent = new Intent("gogolook.callgogolook2.messaging.receiver.SendStatusReceiver.MMS_DOWNLOADED", parse, context, SendStatusReceiver.class);
        intent.putExtra("content_uri", a);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        C4258k.m29206a(i, context, str, a, PendingIntent.getBroadcast(context, 0, intent, 134217728));
    }

    /* renamed from: a */
    public static void m8166a(Context context, int i, byte[] bArr, String str) throws C11830g, C11687a {
        String a = AbstractC12181l0.m6895b(i).m6897a(true);
        C11690a aVar = new C11690a(18, bArr);
        aVar.m8582a(new C11694e(a));
        Uri parse = Uri.parse(str);
        if (!C11828f.m8193a(i).m8182k()) {
            str = null;
        }
        m8168a(context, i, parse, str, aVar, false, null);
    }

    /* renamed from: a */
    public static void m8165a(Context context, int i, byte[] bArr, String str, int i2) throws C11830g, C11687a {
        C11698i iVar = new C11698i(18, bArr, i2);
        Uri parse = Uri.parse(str);
        if (!C11828f.m8193a(i).m8182k()) {
            str = null;
        }
        m8168a(context, i, parse, str, iVar, false, null);
    }

    /* renamed from: b */
    public static C11714u m8162b(byte[] bArr, int i) {
        if (bArr == null) {
            return null;
        }
        C11695f a = new C11707n(bArr, C11828f.m8193a(i).m8176q()).m8520a();
        if (a == null) {
            C12153d0.m6987b("MessagingApp", "MmsSender: send invalid response");
            return null;
        } else if (a instanceof C11714u) {
            return (C11714u) a;
        } else {
            C12153d0.m6987b("MessagingApp", "MmsSender: send response not SendConf");
            return null;
        }
    }
}
