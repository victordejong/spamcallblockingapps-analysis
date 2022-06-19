package com.klinker.android.send_message;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.provider.Telephony;
import android.util.Log;
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
import e.a.b.e.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedReceiver.class */
public abstract class MmsReceivedReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final ExecutorService f11243a = Executors.newSingleThreadExecutor();

    /* renamed from: com.klinker.android.send_message.MmsReceivedReceiver$a */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedReceiver$a.class */
    class RunnableC2688a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ String f11244b;

        /* renamed from: c */
        final /* synthetic */ Context f11245c;

        /* renamed from: d */
        final /* synthetic */ Intent f11246d;

        /* renamed from: e */
        final /* synthetic */ BroadcastReceiver.PendingResult f11247e;

        RunnableC2688a(String str, Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            MmsReceivedReceiver.this = r4;
            this.f11244b = str;
            this.f11245c = context;
            this.f11246d = intent;
            this.f11247e = pendingResult;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0167  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0191  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x01d2  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01e2  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x01fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v112, types: [com.klinker.android.send_message.MmsReceivedReceiver] */
        /* JADX WARN: Type inference failed for: r0v61, types: [android.net.Uri] */
        /* JADX WARN: Type inference failed for: r2v13, types: [android.net.Uri] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 534
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.klinker.android.send_message.MmsReceivedReceiver.RunnableC2688a.run():void");
        }
    }

    /* renamed from: com.klinker.android.send_message.MmsReceivedReceiver$b */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedReceiver$b.class */
    public static class AsyncTaskC2689b extends AbstractAsyncTaskC2690c {

        /* renamed from: e */
        private final t f11249e;

        AsyncTaskC2689b(Context context, h hVar, C0698p c0698p, t tVar) {
            super(context, c0698p, hVar);
            this.f11249e = tVar;
        }

        /* renamed from: d */
        public Void doInBackground(Void... voidArr) {
            byte[] r = this.f11249e.r();
            if (r != null) {
                Log.v("MmsReceivedReceiver", "sending ACK to MMSC: " + this.f11251b.m11376a());
                try {
                    a aVar = new a(18, r);
                    String m2030h = C2717j.m2030h(this.f11250a);
                    if (m2030h != null) {
                        aVar.c(new e(m2030h));
                    } else {
                        aVar.c(new e(""));
                    }
                    if (e.a.b.a.g()) {
                        m2135c(new k(this.f11250a, aVar).s(), this.f11253d);
                        return null;
                    }
                    m2136b(new k(this.f11250a, aVar).s());
                    return null;
                } catch (InvalidHeaderValueException | MmsException | IOException e) {
                    Log.e("MmsReceivedReceiver", "error", e);
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: com.klinker.android.send_message.MmsReceivedReceiver$c */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedReceiver$c.class */
    public static abstract class AbstractAsyncTaskC2690c extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        protected final Context f11250a;

        /* renamed from: b */
        protected final C0698p f11251b;

        /* renamed from: c */
        final h f11252c;

        /* renamed from: d */
        final String f11253d;

        AbstractAsyncTaskC2690c(Context context, C0698p c0698p, h hVar) {
            this.f11250a = context;
            this.f11251b = c0698p;
            this.f11252c = hVar;
            this.f11253d = new String(hVar.f());
        }

        /* renamed from: a */
        private byte[] m2137a(long j, byte[] bArr, String str) {
            if (bArr != null) {
                if (str == null) {
                    throw new IOException("Cannot establish route: mmscUrl is null");
                }
                if (n.p(this.f11250a)) {
                    return C0692d.m11390f(this.f11250a, j, str, bArr, 1, false, null, 0);
                }
                C2717j.m2037a(this.f11250a, str, this.f11251b.m11375b());
                return C0692d.m11390f(this.f11250a, j, str, bArr, 1, this.f11251b.m11373d(), this.f11251b.m11375b(), this.f11251b.m11374c());
            }
            throw new MmsException();
        }

        /* renamed from: b */
        byte[] m2136b(byte[] bArr) {
            return m2137a(-1L, bArr, this.f11251b.m11376a());
        }

        /* renamed from: c */
        byte[] m2135c(byte[] bArr, String str) {
            return m2137a(-1L, bArr, str);
        }
    }

    /* renamed from: com.klinker.android.send_message.MmsReceivedReceiver$d */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedReceiver$d.class */
    public static class C2691d {

        /* renamed from: a */
        String f11254a;

        /* renamed from: b */
        String f11255b;

        /* renamed from: c */
        int f11256c;
    }

    /* renamed from: com.klinker.android.send_message.MmsReceivedReceiver$e */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsReceivedReceiver$e.class */
    public static class AsyncTaskC2692e extends AbstractAsyncTaskC2690c {
        AsyncTaskC2692e(Context context, h hVar, C0698p c0698p) {
            super(context, c0698p, hVar);
        }

        /* renamed from: d */
        public Void doInBackground(Void... voidArr) {
            try {
                i iVar = new i(18, this.f11252c.i(), 129);
                if (e.a.b.a.g()) {
                    m2135c(new k(this.f11250a, iVar).s(), this.f11253d);
                } else {
                    m2136b(new k(this.f11250a, iVar).s());
                }
                return null;
            } catch (MmsException | IOException e) {
                Log.e("MmsReceivedReceiver", "error", e);
                return null;
            }
        }
    }

    /* renamed from: e */
    private static h m2143e(Context context, Intent intent) {
        return p.h(context).j((Uri) intent.getParcelableExtra("notification_ind_uri"));
    }

    /* renamed from: f */
    public List<AbstractAsyncTaskC2690c> m2142f(Context context, Intent intent, byte[] bArr) {
        if (bArr.length == 0) {
            Log.v("MmsReceivedReceiver", "MmsReceivedReceiver.sendNotification blank response");
            return null;
        } else if (m2144d() == null) {
            Log.v("MmsReceivedReceiver", "No MMSC information set, so no notification tasks will be able to complete");
            return null;
        } else {
            t h = new com.google.android.mms.c.n(bArr, new c.b(new c(context), (Bundle) null).m()).h();
            if (h == null || !(h instanceof t)) {
                Log.e("MmsReceivedReceiver", "MmsReceivedReceiver.sendNotification failed to parse pdu");
                return null;
            }
            try {
                h m2143e = m2143e(context, intent);
                C2691d m2144d = m2144d();
                C0698p c0698p = new C0698p(m2144d.f11254a, m2144d.f11255b, m2144d.f11256c);
                ArrayList arrayList = new ArrayList();
                arrayList.add(new AsyncTaskC2689b(context, m2143e, c0698p, h));
                arrayList.add(new AsyncTaskC2692e(context, m2143e, c0698p));
                return arrayList;
            } catch (MmsException e) {
                Log.e("MmsReceivedReceiver", "error", e);
                return null;
            }
        }
    }

    /* renamed from: g */
    public void m2141g(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 22) {
            int intExtra = intent.getIntExtra("android.telephony.extra.MMS_HTTP_STATUS", 0);
            if (intExtra != 404 && intExtra != 400) {
                return;
            }
            f.b(context, context.getContentResolver(), Telephony.Mms.CONTENT_URI, "m_type=? AND ct_l =?", new String[]{Integer.toString(130), intent.getStringExtra("location_url")});
        }
    }

    /* renamed from: d */
    public C2691d m2144d() {
        return null;
    }

    /* renamed from: h */
    public abstract void m2140h(Context context, String str);

    /* renamed from: i */
    public abstract void m2139i(Context context, Uri uri);

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Log.v("MmsReceivedReceiver", "MMS has finished downloading, persisting it to the database");
        String stringExtra = intent.getStringExtra("file_path");
        Log.v("MmsReceivedReceiver", stringExtra);
        new Thread(new RunnableC2688a(stringExtra, context, intent, goAsync())).start();
    }
}
