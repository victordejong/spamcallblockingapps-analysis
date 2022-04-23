package p459j.p460a.p596x.p598l;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.aotter.net.trek.ads.view.controller.AdViewController;
import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p204a.p224e.p226b.C6711b;
import p081h.p203i.p204a.p224e.p226b.C6712c;
import p081h.p203i.p204a.p224e.p226b.C6713d;
import p459j.p460a.p564s.C13405a0;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p593y4.C14321a;
import p459j.p460a.p582w0.p593y4.C14322b;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J \u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\bH\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/intro/registration/GoogleAuthHelper;", "Lgogolook/callgogolook2/intro/registration/RegistrationHelper;", "view", "Lgogolook/callgogolook2/intro/registration/IGoogleLoginView;", "(Lgogolook/callgogolook2/intro/registration/IGoogleLoginView;)V", "gAccount", "Lgogolook/callgogolook2/intro/registration/AndroidAccount;", "retryTime", "", "handleActivityResult", "", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "handleAuthException", "", "throwable", "", "handleAuthResult", "context", "Landroid/content/Context;", "authData", "Lgogolook/callgogolook2/intro/registration/OAuthData;", "initializeAuthData", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.x.l.c */
/* loaded from: classes2-dex2jar.jar:j/a/x/l/c.class */
public final class C14409c extends AbstractC14423k {

    /* renamed from: c */
    public C14407a f32246c;

    /* renamed from: d */
    public int f32247d;

    /* renamed from: e */
    public final AbstractC14417e f32248e;

    /* renamed from: j.a.x.l.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/x/l/c$a.class */
    public static final class C14410a {
        public C14410a() {
        }

        public /* synthetic */ C14410a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.x.l.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/x/l/c$b.class */
    public static final class DialogInterface$OnClickListenerC14411b implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f32250b;

        public DialogInterface$OnClickListenerC14411b(List list) {
            this.f32250b = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i >= 0 && i < this.f32250b.size()) {
                C14409c.this.f32246c = (C14407a) this.f32250b.get(i);
                C14409c.this.mo1372a();
            }
        }
    }

    /* renamed from: j.a.x.l.c$c */
    /* loaded from: classes2-dex2jar.jar:j/a/x/l/c$c.class */
    public static final class DialogInterface$OnClickListenerC14412c implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Intent f32252b;

        public DialogInterface$OnClickListenerC14412c(Intent intent) {
            this.f32252b = intent;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                C14409c.this.f32248e.startActivityForResult(this.f32252b, AdViewController.f1365a);
            }
        }
    }

    /* renamed from: j.a.x.l.c$d */
    /* loaded from: classes2-dex2jar.jar:j/a/x/l/c$d.class */
    public static final class DialogInterface$OnClickListenerC14413d implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Throwable f32254b;

        public DialogInterface$OnClickListenerC14413d(Throwable th) {
            this.f32254b = th;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                AbstractC14417e eVar = C14409c.this.f32248e;
                Intent a = ((C14421i) this.f32254b).m21981a();
                C15149k.m383a((Object) a, "throwable.intent");
                eVar.startActivityForResult(a, AdViewController.f1365a);
            }
        }
    }

    /* renamed from: j.a.x.l.c$e */
    /* loaded from: classes2-dex2jar.jar:j/a/x/l/c$e.class */
    public static final class DialogInterface$OnClickListenerC14414e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC14414e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                C14321a.m1580b(C14409c.this.f32248e.getContext());
            }
        }
    }

    /* renamed from: j.a.x.l.c$f */
    /* loaded from: classes2-dex2jar.jar:j/a/x/l/c$f.class */
    public static final class DialogInterface$OnClickListenerC14415f implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC14415f() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                C14321a.m1580b(C14409c.this.f32248e.getContext());
            }
        }
    }

    static {
        new C14410a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14409c(AbstractC14417e eVar) {
        super(eVar);
        C15149k.m377b(eVar, "view");
        this.f32248e = eVar;
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14423k
    /* renamed from: a */
    public void mo1371a(Context context, C14422j jVar, int i) {
        boolean z;
        C15149k.m377b(context, "context");
        C15149k.m377b(jVar, "authData");
        int i2 = 2;
        if (i != 615) {
            z = false;
        } else {
            try {
                C6711b.m21983a(this.f32248e.getContext(), jVar.m1373e());
            } catch (Exception e) {
                e.printStackTrace();
            }
            int i3 = this.f32247d;
            this.f32247d = i3 + 1;
            if (i3 < 2) {
                mo1372a();
            }
            z = true;
        }
        if (!z) {
            super.mo1371a(context, jVar, i);
        }
        if (i == 200) {
            i2 = 0;
        }
        C14261f.m1990a(i2, i);
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14423k
    /* renamed from: a */
    public void mo1368a(Throwable th) {
        C15149k.m377b(th, "throwable");
        if (th instanceof C14420h) {
            List<C14407a> a = ((C14420h) th).m1378a();
            this.f32248e.mo1384a(a, new DialogInterface$OnClickListenerC14411b(a));
            C14261f.m1990a(3, -1);
            return;
        }
        boolean z = th instanceof C6712c;
        if (z || (th instanceof C13405a0.C13407b)) {
            Intent a2 = z ? ((C6712c) th).m21981a() : null;
            if (a2 == null) {
                a2 = C14217x3.m2139g(this.f32248e.getContext(), "com.google.android.gms");
                C15149k.m383a((Object) a2, "Utils.getGooglePlayInten…LAY_SERVICE_PACKAGE_NAME)");
            }
            int b = z ? ((C6712c) th).m21982b() : 13;
            this.f32248e.mo1382c(new DialogInterface$OnClickListenerC14412c(a2));
            C14261f.m1990a(4, b);
        } else if (th instanceof C14421i) {
            this.f32248e.mo1383b(new DialogInterface$OnClickListenerC14413d(th));
            C14261f.m1990a(5, -1);
        } else if (th instanceof C6713d) {
            C6713d dVar = (C6713d) th;
            if (dVar.m21981a() != null) {
                AbstractC14417e eVar = this.f32248e;
                Intent a3 = dVar.m21981a();
                C15149k.m383a((Object) a3, "throwable.intent");
                eVar.startActivityForResult(a3, AdViewController.f1365a);
            } else {
                this.f32248e.mo1385a(new DialogInterface$OnClickListenerC14414e());
            }
            C14261f.m1990a(6, -1);
        } else {
            this.f32248e.mo1385a(new DialogInterface$OnClickListenerC14415f());
            C14261f.m1990a(1, -1);
        }
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14418f
    /* renamed from: a */
    public boolean mo1381a(int i, int i2, Intent intent) {
        boolean z;
        if (i == 60000) {
            if (i2 == -1) {
                mo1372a();
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14423k
    /* renamed from: b */
    public C14422j mo1367b() {
        C14407a aVar = this.f32246c;
        if (aVar == null) {
            aVar = C14322b.m1572b(this.f32248e.getContext());
        }
        this.f32246c = aVar;
        return C14322b.m1574a(this.f32248e.getContext(), aVar);
    }
}
