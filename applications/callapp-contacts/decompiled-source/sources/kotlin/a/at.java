package kotlin.a;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.c.b.a.e;
import kotlin.c.b.a.i;
import kotlin.c.d;
import kotlin.g.j;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H��\u001aH\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u0006\"\u0004\b��\u0010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH��\u001aD\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u000e\"\u0004\b��\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH��¨\u0006\u000f"}, d2 = {"checkWindowSizeStep", "", "size", "", "step", "windowedIterator", "", "", "T", "iterator", "partialWindows", "", "reuseBuffer", "windowedSequence", "Lkotlin/sequences/Sequence;", "kotlin-stdlib"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/a/at.class */
public final class at {

    /* JADX INFO: Access modifiers changed from: package-private */
    @e(b = "SlidingWindow.kt", c = {34, 40, 49, 55, 58}, d = "invokeSuspend", e = "kotlin.collections.SlidingWindowKt$windowedIterator$1")
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "Lkotlin/sequences/SequenceScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/a/at$a.class */
    public static final class a extends i implements Function2<j<? super List<? extends T>>, d<? super v>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f36580a;

        /* renamed from: b  reason: collision with root package name */
        Object f36581b;

        /* renamed from: c  reason: collision with root package name */
        int f36582c;

        /* renamed from: d  reason: collision with root package name */
        int f36583d;
        final /* synthetic */ int e;
        final /* synthetic */ int f;
        final /* synthetic */ Iterator g;
        final /* synthetic */ boolean h;
        final /* synthetic */ boolean i;
        private /* synthetic */ Object j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, int i2, Iterator it2, boolean z, boolean z2, d dVar) {
            super(2, dVar);
            this.e = i;
            this.f = i2;
            this.g = it2;
            this.h = z;
            this.i = z2;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x014c  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0153  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01b2  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x01d9  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x02e5  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x02fc  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0361  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x013f -> B:34:0x0144). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x02b7 -> B:71:0x02bc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x0348 -> B:87:0x034d). Please submit an issue!!! */
        @Override // kotlin.c.b.a.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 922
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.a.at.a.a(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.c.b.a.a
        public final d<v> a(Object obj, d<?> completion) {
            p.d(completion, "completion");
            a aVar = new a(this.e, this.f, this.g, this.h, this.i, completion);
            aVar.j = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, d<? super v> dVar) {
            return ((a) a(obj, dVar)).a(v.f38654a);
        }
    }
}
