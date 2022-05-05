package p459j.p460a.p582w0.p594z4;

import android.os.Build;
import kotlin.Metadata;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.p587d5.C13975b;
import p459j.p460a.p582w0.p594z4.p595g.C14362a;
import p459j.p460a.p582w0.p594z4.p595g.C14363b;
import p459j.p460a.p582w0.p594z4.p595g.C14364c;
import p459j.p460a.p582w0.p594z4.p595g.C14365d;
import p459j.p460a.p582w0.p594z4.p595g.C14366e;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0007R#\u0010\u0003\u001a\u0004\u0018\u00010\u00048@X\u0081\u0084\u0002¢\u0006\u0012\n\u0004\b\b\u0010\t\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, m815d2 = {"Lgogolook/callgogolook2/util/calllog/CustomizedCallLogHelper;", "", "()V", "rawTypeConverter", "Lgogolook/callgogolook2/util/calllog/CustomizedCallLogHelper$RawTypeConverter;", "rawTypeConverter$annotations", "getRawTypeConverter$whoscall_rcRelease", "()Lgogolook/callgogolook2/util/calllog/CustomizedCallLogHelper$RawTypeConverter;", "rawTypeConverter$delegate", "Lkotlin/Lazy;", "convertType", "", "type", "RawTypeConverter", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.z4.c */
/* loaded from: classes3-dex2jar.jar:j/a/w0/z4/c.class */
public final class C14336c {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f32133a;

    /* renamed from: c */
    public static final C14336c f32135c = new C14336c();

    /* renamed from: b */
    public static final AbstractC14974f f32134b = C14975g.m662a(C14338b.f32136a);

    /* renamed from: j.a.w0.z4.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/c$a.class */
    public interface AbstractC14337a {
        /* renamed from: a */
        int mo1470a(int i);
    }

    /* renamed from: j.a.w0.z4.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/c$b.class */
    public static final class C14338b extends AbstractC15150l implements AbstractC15107a<AbstractC14337a> {

        /* renamed from: a */
        public static final C14338b f32136a = new C14338b();

        public C14338b() {
            super(0);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final AbstractC14337a invoke() {
            AbstractC14337a aVar;
            C13565v g = C13565v.m3921g();
            C15149k.m383a((Object) g, "DevelopMode.getInstance()");
            String a = g.m23335b() ? C13975b.f31383a.m9458a("call_log_manufacturer", Build.MANUFACTURER) : Build.MANUFACTURER;
            if (a != null) {
                switch (a.hashCode()) {
                    case 103639:
                        if (a.equals("htc")) {
                            aVar = new C14363b();
                            break;
                        }
                        break;
                    case 107082:
                        if (a.equals("lge")) {
                            aVar = new C14364c();
                            break;
                        }
                        break;
                    case 3003984:
                        if (a.equals("asus")) {
                            aVar = new C14362a();
                            break;
                        }
                        break;
                    case 3418016:
                        if (a.equals("oppo")) {
                            aVar = new C14365d();
                            break;
                        }
                        break;
                    case 1864941562:
                        if (a.equals("samsung")) {
                            aVar = new C14366e();
                            break;
                        }
                        break;
                }
                return aVar;
            }
            aVar = null;
            return aVar;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C14336c.class), "rawTypeConverter", "getRawTypeConverter$whoscall_rcRelease()Lgogolook/callgogolook2/util/calllog/CustomizedCallLogHelper$RawTypeConverter;");
        C15131a0.m412a(sVar);
        f32133a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final int m1531a(int i) {
        AbstractC14337a a = f32135c.m1532a();
        int i2 = i;
        if (a != null) {
            i2 = a.mo1470a(i);
        }
        return i2;
    }

    /* renamed from: a */
    public final AbstractC14337a m1532a() {
        AbstractC14974f fVar = f32134b;
        AbstractC14906i iVar = f32133a[0];
        return (AbstractC14337a) fVar.getValue();
    }
}
