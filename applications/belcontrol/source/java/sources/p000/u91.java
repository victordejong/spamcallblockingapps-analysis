package p000;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import android.widget.Toast;
import com.kedlin.cca.core.CCAApplication;
import com.millennialmedia.NativeAd;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p000.k61;
import p000.r61;
import p000.v91;
/* renamed from: u91 */
/* loaded from: classes3-dex2jar.jar:u91.class */
public class u91 implements v91.AbstractC1692b {

    /* renamed from: a */
    public Activity f8295a;

    /* renamed from: b */
    public AlertDialog f8296b;

    /* renamed from: c */
    public int f8297c = 0;

    /* renamed from: d */
    public ScheduledExecutorService f8298d;

    /* renamed from: e */
    public AbstractC1686i f8299e;

    /* renamed from: u91$a */
    /* loaded from: classes3-dex2jar.jar:u91$a.class */
    public class RunnableC1676a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ v91 f8300a;

        /* renamed from: b */
        public final /* synthetic */ r61.EnumC1636b f8301b;

        /* renamed from: u91$a$a */
        /* loaded from: classes3-dex2jar.jar:u91$a$a.class */
        public class RunnableC1677a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ r61 f8303a;

            public RunnableC1677a(r61 r61Var) {
                RunnableC1676a.this = r4;
                this.f8303a = r61Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (u91.this.f8295a != null && !u91.this.f8295a.isFinishing() && !u91.this.f8295a.isDestroyed()) {
                    bc1.m5677a();
                }
                RunnableC1676a runnableC1676a = RunnableC1676a.this;
                u91.this.m404l(this.f8303a.f7866b, runnableC1676a.f8301b, runnableC1676a.f8300a);
            }
        }

        /* renamed from: u91$a$b */
        /* loaded from: classes3-dex2jar.jar:u91$a$b.class */
        public class RunnableC1678b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ k61.C1456a f8305a;

            public RunnableC1678b(k61.C1456a c1456a) {
                RunnableC1676a.this = r4;
                this.f8305a = c1456a;
            }

            @Override // java.lang.Runnable
            public void run() {
                r61.EnumC1636b enumC1636b = r61.EnumC1636b.PASSWORD_RECOVERY;
                RunnableC1676a runnableC1676a = RunnableC1676a.this;
                if (enumC1636b != runnableC1676a.f8301b) {
                    runnableC1676a.f8300a.mo349m();
                }
                if (u91.this.f8295a != null && !u91.this.f8295a.isFinishing() && !u91.this.f8295a.isDestroyed()) {
                    bc1.m5677a();
                }
                RunnableC1676a runnableC1676a2 = RunnableC1676a.this;
                u91.this.m405k(runnableC1676a2.f8301b, this.f8305a.m1434b(), null, RunnableC1676a.this.f8300a);
            }
        }

        public RunnableC1676a(v91 v91Var, r61.EnumC1636b enumC1636b) {
            u91.this = r4;
            this.f8300a = v91Var;
            this.f8301b = enumC1636b;
        }

        @Override // java.lang.Runnable
        public void run() {
            r61 r61Var;
            RunnableC1677a runnableC1677a;
            if (this.f8300a.m356f() == v91.EnumC1691a.EVERYCALLER) {
                r91 r91Var = (r91) this.f8300a;
                r61Var = new r61(r91Var.m661o(), r91Var.m660p(), this.f8301b);
            } else {
                r61Var = new r61(this.f8300a.m356f().m346b(), this.f8300a.m357e(), this.f8300a.mo358d(), this.f8301b);
            }
            try {
                k61.m1460b(r61Var);
                runnableC1677a = new RunnableC1677a(r61Var);
            } catch (k61.C1456a e) {
                runnableC1677a = new RunnableC1678b(e);
            }
            new Handler(Looper.getMainLooper()).post(runnableC1677a);
        }
    }

    /* renamed from: u91$b */
    /* loaded from: classes3-dex2jar.jar:u91$b.class */
    public static final class DialogInterface$OnClickListenerC1679b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f8307a;

        public DialogInterface$OnClickListenerC1679b(Activity activity) {
            this.f8307a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            CCAApplication cCAApplication = (CCAApplication) lm1.m1292a();
            if (cCAApplication == null) {
                return;
            }
            cCAApplication.m4412j();
            Toast.makeText(this.f8307a, 2131822377, 1).show();
        }
    }

    /* renamed from: u91$c */
    /* loaded from: classes3-dex2jar.jar:u91$c.class */
    public class DialogInterface$OnClickListenerC1680c implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC1680c() {
            u91.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            v91.m348n();
            if (u91.this.f8295a == null || u91.this.f8295a.isFinishing() || u91.this.f8295a.isDestroyed()) {
                return;
            }
            bc1.m5677a();
        }
    }

    /* renamed from: u91$d */
    /* loaded from: classes3-dex2jar.jar:u91$d.class */
    public class DialogInterface$OnCancelListenerC1681d implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC1681d(u91 u91Var) {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            v91.m348n();
        }
    }

    /* renamed from: u91$e */
    /* loaded from: classes3-dex2jar.jar:u91$e.class */
    public class DialogInterface$OnClickListenerC1682e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ v91 f8309a;

        public DialogInterface$OnClickListenerC1682e(v91 v91Var) {
            u91.this = r4;
            this.f8309a = v91Var;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            u91.this.m408h(this.f8309a, r61.EnumC1636b.REASSIGN);
        }
    }

    /* renamed from: u91$f */
    /* loaded from: classes3-dex2jar.jar:u91$f.class */
    public class DialogInterface$OnClickListenerC1683f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ v91 f8311a;

        /* renamed from: b */
        public final /* synthetic */ String f8312b;

        public DialogInterface$OnClickListenerC1683f(v91 v91Var, String str) {
            u91.this = r4;
            this.f8311a = v91Var;
            this.f8312b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ((r91) this.f8311a).m659q(this.f8312b);
            ((r91) this.f8311a).m658r("");
            u91.this.m408h(this.f8311a, r61.EnumC1636b.PASSWORD_RECOVERY);
        }
    }

    /* renamed from: u91$g */
    /* loaded from: classes3-dex2jar.jar:u91$g.class */
    public class DialogInterface$OnClickListenerC1684g implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC1684g() {
            u91.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            u91.this.f8297c = 0;
        }
    }

    /* renamed from: u91$h */
    /* loaded from: classes3-dex2jar.jar:u91$h.class */
    public static /* synthetic */ class C1685h {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8315a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f8316b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0060 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0064 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0068 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006c -> B:35:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0070 -> B:31:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0074 -> B:27:0x0054). Please submit an issue!!! */
        static {
            int[] iArr = new int[v91.EnumC1691a.values().length];
            f8316b = iArr;
            try {
                iArr[v91.EnumC1691a.GOOGLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8316b[v91.EnumC1691a.FACEBOOK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8316b[v91.EnumC1691a.EVERYCALLER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[r61.EnumC1636b.values().length];
            f8315a = iArr2;
            try {
                iArr2[r61.EnumC1636b.LOGIN.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f8315a[r61.EnumC1636b.REGISTER.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f8315a[r61.EnumC1636b.PASSWORD_RECOVERY.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f8315a[r61.EnumC1636b.REASSIGN.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: u91$i */
    /* loaded from: classes3-dex2jar.jar:u91$i.class */
    public interface AbstractC1686i {
        /* renamed from: a */
        void mo403a();

        /* renamed from: b */
        void mo402b();
    }

    public u91(Activity activity, ScheduledExecutorService scheduledExecutorService, AbstractC1686i abstractC1686i) {
        this.f8298d = null;
        this.f8299e = null;
        this.f8298d = scheduledExecutorService;
        this.f8295a = activity;
        this.f8299e = abstractC1686i;
    }

    /* renamed from: i */
    public static void m407i(Activity activity) {
        m406j(activity, 2131822198, 2131821223, new DialogInterface$OnClickListenerC1679b(activity));
    }

    /* renamed from: j */
    public static void m406j(Activity activity, int i, int i2, DialogInterface.OnClickListener onClickListener) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        AlertDialog.Builder m1081i = oe1.m1081i(activity);
        m1081i.setTitle(i).setMessage(i2).setNegativeButton(2131820976, (DialogInterface.OnClickListener) null);
        m1081i.setPositiveButton(2131822208, onClickListener);
        m1081i.create().show();
    }

    @Override // p000.v91.AbstractC1692b
    /* renamed from: a */
    public void mo345a(v91 v91Var) {
        m408h(v91Var, r61.EnumC1636b.LOGIN);
    }

    @Override // p000.v91.AbstractC1692b
    /* renamed from: b */
    public void mo344b(v91 v91Var, boolean z) {
        Activity activity = this.f8295a;
        if (activity == null || activity.isFinishing() || this.f8295a.isDestroyed()) {
            return;
        }
        if (z) {
            AlertDialog.Builder negativeButton = oe1.m1081i(this.f8295a).setNegativeButton(2131821909, (DialogInterface.OnClickListener) null);
            negativeButton.setTitle(2131821557);
            negativeButton.setMessage(2131821556);
            negativeButton.create().show();
        }
        AbstractC1686i abstractC1686i = this.f8299e;
        if (abstractC1686i == null) {
            return;
        }
        abstractC1686i.mo403a();
    }

    @Override // p000.v91.AbstractC1692b
    /* renamed from: c */
    public void mo343c(v91 v91Var) {
        m408h(v91Var, r61.EnumC1636b.REGISTER);
    }

    @Override // p000.v91.AbstractC1692b
    /* renamed from: d */
    public void mo342d(v91 v91Var) {
    }

    /* renamed from: g */
    public void m409g(AlertDialog.Builder builder, v91 v91Var) {
        AlertDialog.Builder builder2 = builder;
        if (builder == null) {
            builder2 = oe1.m1081i(this.f8295a);
        }
        String charSequence = ((TextView) this.f8295a.findViewById(2131362739)).getText().toString();
        if (charSequence.isEmpty()) {
            return;
        }
        builder2.setNegativeButton(2131820976, new DialogInterface$OnClickListenerC1684g()).setPositiveButton(2131821909, new DialogInterface$OnClickListenerC1683f(v91Var, charSequence));
        builder2.setTitle(2131821550);
        builder2.setMessage(this.f8295a.getString(2131821549, new Object[]{charSequence}));
        AlertDialog create = builder2.create();
        this.f8296b = create;
        create.show();
    }

    /* renamed from: h */
    public void m408h(v91 v91Var, r61.EnumC1636b enumC1636b) {
        if (this.f8298d == null) {
            j91.m1505k(this, "You should provide executor service");
            return;
        }
        bc1.m5673e(2131821551);
        this.f8298d.schedule(new RunnableC1676a(v91Var, enumC1636b), 0L, TimeUnit.SECONDS);
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[RETURN, SYNTHETIC] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m405k(p000.r61.EnumC1636b r9, int r10, p000.r61.C1637c r11, p000.v91 r12) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.u91.m405k(r61$b, int, r61$c, v91):void");
    }

    /* renamed from: l */
    public void m404l(r61.C1637c c1637c, r61.EnumC1636b enumC1636b, v91 v91Var) {
        int i = C1685h.f8315a[enumC1636b.ordinal()];
        if (i == 1 || i == 2) {
            if (c1637c != null) {
                m405k(enumC1636b, 409, c1637c, v91Var);
                return;
            }
        } else if (i == 3) {
            m405k(enumC1636b, NativeAd.NativeErrorStatus.EXPIRED, c1637c, v91Var);
            return;
        } else if (i != 4) {
            return;
        } else {
            if (c1637c != null) {
                m405k(enumC1636b, 409, c1637c, v91Var);
                return;
            }
        }
        r71.m718d(String.valueOf(v91Var.m356f().m346b()));
        Toast.makeText(this.f8295a, 2131821077, 1).show();
        AbstractC1686i abstractC1686i = this.f8299e;
        if (abstractC1686i != null) {
            abstractC1686i.mo402b();
        }
    }
}
