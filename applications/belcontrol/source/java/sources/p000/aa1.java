package p000;

import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import com.mopub.common.Constants;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.m91;
/* renamed from: aa1 */
/* loaded from: classes3-dex2jar.jar:aa1.class */
public class aa1 {

    /* renamed from: l */
    public static aa1 f219l;

    /* renamed from: a */
    public Handler f221a;

    /* renamed from: b */
    public C0026b f222b;

    /* renamed from: c */
    public String f223c;

    /* renamed from: d */
    public ScheduledExecutorService f224d;

    /* renamed from: e */
    public ScheduledFuture<?> f225e;

    /* renamed from: f */
    public long f226f = 0;

    /* renamed from: g */
    public long f227g = 10;

    /* renamed from: h */
    public static final String f215h = aa1.class.getName() + ".ACTION_CONTACTS_UPDATED";

    /* renamed from: i */
    public static final String f216i = aa1.class.getName() + ".EXTRA_NEW_CONTACTS";

    /* renamed from: j */
    public static final String f217j = aa1.class.getName() + ".EXTRA_UPDATED_CONTACTS";

    /* renamed from: k */
    public static final String f218k = aa1.class.getName() + ".EXTRA_DELETED_CONTACTS";

    /* renamed from: m */
    public static boolean f220m = false;

    /* renamed from: aa1$a */
    /* loaded from: classes3-dex2jar.jar:aa1$a.class */
    public class RunnableC0025a implements Runnable {
        public RunnableC0025a() {
            aa1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            aa1.this.m7299m();
            fa1.m1840j().getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, aa1.this.f222b);
        }
    }

    /* renamed from: aa1$b */
    /* loaded from: classes3-dex2jar.jar:aa1$b.class */
    public static class C0026b extends ContentObserver {

        /* renamed from: aa1$b$a */
        /* loaded from: classes3-dex2jar.jar:aa1$b$a.class */
        public class RunnableC0027a implements Runnable {
            public RunnableC0027a(C0026b c0026b) {
            }

            @Override // java.lang.Runnable
            public void run() {
                aa1.m7302j().m7299m();
            }
        }

        public C0026b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            if (aa1.m7302j().f225e != null) {
                aa1.f219l.f225e.cancel(false);
            }
            aa1.f219l.f225e = aa1.f219l.f224d.schedule(new RunnableC0027a(this), 0L, TimeUnit.MILLISECONDS);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            onChange(z);
        }
    }

    public aa1() {
        if (!ta1.GROUP_CONTACTS.m531d()) {
            return;
        }
        this.f223c = b81.m5752c();
        this.f224d = Executors.newSingleThreadScheduledExecutor();
        this.f221a = new Handler();
        this.f222b = new C0026b(this.f221a);
        this.f225e = this.f224d.schedule(new RunnableC0025a(), 1000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: h */
    public static void m7304h(q81 q81Var) {
        Uri m870b0;
        if (q81Var == null || (m870b0 = q81Var.m870b0()) == null) {
            return;
        }
        Drawable drawable = null;
        if (Constants.VAST_TRACKER_CONTENT.equals(m870b0.getScheme())) {
            try {
                drawable = Drawable.createFromStream(fa1.m1840j().getContentResolver().openInputStream(m870b0), null);
            } catch (Exception e) {
                q81Var.m883O();
            }
        } else {
            drawable = Drawable.createFromPath(m870b0.toString());
        }
        if (drawable != null) {
            return;
        }
        q81Var.m883O();
    }

    /* renamed from: i */
    public static void m7303i() {
        f219l = null;
        m7302j();
    }

    /* renamed from: j */
    public static aa1 m7302j() {
        if (f219l == null) {
            f219l = new aa1();
        }
        return f219l;
    }

    /* renamed from: k */
    public static boolean m7301k() {
        return f220m;
    }

    /* renamed from: l */
    public static void m7300l() {
        Bundle bundle = new Bundle();
        bundle.putInt(f218k, 1);
        m91.m1281a(m7302j(), m91.EnumC1470c.DATA_UPDATE, bundle);
    }

    /* renamed from: n */
    public static void m7298n() {
        m7302j();
    }

    /* renamed from: p */
    public static void m7296p() {
        aa1 aa1Var = f219l;
        if (aa1Var == null) {
            return;
        }
        aa1Var.m7297o();
        f219l = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x07b0 A[LOOP:0: B:19:0x00ab->B:155:0x07b0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x061b A[EDGE_INSN: B:160:0x061b->B:128:0x061b ?: BREAK  , SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7299m() {
        /*
            Method dump skipped, instructions count: 2005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.aa1.m7299m():void");
    }

    /* renamed from: o */
    public final void m7297o() {
        if (this.f222b != null) {
            fa1.m1840j().getContentResolver().unregisterContentObserver(this.f222b);
        }
        ScheduledExecutorService scheduledExecutorService = this.f224d;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }
}
