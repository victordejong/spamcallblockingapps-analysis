package p033i.p034a.p046d.p050e.p054e0;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import p033i.p034a.p035a.p036f.AbstractC0302r;
import p033i.p034a.p046d.p047c.AbstractC0359e;
import p033i.p034a.p046d.p050e.p051a0.AbstractC0368h;
import p033i.p034a.p046d.p050e.p052b0.AbstractC0371c;
import p033i.p034a.p046d.p050e.p052b0.EnumC0372d;
import p033i.p034a.p046d.p050e.p052b0.EnumC0373e;
import p033i.p034a.p046d.p050e.p053c0.AbstractC0375k;
import p033i.p034a.p046d.p055f.AbstractC0407h;
/* renamed from: i.a.d.e.e0.d */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/e0/d.class */
public final class C0386d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i.a.d.e.e0.d$a */
    /* loaded from: classes2-dex2jar.jar:i/a/d/e/e0/d$a.class */
    public static /* synthetic */ class C0387a {

        /* renamed from: a */
        static final /* synthetic */ int[] f910a;

        /* renamed from: b */
        static final /* synthetic */ int[] f911b;

        static {
            int[] iArr = new int[EnumC0373e.values().length];
            f911b = iArr;
            iArr[EnumC0373e.LONG.ordinal()] = 1;
            f911b[EnumC0373e.DOUBLE.ordinal()] = 2;
            int[] iArr2 = new int[EnumC0372d.values().length];
            f910a = iArr2;
            iArr2[EnumC0372d.SUM_OBSERVER.ordinal()] = 1;
            f910a[EnumC0372d.UP_DOWN_SUM_OBSERVER.ordinal()] = 2;
            f910a[EnumC0372d.VALUE_OBSERVER.ordinal()] = 3;
            f910a[EnumC0372d.COUNTER.ordinal()] = 4;
            f910a[EnumC0372d.UP_DOWN_COUNTER.ordinal()] = 5;
            f910a[EnumC0372d.VALUE_RECORDER.ordinal()] = 6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static AbstractC0375k m275d(AbstractC0407h hVar, AbstractC0359e eVar, AbstractC0371c cVar, List<AbstractC0375k.AbstractC0378k> list) {
        int i = C0387a.f911b[cVar.m300f().ordinal()];
        if (i == 1) {
            return AbstractC0375k.m296d(hVar, eVar, cVar.m303c(), cVar.m304b(), cVar.m301e(), AbstractC0375k.h.a(list));
        }
        if (i != 2) {
            return null;
        }
        return AbstractC0375k.m299a(hVar, eVar, cVar.m303c(), cVar.m304b(), cVar.m301e(), AbstractC0375k.c.a(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static List<AbstractC0375k.AbstractC0378k> m274e(Map<AbstractC0302r, AbstractC0368h> map, final long j, final long j2) {
        final ArrayList arrayList = new ArrayList(map.size());
        map.forEach(new BiConsumer() { // from class: i.a.d.e.e0.a
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                C0386d.m272g(j, j2, arrayList, (AbstractC0302r) obj, (AbstractC0368h) obj2);
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static AbstractC0375k m273f(AbstractC0407h hVar, AbstractC0359e eVar, AbstractC0371c cVar, List<AbstractC0375k.AbstractC0378k> list, boolean z) {
        int i = C0387a.f911b[cVar.m300f().ordinal()];
        if (i == 1) {
            return AbstractC0375k.m295e(hVar, eVar, cVar.m303c(), cVar.m304b(), cVar.m301e(), AbstractC0375k.j.c(z, AbstractC0375k.EnumC0376a.CUMULATIVE, list));
        }
        if (i != 2) {
            return null;
        }
        return AbstractC0375k.m298b(hVar, eVar, cVar.m303c(), cVar.m304b(), cVar.m301e(), AbstractC0375k.e.c(z, AbstractC0375k.EnumC0376a.CUMULATIVE, list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ void m272g(long j, long j2, List list, AbstractC0302r rVar, AbstractC0368h hVar) {
        AbstractC0375k.AbstractC0378k c = hVar.m317c(j, j2, rVar);
        if (c != null) {
            list.add(c);
        }
    }

    /* renamed from: h */
    public static AbstractC0384b m271h() {
        return b.INSTANCE;
    }

    /* renamed from: i */
    public static AbstractC0384b m270i() {
        return c.INSTANCE;
    }

    /* renamed from: j */
    public static AbstractC0384b m269j() {
        return d.INSTANCE;
    }
}
