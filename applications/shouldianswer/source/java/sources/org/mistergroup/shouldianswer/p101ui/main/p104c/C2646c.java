package org.mistergroup.shouldianswer.p101ui.main.p104c;

import android.graphics.Bitmap;
import androidx.customview.p026a.AbstractC0610a;
import java.util.ArrayList;
import java.util.List;
import kotlin.p073a.C1600g;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2432j;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.EnumC2429h;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2643a;
/* renamed from: org.mistergroup.shouldianswer.ui.main.c.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/c.class */
public final class C2646c extends C2643a {

    /* renamed from: a */
    private NumberInfo f7762a;

    /* renamed from: b */
    private String f7763b;

    /* renamed from: c */
    private String f7764c;

    /* renamed from: d */
    private boolean f7765d;

    /* renamed from: e */
    private ArrayList<C2432j.C2434b> f7766e = new ArrayList<>();

    /* renamed from: f */
    private C2647a f7767f;

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.c$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/c$a.class */
    public static final class C2647a {

        /* renamed from: b */
        private String f7769b;

        /* renamed from: g */
        private Boolean f7774g;

        /* renamed from: h */
        private long f7775h;

        /* renamed from: i */
        private Bitmap f7776i;

        /* renamed from: a */
        private String f7768a = "";

        /* renamed from: c */
        private String f7770c = "";

        /* renamed from: d */
        private String f7771d = "";

        /* renamed from: e */
        private EnumC2395ag f7772e = EnumC2395ag.UNKNOWN;

        /* renamed from: f */
        private EnumC2429h f7773f = EnumC2429h.NONE;

        /* renamed from: a */
        public final String m657a() {
            return this.f7768a;
        }

        /* renamed from: a */
        public final void m656a(long j) {
            this.f7775h = j;
        }

        /* renamed from: a */
        public final void m655a(Bitmap bitmap) {
            this.f7776i = bitmap;
        }

        /* renamed from: a */
        public final void m654a(Boolean bool) {
            this.f7774g = bool;
        }

        /* renamed from: a */
        public final void m653a(String str) {
            C1694h.m3117b(str, "<set-?>");
            this.f7768a = str;
        }

        /* renamed from: a */
        public final void m652a(EnumC2395ag enumC2395ag) {
            C1694h.m3117b(enumC2395ag, "<set-?>");
            this.f7772e = enumC2395ag;
        }

        /* renamed from: a */
        public final void m651a(EnumC2429h enumC2429h) {
            C1694h.m3117b(enumC2429h, "<set-?>");
            this.f7773f = enumC2429h;
        }

        /* renamed from: b */
        public final String m650b() {
            return this.f7769b;
        }

        /* renamed from: b */
        public final void m649b(String str) {
            this.f7769b = str;
        }

        /* renamed from: c */
        public final String m648c() {
            return this.f7770c;
        }

        /* renamed from: c */
        public final void m647c(String str) {
            C1694h.m3117b(str, "<set-?>");
            this.f7770c = str;
        }

        /* renamed from: d */
        public final String m646d() {
            return this.f7771d;
        }

        /* renamed from: d */
        public final void m645d(String str) {
            C1694h.m3117b(str, "<set-?>");
            this.f7771d = str;
        }

        /* renamed from: e */
        public final EnumC2395ag m644e() {
            return this.f7772e;
        }

        /* renamed from: f */
        public final EnumC2429h m643f() {
            return this.f7773f;
        }

        /* renamed from: g */
        public final Boolean m642g() {
            return this.f7774g;
        }

        /* renamed from: h */
        public final long m641h() {
            return this.f7775h;
        }

        /* renamed from: i */
        public final Bitmap m640i() {
            return this.f7776i;
        }
    }

