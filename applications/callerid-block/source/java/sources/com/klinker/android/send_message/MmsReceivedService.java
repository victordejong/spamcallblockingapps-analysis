package com.klinker.android.send_message;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Telephony;
import android.util.Log;
import com.android.mms.transaction.C0690c;
import com.android.mms.transaction.C0692d;
import com.android.mms.transaction.C0698p;
import com.android.mms.transaction.n;
import com.google.android.mms.InvalidHeaderValueException;
import com.google.android.mms.MmsException;
import com.google.android.mms.c.a;
import com.google.android.mms.c.e;
import com.google.android.mms.c.h;
import com.google.android.mms.c.i;
import com.google.android.mms.c.k;
import com.google.android.mms.c.p;
import com.google.android.mms.c.t;
import com.google.android.mms.e.f;
import com.klinker.android.send_message.C2717j;
import e.a.b.e.b;
import e.a.b.e.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedService.class */
public class MmsReceivedService extends IntentService {

    /* renamed from: com.klinker.android.send_message.MmsReceivedService$a */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedService$a.class */
    public static class C2693a extends AbstractC2694b {

        /* renamed from: e */
        private final t f11257e;

        C2693a(Context context, h hVar, C0698p c0698p, t tVar) {
            super(context, c0698p, hVar);
            this.f11257e = tVar;
        }

        @Override // com.klinker.android.send_message.MmsReceivedService.AbstractC2694b
        /* renamed from: b */
        public void mo2124b() {
            byte[] r = this.f11257e.r();
            if (r != null) {
                try {
                    a aVar = new a(18, r);
                    aVar.c(new e(C2717j.m2030h(this.f11258a)));
                    if (e.a.b.a.g()) {
                        m2126e(new k(this.f11258a, aVar).s(), this.f11261d);
                    } else {
                        m2127d(new k(this.f11258a, aVar).s());
                    }
                } catch (MmsException | InvalidHeaderValueException e) {
                    e.d.a.a.a.c("MmsReceivedService", "error", e);
                }
            }
        }
    }

    /* renamed from: com.klinker.android.send_message.MmsReceivedService$b */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedService$b.class */
    public static abstract class AbstractC2694b {

        /* renamed from: a */
        protected final Context f11258a;

        /* renamed from: b */
        private final C0698p f11259b;

        /* renamed from: c */
        final h f11260c;

        /* renamed from: d */
        final String f11261d;

        /* renamed from: com.klinker.android.send_message.MmsReceivedService$b$a */
        /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedService$b$a.class */
        public class C2695a implements C2717j.AbstractC2718a<byte[]> {

            /* renamed from: a */
            final /* synthetic */ long f11262a;

            /* renamed from: b */
            final /* synthetic */ String f11263b;

            /* renamed from: c */
            final /* synthetic */ byte[] f11264c;

            C2695a(long j, String str, byte[] bArr) {
                AbstractC2694b.this = r5;
                this.f11262a = j;
                this.f11263b = str;
                this.f11264c = bArr;
            }

            /* renamed from: a */
            public byte[] run() {
                AbstractC2694b abstractC2694b = AbstractC2694b.this;
                return C0692d.m11390f(abstractC2694b.f11258a, this.f11262a, this.f11263b, this.f11264c, 1, abstractC2694b.f11259b.m11373d(), AbstractC2694b.this.f11259b.m11375b(), AbstractC2694b.this.f11259b.m11374c());
            }
        }

        AbstractC2694b(Context context, C0698p c0698p, h hVar) {
            this.f11258a = context;
            this.f11259b = c0698p;
            this.f11260c = hVar;
            this.f11261d = new String(hVar.f());
        }

        /* renamed from: c */
        private byte[] m2128c(long j, byte[] bArr, String str) {
            if (bArr != null) {
                if (str == null) {
                    throw new IOException("Cannot establish route: mmscUrl is null");
                }
                return n.p(this.f11258a) ? C0692d.m11390f(this.f11258a, j, str, bArr, 1, false, null, 0) : (byte[]) C2717j.m2036b(this.f11258a, str, this.f11259b.m11375b(), new C2695a(j, str, bArr));
            }
            throw new MmsException();
        }

        /* renamed from: b */
        public abstract void mo2124b();

        /* renamed from: d */
        byte[] m2127d(byte[] bArr) {
            return m2128c(-1L, bArr, this.f11259b.m11376a());
        }

        /* renamed from: e */
        byte[] m2126e(byte[] bArr, String str) {
            return m2128c(-1L, bArr, str);
        }
    }

    /* renamed from: com.klinker.android.send_message.MmsReceivedService$c */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedService$c.class */
    public static class C2696c extends AbstractC2694b {
        C2696c(Context context, h hVar, C0698p c0698p) {
            super(context, c0698p, hVar);
        }

        @Override // com.klinker.android.send_message.MmsReceivedService.AbstractC2694b
        /* renamed from: b */
        public void mo2124b() {
            try {
                i iVar = new i(18, this.f11260c.i(), 129);
                if (e.a.b.a.g()) {
                    m2126e(new k(this.f11258a, iVar).s(), this.f11261d);
                } else {
                    m2127d(new k(this.f11258a, iVar).s());
                }
            } catch (MmsException e) {
                e.d.a.a.a.c("MmsReceivedService", "error", e);
            }
        }
    }

