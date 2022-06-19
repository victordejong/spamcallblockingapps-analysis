package kotlin.p518a;

import java.util.Iterator;
import java.util.List;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.p523b.p524a.AbstractC18320e;
import kotlin.p521c.p523b.p524a.AbstractC18325i;
import kotlin.p531g.AbstractC18380j;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H��\u001aH\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u0006\"\u0004\b��\u0010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH��\u001aD\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u000e\"\u0004\b��\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH��¨\u0006\u000f"}, m4298d2 = {"checkWindowSizeStep", "", "size", "", "step", "windowedIterator", "", "", "T", "iterator", "partialWindows", "", "reuseBuffer", "windowedSequence", "Lkotlin/sequences/Sequence;", "kotlin-stdlib"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.a.at */
/* loaded from: classes5-dex2jar.jar:kotlin/a/at.class */
public final class C18259at {

    @AbstractC18320e(m4089b = "SlidingWindow.kt", m4088c = {34, 40, 49, 55, 58}, m4087d = "invokeSuspend", m4086e = "kotlin.collections.SlidingWindowKt$windowedIterator$1")
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m4298d2 = {"<anonymous>", "", "T", "Lkotlin/sequences/SequenceScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.a.at$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/a/at$a.class */
    public static final class C18260a extends AbstractC18325i implements Function2<AbstractC18380j<? super List<? extends T>>, AbstractC18332d<? super C20128v>, Object> {

        /* renamed from: a */
        Object f63365a;

        /* renamed from: b */
        Object f63366b;

        /* renamed from: c */
        int f63367c;

        /* renamed from: d */
        int f63368d;

        /* renamed from: e */
        final /* synthetic */ int f63369e;

        /* renamed from: f */
        final /* synthetic */ int f63370f;

        /* renamed from: g */
        final /* synthetic */ Iterator f63371g;

        /* renamed from: h */
        final /* synthetic */ boolean f63372h;

        /* renamed from: i */
        final /* synthetic */ boolean f63373i;

        /* renamed from: j */
        private /* synthetic */ Object f63374j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18260a(int i, int i2, Iterator it2, boolean z, boolean z2, AbstractC18332d abstractC18332d) {
            super(2, abstractC18332d);
            this.f63369e = i;
            this.f63370f = i2;
            this.f63371g = it2;
            this.f63372h = z;
            this.f63373i = z2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x014c  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0153  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01b2  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x01d9  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x02e5  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x02fc  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0361  */
        /* JADX WARN: Type inference failed for: r0v119, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r0v41, types: [java.util.List] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x013f -> B:34:0x0144). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x02b7 -> B:71:0x02bc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x0348 -> B:87:0x034d). Please submit an issue!!! */
        @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo57a(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 922
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.p518a.C18259at.C18260a.mo57a(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
        /* renamed from: a */
        public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
            C18524p.m3840d(completion, "completion");
            C18260a c18260a = new C18260a(this.f63369e, this.f63370f, this.f63371g, this.f63372h, this.f63373i, completion);
            c18260a.f63374j = obj;
            return c18260a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, AbstractC18332d<? super C20128v> abstractC18332d) {
            return ((C18260a) mo4095a(obj, abstractC18332d)).mo57a(C20128v.f66529a);
        }
    }
}
