package p459j.p460a.p564s;

import android.accounts.Account;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import androidx.appcompat.widget.ActivityChooserModel;
import gogolook.callgogolook2.intro.registration.RegistrationActivity;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import p081h.p203i.p204a.p224e.p235d.C6804j;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p596x.p598l.C14407a;
import p459j.p460a.p596x.p598l.C14420h;
import p459j.p460a.p596x.p598l.C14421i;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0003!\"#B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H\u0007J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0018\u0010\u001d\u001a\u00020\u001a2\u000e\u0010\u001e\u001a\n\u0012\u0006\b\u0001\u0012\u00020 0\u001fH\u0007R!\u0010\u0003\u001a\u00020\u00048FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\b\u0010\t\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u000e¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006$"}, m815d2 = {"Lgogolook/callgogolook2/developmode/LoginSimulationDevTool;", "", "()V", "DevToolName", "", "DevToolName$annotations", "getDevToolName", "()Ljava/lang/String;", "DevToolName$delegate", "Lkotlin/Lazy;", "gmsSimulationMap", "Lgogolook/callgogolook2/developmode/LoginSimulationDevTool$SimulationConfigMap;", "getGmsSimulationMap", "()Lgogolook/callgogolook2/developmode/LoginSimulationDevTool$SimulationConfigMap;", "generateMultipleGoogleAccountList", "", "Lgogolook/callgogolook2/intro/registration/AndroidAccount;", "size", "", "setupSimulateCheckBoxByConfig", "Landroid/widget/CheckBox;", "checkBox", "config", "Lgogolook/callgogolook2/developmode/LoginSimulationDevTool$SimulatedThrowableConfig;", "throwableName", "showSimulationDialog", "", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", "throwSimulationExceptionIfNeed", "throwableClass", "Ljava/lang/Class;", "", "FakeGooglePlayServicesAvailabilityException", "SimulatedThrowableConfig", "SimulationConfigMap", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.s.a0 */
/* loaded from: classes2-dex2jar.jar:j/a/s/a0.class */
public final class C13405a0 {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f30141a;

    /* renamed from: c */
    public static C13409d f30143c;

    /* renamed from: d */
    public static final C13405a0 f30144d = new C13405a0();

    /* renamed from: b */
    public static final AbstractC14974f f30142b = C14975g.m662a(C13406a.f30145a);

    /* renamed from: j.a.s.a0$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/a0$a.class */
    public static final class C13406a extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C13406a f30145a = new C13406a();

        public C13406a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "Google login simulation";
        }
    }

    /* renamed from: j.a.s.a0$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/a0$b.class */
    public static final class C13407b extends C6804j {
        public C13407b() {
            super("FakeGooglePlayServicesAvailabilityException", null);
        }
    }

    /* renamed from: j.a.s.a0$c */
    /* loaded from: classes2-dex2jar.jar:j/a/s/a0$c.class */
    public static final class C13408c {

        /* renamed from: a */
        public boolean f30146a;

        /* renamed from: b */
        public final AbstractC15107a<C14989s> f30147b;

        public C13408c(boolean z, AbstractC15107a<C14989s> aVar) {
            C15149k.m377b(aVar, "doThrowAction");
            this.f30146a = z;
            this.f30147b = aVar;
        }

        public /* synthetic */ C13408c(boolean z, AbstractC15107a aVar, int i, C15145g gVar) {
            this((i & 1) != 0 ? false : z, aVar);
        }

        /* renamed from: a */
        public final AbstractC15107a<C14989s> m4073a() {
            return this.f30147b;
        }

        /* renamed from: a */
        public final void m4072a(boolean z) {
            this.f30146a = z;
        }

        /* renamed from: b */
        public final boolean m4071b() {
            return this.f30146a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C13408c)) {
                return false;
            }
            C13408c cVar = (C13408c) obj;
            return (this.f30146a == cVar.f30146a) && C15149k.m384a(this.f30147b, cVar.f30147b);
        }

        public int hashCode() {
            boolean z = this.f30146a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            AbstractC15107a<C14989s> aVar = this.f30147b;
            int hashCode = aVar != null ? aVar.hashCode() : 0;
            int i = z2 ? 1 : 0;
            int i2 = z2 ? 1 : 0;
            return (i * 31) + hashCode;
        }

        public String toString() {
            return "SimulatedThrowableConfig(enable=" + this.f30146a + ", doThrowAction=" + this.f30147b + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2.\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001j\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u0004`\u0005B\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, m815d2 = {"Lgogolook/callgogolook2/developmode/LoginSimulationDevTool$SimulationConfigMap;", "Ljava/util/HashMap;", "Ljava/lang/Class;", "", "Lgogolook/callgogolook2/developmode/LoginSimulationDevTool$SimulatedThrowableConfig;", "Lkotlin/collections/HashMap;", "()V", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.s.a0$d */
    /* loaded from: classes2-dex2jar.jar:j/a/s/a0$d.class */
    public static final class C13409d extends HashMap<Class<? extends Throwable>, C13408c> {

        /* renamed from: j.a.s.a0$d$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/a0$d$a.class */
        public static final class C13410a extends AbstractC15150l implements AbstractC15107a<C14989s> {

            /* renamed from: a */
            public static final C13410a f30148a = new C13410a();

            public C13410a() {
                super(0);
            }

            @Override // p626l.p641z.p642c.AbstractC15107a
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                throw new C14421i();
            }
        }

        /* renamed from: j.a.s.a0$d$b */
        /* loaded from: classes2-dex2jar.jar:j/a/s/a0$d$b.class */
        public static final class C13411b extends AbstractC15150l implements AbstractC15107a<C14989s> {

            /* renamed from: a */
            public static final C13411b f30149a = new C13411b();

            public C13411b() {
                super(0);
            }

            @Override // p626l.p641z.p642c.AbstractC15107a
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                throw new C14420h(C13405a0.f30144d.m4080a(3));
            }
        }

        /* renamed from: j.a.s.a0$d$c */
        /* loaded from: classes2-dex2jar.jar:j/a/s/a0$d$c.class */
        public static final class C13412c extends AbstractC15150l implements AbstractC15107a<C14989s> {

            /* renamed from: a */
            public static final C13412c f30150a = new C13412c();

            public C13412c() {
                super(0);
            }

            @Override // p626l.p641z.p642c.AbstractC15107a
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                throw new C13407b();
            }
        }

        /* renamed from: j.a.s.a0$d$d */
        /* loaded from: classes2-dex2jar.jar:j/a/s/a0$d$d.class */
        public static final class C13413d extends AbstractC15150l implements AbstractC15107a<C14989s> {

            /* renamed from: a */
            public static final C13413d f30151a = new C13413d();

            public C13413d() {
                super(0);
            }

            @Override // p626l.p641z.p642c.AbstractC15107a
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                throw new IOException("Simulation IOException for testing");
            }
        }

        public C13409d() {
            put(C14421i.class, new C13408c(false, C13410a.f30148a, 1, null));
            put(C14420h.class, new C13408c(false, C13411b.f30149a, 1, null));
            put(C13407b.class, new C13408c(false, C13412c.f30150a, 1, null));
            put(IOException.class, new C13408c(false, C13413d.f30151a, 1, null));
        }

        /* renamed from: a */
        public /* bridge */ C13408c m4068a(Class cls, C13408c cVar) {
            return (C13408c) super.getOrDefault(cls, cVar);
        }

        /* renamed from: a */
        public /* bridge */ boolean m4070a(C13408c cVar) {
            return super.containsValue(cVar);
        }

        /* renamed from: a */
        public /* bridge */ boolean m4069a(Class cls) {
            return super.containsKey(cls);
        }

        /* renamed from: b */
        public /* bridge */ C13408c m4067b(Class cls) {
            return (C13408c) super.get(cls);
        }

        /* renamed from: b */
        public /* bridge */ boolean m4066b(Class cls, C13408c cVar) {
            return super.remove(cls, cVar);
        }

        /* renamed from: c */
        public /* bridge */ C13408c m4065c(Class cls) {
            return (C13408c) super.remove(cls);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof Class) {
                return m4069a((Class) obj);
            }
            return false;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof C13408c) {
                return m4070a((C13408c) obj);
            }
            return false;
        }

        /* renamed from: d */
        public /* bridge */ Set m4064d() {
            return super.entrySet();
        }

        /* renamed from: e */
        public /* bridge */ Set m4063e() {
            return super.keySet();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<Class<? extends Throwable>, C13408c>> entrySet() {
            return m4064d();
        }

        /* renamed from: f */
        public /* bridge */ int m4062f() {
            return super.size();
        }

        /* renamed from: g */
        public /* bridge */ Collection m4061g() {
            return super.values();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ C13408c get(Object obj) {
            if (obj instanceof Class) {
                return m4067b((Class) obj);
            }
            return null;
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
            return obj instanceof Class ? m4068a((Class) obj, (C13408c) obj2) : obj2;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Class<? extends Throwable>> keySet() {
            return m4063e();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ C13408c remove(Object obj) {
            if (obj instanceof Class) {
                return m4065c((Class) obj);
            }
            return null;
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if (!(obj instanceof Class) || !(obj2 instanceof C13408c)) {
                return false;
            }
            return m4066b((Class) obj, (C13408c) obj2);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return m4062f();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<C13408c> values() {
            return m4061g();
        }
    }

    /* renamed from: j.a.s.a0$e */
    /* loaded from: classes2-dex2jar.jar:j/a/s/a0$e.class */
    public static final class C13414e implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ C13408c f30152a;

        public C13414e(String str, C13408c cVar) {
            this.f30152a = cVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f30152a.m4072a(z);
        }
    }

    /* renamed from: j.a.s.a0$f */
    /* loaded from: classes2-dex2jar.jar:j/a/s/a0$f.class */
    public static final class DialogInterface$OnClickListenerC13415f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C13409d f30153a;

        public DialogInterface$OnClickListenerC13415f(C13409d dVar) {
            this.f30153a = dVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C13405a0 a0Var = C13405a0.f30144d;
            Object clone = this.f30153a.clone();
            if (clone != null) {
                C13405a0.f30143c = (C13409d) clone;
                return;
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.developmode.LoginSimulationDevTool.SimulationConfigMap");
        }
    }

    /* renamed from: j.a.s.a0$g */
    /* loaded from: classes2-dex2jar.jar:j/a/s/a0$g.class */
    public static final class DialogInterface$OnClickListenerC13416g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C13409d f30154a;

        /* renamed from: b */
        public final /* synthetic */ Activity f30155b;

        public DialogInterface$OnClickListenerC13416g(C13409d dVar, Activity activity) {
            this.f30154a = dVar;
            this.f30155b = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C13405a0 a0Var = C13405a0.f30144d;
            Object clone = this.f30154a.clone();
            if (clone != null) {
                C13405a0.f30143c = (C13409d) clone;
                C14376j.m1456a(false);
                C14376j.m1457a(C14376j.EnumC14379c.none);
                C14376j.m1458a(RegistrationActivity.EnumC4523g.UNKNOWN);
                C14376j.m1453b(this.f30155b, true);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.developmode.LoginSimulationDevTool.SimulationConfigMap");
        }
    }

    /* renamed from: j.a.s.a0$h */
    /* loaded from: classes2-dex2jar.jar:j/a/s/a0$h.class */
    public static final class DialogInterface$OnClickListenerC13417h implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC13417h f30156a = new DialogInterface$OnClickListenerC13417h();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13405a0.class), "DevToolName", "getDevToolName()Ljava/lang/String;");
        C15131a0.m412a(sVar);
        f30141a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final CheckBox m4078a(CheckBox checkBox, C13408c cVar, String str) {
        C15149k.m377b(checkBox, "checkBox");
        C15149k.m377b(cVar, "config");
        C15149k.m377b(str, "throwableName");
        checkBox.setText("simulate " + str);
        checkBox.setTextSize(18.0f);
        checkBox.setChecked(cVar.m4071b());
        checkBox.setOnCheckedChangeListener(new C13414e(str, cVar));
        return checkBox;
    }

    /* renamed from: a */
    public static final void m4079a(Activity activity) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C13409d a = f30144d.m4081a();
        Object clone = a != null ? a.clone() : null;
        if (clone != null) {
            C13409d dVar = (C13409d) clone;
            AlertDialog.Builder title = new AlertDialog.Builder(activity).setTitle(m4074b());
            LinearLayout linearLayout = new LinearLayout(activity);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(40, 40, 40, 40);
            C13408c cVar = (C13408c) dVar.get(C14421i.class);
            if (cVar != null) {
                CheckBox checkBox = new CheckBox(linearLayout.getContext());
                C15149k.m383a((Object) cVar, "config");
                m4078a(checkBox, cVar, "NoGoogleAccountException");
                linearLayout.addView(checkBox);
            }
            C13408c cVar2 = (C13408c) dVar.get(C14420h.class);
            if (cVar2 != null) {
                CheckBox checkBox2 = new CheckBox(linearLayout.getContext());
                C15149k.m383a((Object) cVar2, "config");
                m4078a(checkBox2, cVar2, "MultipleAccountsException");
                linearLayout.addView(checkBox2);
            }
            C13408c cVar3 = (C13408c) dVar.get(C13407b.class);
            if (cVar3 != null) {
                CheckBox checkBox3 = new CheckBox(linearLayout.getContext());
                C15149k.m383a((Object) cVar3, "config");
                m4078a(checkBox3, cVar3, "FakeGooglePlayServicesAvailabilityException");
                linearLayout.addView(checkBox3);
            }
            C13408c cVar4 = (C13408c) dVar.get(IOException.class);
            if (cVar4 != null) {
                CheckBox checkBox4 = new CheckBox(linearLayout.getContext());
                C15149k.m383a((Object) cVar4, "config");
                m4078a(checkBox4, cVar4, "IOException");
                linearLayout.addView(checkBox4);
            }
            title.setView(linearLayout).setPositiveButton("Confirm", new DialogInterface$OnClickListenerC13415f(dVar)).setNeutralButton("Apply and login", new DialogInterface$OnClickListenerC13416g(dVar, activity)).setNegativeButton("Cancel", DialogInterface$OnClickListenerC13417h.f30156a).show();
            return;
        }
        throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.developmode.LoginSimulationDevTool.SimulationConfigMap");
    }

    /* renamed from: a */
    public static final void m4075a(Class<? extends Throwable> cls) throws Throwable {
        C13409d a;
        C15149k.m377b(cls, "throwableClass");
        C13565v g = C13565v.m3921g();
        C15149k.m383a((Object) g, "DevelopMode.getInstance()");
        if (g.m23335b() && (a = f30144d.m4081a()) != null) {
            C13408c cVar = (C13408c) a.get(cls);
            if (cVar != null) {
                if (!cVar.m4071b()) {
                    cVar = null;
                }
                if (cVar != null) {
                    cVar.m4073a().invoke();
                }
            }
        }
    }

    /* renamed from: b */
    public static final String m4074b() {
        AbstractC14974f fVar = f30142b;
        AbstractC14906i iVar = f30141a[0];
        return (String) fVar.getValue();
    }

    /* renamed from: a */
    public final C13409d m4081a() {
        C13409d dVar = f30143c;
        C13409d dVar2 = dVar;
        if (dVar == null) {
            f30143c = new C13409d();
            dVar2 = f30143c;
        }
        return dVar2;
    }

    /* renamed from: a */
    public final List<C14407a> m4080a(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(new C14407a(new Account("account " + i2, "com.google"), null, null, 6, null));
        }
        return arrayList;
    }
}