    public MmsReceivedService() {
        super("MmsReceivedService");
    }

    /* renamed from: a */
    private static void m2133a(AbstractC2694b abstractC2694b) {
        if (abstractC2694b == null) {
            return;
        }
        try {
            abstractC2694b.mo2124b();
        } catch (IOException e) {
            e.d.a.a.a.c("MmsReceivedService", "MMS send received notification, io exception", e);
            throw e;
        }
    }

    /* renamed from: b */
    private static h m2132b(Context context, Intent intent) {
        return p.h(context).j((Uri) intent.getParcelableExtra("notification_ind_uri"));
    }

    /* renamed from: c */
    private static AbstractC2694b m2131c(Context context, Intent intent, byte[] bArr) {
        if (bArr.length == 0) {
            return null;
        }
        t h = new com.google.android.mms.c.n(bArr, new c.b(new c(context), (Bundle) null).m()).h();
        if (h == null || !(h instanceof t)) {
            Log.e("MmsReceivedService", "MmsReceivedReceiver.sendNotification failed to parse pdu");
            return null;
        }
        try {
            h m2132b = m2132b(context, intent);
            C0698p c0698p = new C0698p(context, null);
            return intent.getBooleanExtra("trigger_push", false) ? new C2696c(context, m2132b, c0698p) : new C2693a(context, m2132b, c0698p, h);
        } catch (MmsException e) {
            e.d.a.a.a.c("MmsReceivedService", "error", e);
            return null;
        }
    }

    /* renamed from: d */
    private static void m2130d(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT < 19) {
            return;
        }
        int intExtra = intent.getIntExtra("android.telephony.extra.MMS_HTTP_STATUS", 0);
        if (intExtra != 404 && intExtra != 400) {
            return;
        }
        f.b(context, context.getContentResolver(), Telephony.Mms.CONTENT_URI, "m_type=? AND ct_l =?", new String[]{Integer.toString(130), intent.getStringExtra("location_url")});
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Throwable th;
        IOException e;
        FileNotFoundException e2;
        FileInputStream fileInputStream;
        IOException e3;
        File file;
        int length;
        e.d.a.a.a.k("MmsReceivedService", "MMS has finished downloading, persisting it to the database");
        String stringExtra = intent.getStringExtra("file_path");
        e.d.a.a.a.k("MmsReceivedService", stringExtra);
        FileInputStream fileInputStream2 = null;
        try {
            try {
                file = new File(stringExtra);
                length = (int) file.length();
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e4) {
            e2 = e4;
            fileInputStream = null;
        } catch (IOException e5) {
            e3 = e5;
            fileInputStream = null;
        }
        try {
            byte[] bArr = new byte[length];
            fileInputStream.read(bArr, 0, length);
            m2133a(m2131c(this, intent, bArr));
            b.q(this, bArr, new c.b(new c(this), (Bundle) null), intent.getStringExtra("location_url"), C2717j.m2031g(), (String) null);
            e.d.a.a.a.k("MmsReceivedService", "response saved successfully");
            StringBuilder sb = new StringBuilder();
            sb.append("response length: ");
            sb.append(length);
            e.d.a.a.a.k("MmsReceivedService", sb.toString());
            file.delete();
            try {
                fileInputStream.close();
                fileInputStream2 = sb;
            } catch (IOException e6) {
                e = e6;
                e.d.a.a.a.c("MmsReceivedService", "MMS received, io exception", e);
                m2130d(this, intent);
                C0690c.m11400b(intent.getStringExtra("location_url"));
            }
        } catch (FileNotFoundException e7) {
            e2 = e7;
            FileInputStream fileInputStream3 = fileInputStream;
            e.d.a.a.a.c("MmsReceivedService", "MMS received, file not found exception", e2);
            fileInputStream2 = fileInputStream3;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                    fileInputStream2 = fileInputStream3;
                } catch (IOException e8) {
                    e = e8;
                    e.d.a.a.a.c("MmsReceivedService", "MMS received, io exception", e);
                    m2130d(this, intent);
                    C0690c.m11400b(intent.getStringExtra("location_url"));
                }
            }
            m2130d(this, intent);
            C0690c.m11400b(intent.getStringExtra("location_url"));
        } catch (IOException e9) {
            e3 = e9;
            FileInputStream fileInputStream4 = fileInputStream;
            e.d.a.a.a.c("MmsReceivedService", "MMS received, io exception", e3);
            fileInputStream2 = fileInputStream4;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                    fileInputStream2 = fileInputStream4;
                } catch (IOException e10) {
                    e = e10;
                    e.d.a.a.a.c("MmsReceivedService", "MMS received, io exception", e);
                    m2130d(this, intent);
                    C0690c.m11400b(intent.getStringExtra("location_url"));
                }
            }
            m2130d(this, intent);
            C0690c.m11400b(intent.getStringExtra("location_url"));
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e11) {
                    e.d.a.a.a.c("MmsReceivedService", "MMS received, io exception", e11);
                }
            }
            m2130d(this, intent);
            C0690c.m11400b(intent.getStringExtra("location_url"));
            throw th;
        }
        m2130d(this, intent);
        C0690c.m11400b(intent.getStringExtra("location_url"));
    }
}