    @AbstractC1634f(m3162b = "LogItemNumber.kt", m3161c = {52, 56, 58, 59}, m3160d = "collectViewData", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogItemNumber")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.c$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/c$b.class */
    public static final class C2648b extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7777a;

        /* renamed from: b */
        int f7778b;

        /* renamed from: d */
        Object f7780d;

        /* renamed from: e */
        Object f7781e;

        /* renamed from: f */
        Object f7782f;

        /* renamed from: g */
        Object f7783g;

        /* renamed from: h */
        Object f7784h;

        /* renamed from: i */
        long f7785i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2648b(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2646c.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7777a = obj;
            this.f7778b |= AbstractC0610a.INVALID_ID;
            return C2646c.this.m666a(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646c(C2432j.C2434b c2434b) {
        super(C2643a.EnumC2644a.NUMBER);
        C1694h.m3117b(c2434b, "firstItem");
        this.f7766e.add(c2434b);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(2:4|(9:6|8|79|(2:10|(2:12|(2:14|(2:16|(12:18|19|20|65|(1:67)|68|69|(1:73)|74|75|77|78)(2:21|22))(6:23|24|25|59|60|(2:62|63)(10:64|65|(0)|68|69|(2:71|73)|74|75|77|78)))(6:26|27|28|53|54|(2:56|57)(4:58|59|60|(0)(0))))(3:29|30|31))(4:33|(2:35|(2:37|(2:39|(2:41|42)(1:43))(5:46|45|47|48|(2:50|51)(4:52|53|54|(0)(0)))))|77|78)|44|45|47|48|(0)(0)))|7|8|79|(0)(0)|44|45|47|48|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0158, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0332, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r7, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02ff A[Catch: Exception -> 0x0158, TRY_ENTER, TryCatch #0 {Exception -> 0x0158, blocks: (B:19:0x008d, B:24:0x00d7, B:27:0x0117, B:30:0x014e, B:35:0x016b, B:37:0x0187, B:39:0x0195, B:47:0x01e9, B:53:0x0237, B:59:0x028d, B:65:0x02de, B:67:0x02ff, B:69:0x0306, B:73:0x0320, B:75:0x032b), top: B:79:0x003f }] */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m666a(kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r7) {
        /*
            Method dump skipped, instructions count: 832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2646c.m666a(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final void m665a(C2647a c2647a) {
        this.f7767f = c2647a;
    }

    /* renamed from: b */
    public final ArrayList<C2432j.C2434b> m664b() {
        return this.f7766e;
    }

    /* renamed from: c */
    public final C2647a m663c() {
        return this.f7767f;
    }

    /* renamed from: d */
    public final void m662d() {
        this.f7765d = false;
        this.f7762a = null;
        String str = null;
        this.f7764c = str;
        this.f7763b = str;
    }

    /* renamed from: e */
    public final boolean m661e() {
        return this.f7765d;
    }

    /* renamed from: f */
    public final NumberInfo m660f() {
        if (this.f7762a == null) {
            C2432j.C2434b c2434b = (C2432j.C2434b) C1600g.m3191c((List<? extends Object>) this.f7766e);
            this.f7762a = C2707o.f8020a.m568a(c2434b.m1039b(), c2434b.m1035c(), c2434b.m1032d());
        }
        NumberInfo numberInfo = this.f7762a;
        if (numberInfo == null) {
            C1694h.m3124a();
        }
        return numberInfo;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: g */
    public final long m659g() {
        C2432j.C2434b c2434b = (C2432j.C2434b) C1600g.m3189d((List<? extends Object>) this.f7766e);
        return c2434b != null ? c2434b.m1029e() : (char) 0;
    }

    /* renamed from: h */
    public final String m658h() {
        if (this.f7763b == null) {
            this.f7763b = MyApp.f5480c.m1802a().m1805b().format(Long.valueOf(((C2432j.C2434b) C1600g.m3191c((List<? extends Object>) this.f7766e)).m1029e()));
        }
        String str = this.f7763b;
        if (str == null) {
            C1694h.m3124a();
        }
        return str;
    }
}
