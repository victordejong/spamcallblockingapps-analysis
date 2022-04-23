package p626l.p632u;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p630d0.AbstractC14923g;
import p626l.p630d0.C14924h;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15076k;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H��\u001aH\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u0006\"\u0004\b��\u0010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH��\u001aD\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u000e\"\u0004\b��\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH��¨\u0006\u000f"}, m815d2 = {"checkWindowSizeStep", "", "size", "", "step", "windowedIterator", "", "", ExifInterface.GPS_DIRECTION_TRUE, "iterator", "partialWindows", "", "reuseBuffer", "windowedSequence", "Lkotlin/sequences/Sequence;", "kotlin-stdlib"}, m814k = 2, m813mv = {1, 1, 16})
/* renamed from: l.u.i0 */
/* loaded from: classes3-dex2jar.jar:l/u/i0.class */
public final class C15015i0 {

    @AbstractC15070f(m473c = "kotlin.collections.SlidingWindowKt$windowedIterator$1", m472f = "SlidingWindow.kt", m471l = {34, 40, 49, 55, 58}, m470m = "invokeSuspend")
    /* renamed from: l.u.i0$a */
    /* loaded from: classes3-dex2jar.jar:l/u/i0$a.class */
    public static final class C15016a extends AbstractC15076k implements AbstractC15122p<AbstractC14923g<? super List<? extends T>>, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public AbstractC14923g f33045a;

        /* renamed from: b */
        public Object f33046b;

        /* renamed from: c */
        public Object f33047c;

        /* renamed from: d */
        public Object f33048d;

        /* renamed from: e */
        public Object f33049e;

        /* renamed from: f */
        public int f33050f;

        /* renamed from: g */
        public int f33051g;

        /* renamed from: h */
        public int f33052h;

        /* renamed from: i */
        public int f33053i;

        /* renamed from: j */
        public final /* synthetic */ int f33054j;

        /* renamed from: k */
        public final /* synthetic */ int f33055k;

        /* renamed from: l */
        public final /* synthetic */ Iterator f33056l;

        /* renamed from: m */
        public final /* synthetic */ boolean f33057m;

        /* renamed from: n */
        public final /* synthetic */ boolean f33058n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15016a(int i, int i2, Iterator it, boolean z, boolean z2, AbstractC15044d dVar) {
            super(2, dVar);
            this.f33054j = i;
            this.f33055k = i2;
            this.f33056l = it;
            this.f33057m = z;
            this.f33058n = z2;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C15016a aVar = new C15016a(this.f33054j, this.f33055k, this.f33056l, this.f33057m, this.f33058n, dVar);
            aVar.f33045a = (AbstractC14923g) obj;
            return aVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
            return ((C15016a) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0141  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x01c5  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x01cc  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x024b  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x026a  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0317  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x032d  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0390  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x01b7 -> B:36:0x01bd). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x02f6 -> B:67:0x02fb). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0377 -> B:81:0x037c). Please submit an issue!!! */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 973
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p626l.p632u.C15015i0.C15016a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: a */
    public static final <T> Iterator<List<T>> m569a(Iterator<? extends T> it, int i, int i2, boolean z, boolean z2) {
        C15149k.m377b(it, "iterator");
        return !it.hasNext() ? C15031v.f33065a : C14924h.m781a(new C15016a(i, i2, it, z2, z, null));
    }

    /* renamed from: a */
    public static final void m570a(int i, int i2) {
        String str;
        if (!(i > 0 && i2 > 0)) {
            if (i != i2) {
                str = "Both size " + i + " and step " + i2 + " must be greater than zero.";
            } else {
                str = "size " + i + " must be greater than zero.";
            }
            throw new IllegalArgumentException(str.toString());
        }
    }
}
