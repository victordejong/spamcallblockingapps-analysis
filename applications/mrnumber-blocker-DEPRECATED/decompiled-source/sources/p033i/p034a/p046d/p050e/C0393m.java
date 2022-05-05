package p033i.p034a.p046d.p050e;

import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import p033i.p034a.p046d.p050e.p052b0.AbstractC0371c;
import p033i.p034a.p046d.p050e.p052b0.EnumC0372d;
import p033i.p034a.p046d.p050e.p053c0.AbstractC0375k;
import p033i.p034a.p046d.p050e.p054e0.AbstractC0384b;
import p033i.p034a.p046d.p050e.p054e0.AbstractC0385c;
import p033i.p034a.p046d.p050e.p054e0.AbstractC0388f;
import p033i.p034a.p046d.p050e.p054e0.C0386d;
/* renamed from: i.a.d.e.m */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/m.class */
class C0393m {

    /* renamed from: b */
    private static final AbstractC0385c f921b;

    /* renamed from: c */
    private static final AbstractC0385c f922c;

    /* renamed from: d */
    private static final AbstractC0385c f923d;

    /* renamed from: e */
    private static final AbstractC0385c f924e;

    /* renamed from: a */
    private final Map<AbstractC0388f, AbstractC0385c> f925a = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i.a.d.e.m$a */
    /* loaded from: classes2-dex2jar.jar:i/a/d/e/m$a.class */
    public static /* synthetic */ class C0394a {

        /* renamed from: a */
        static final /* synthetic */ int[] f926a;

        static {
            int[] iArr = new int[EnumC0372d.values().length];
            f926a = iArr;
            iArr[EnumC0372d.COUNTER.ordinal()] = 1;
            f926a[EnumC0372d.UP_DOWN_COUNTER.ordinal()] = 2;
            f926a[EnumC0372d.VALUE_RECORDER.ordinal()] = 3;
            f926a[EnumC0372d.VALUE_OBSERVER.ordinal()] = 4;
            f926a[EnumC0372d.SUM_OBSERVER.ordinal()] = 5;
            f926a[EnumC0372d.UP_DOWN_SUM_OBSERVER.ordinal()] = 6;
        }
    }

    static {
        AbstractC0384b j = C0386d.m269j();
        AbstractC0375k.EnumC0376a aVar = AbstractC0375k.EnumC0376a.CUMULATIVE;
        f921b = AbstractC0385c.m280b(j, aVar);
        AbstractC0384b i = C0386d.m270i();
        AbstractC0375k.EnumC0376a aVar2 = AbstractC0375k.EnumC0376a.DELTA;
        f922c = AbstractC0385c.m280b(i, aVar2);
        f923d = AbstractC0385c.m280b(C0386d.m271h(), aVar);
        f924e = AbstractC0385c.m280b(C0386d.m271h(), aVar2);
    }

    /* renamed from: b */
    private static AbstractC0385c m255b(AbstractC0371c cVar) {
        switch (C0394a.f926a[cVar.m302d().ordinal()]) {
            case 1:
            case 2:
                return f921b;
            case 3:
                return f922c;
            case 4:
                return f924e;
            case 5:
            case 6:
                return f923d;
            default:
                throw new IllegalArgumentException("Unknown descriptor type: " + cVar.m302d());
        }
    }

    /* renamed from: c */
    private static boolean m254c(AbstractC0371c cVar, AbstractC0388f fVar) {
        Pattern c = fVar.m266c();
        if (c == null) {
            return false;
        }
        return c.matcher(cVar.m303c()).matches();
    }

    /* renamed from: d */
    private static boolean m253d(AbstractC0371c cVar, AbstractC0388f fVar) {
        if (fVar.m264e() == null) {
            return false;
        }
        return fVar.m264e().equals(cVar.m302d());
    }

    /* renamed from: e */
    private static boolean m252e(AbstractC0371c cVar, AbstractC0388f fVar) {
        if (!fVar.m268a() || m254c(cVar, fVar)) {
            return !fVar.m267b() || m253d(cVar, fVar);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public AbstractC0385c m256a(AbstractC0371c cVar) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<AbstractC0388f, AbstractC0385c> entry : this.f925a.entrySet()) {
            AbstractC0388f key = entry.getKey();
            if (m253d(cVar, key) && m254c(cVar, key)) {
                return entry.getValue();
            }
            if (m252e(cVar, key)) {
                arrayList.add(entry);
            }
        }
        return arrayList.isEmpty() ? m255b(cVar) : (AbstractC0385c) ((Map.Entry) arrayList.get(0)).getValue();
    }
}
