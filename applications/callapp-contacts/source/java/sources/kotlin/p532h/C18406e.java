package kotlin.p532h;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
import kotlin.p530f.C18361c;
import kotlin.p530f.C18363d;
import kotlin.p531g.AbstractC18378h;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n��\b\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012:\u0010\b\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t¢\u0006\u0002\b\u000e¢\u0006\u0002\u0010\u000fJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0096\u0002RB\u0010\b\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t¢\u0006\u0002\b\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lkotlin/text/DelimitedRangesSequence;", "Lkotlin/sequences/Sequence;", "Lkotlin/ranges/IntRange;", "input", "", "startIndex", "", "limit", "getNextMatch", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "currentIndex", "Lkotlin/Pair;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V", "iterator", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.h.e */
/* loaded from: classes5-dex2jar.jar:kotlin/h/e.class */
public final class C18406e implements AbstractC18378h<C18361c> {

    /* renamed from: a */
    private final CharSequence f63525a;

    /* renamed from: b */
    private final int f63526b;

    /* renamed from: c */
    private final int f63527c;

    /* renamed from: d */
    private final Function2<CharSequence, Integer, C18538n<Integer, Integer>> f63528d;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��%\n��\n\u0002\u0010(\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0002J\t\u0010\u001b\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0002X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0006\"\u0004\b\u0013\u0010\bR\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\b¨\u0006\u001c"}, m4298d2 = {"kotlin/text/DelimitedRangesSequence$iterator$1", "", "Lkotlin/ranges/IntRange;", "counter", "", "getCounter", "()I", "setCounter", "(I)V", "currentStartIndex", "getCurrentStartIndex", "setCurrentStartIndex", "nextItem", "getNextItem", "()Lkotlin/ranges/IntRange;", "setNextItem", "(Lkotlin/ranges/IntRange;)V", "nextSearchIndex", "getNextSearchIndex", "setNextSearchIndex", "nextState", "getNextState", "setNextState", "calcNext", "", "hasNext", "", "next", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.h.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/h/e$a.class */
    public static final class C18407a implements Iterator<C18361c>, AbstractC18481a {

        /* renamed from: b */
        private int f63530b = -1;

        /* renamed from: c */
        private int f63531c;

        /* renamed from: d */
        private int f63532d;

        /* renamed from: e */
        private C18361c f63533e;

        /* renamed from: f */
        private int f63534f;

        C18407a() {
            C18406e.this = r5;
            int a = C18363d.m4055a(r5.f63526b, 0, r5.f63525a.length());
            this.f63531c = a;
            this.f63532d = a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
            if (r0 < kotlin.p532h.C18406e.this.f63527c) goto L10;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void m3992a() {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.p532h.C18406e.C18407a.m3992a():void");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f63530b == -1) {
                m3992a();
            }
            return this.f63530b == 1;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ C18361c next() {
            if (this.f63530b == -1) {
                m3992a();
            }
            if (this.f63530b != 0) {
                C18361c c18361c = this.f63533e;
                Objects.requireNonNull(c18361c, "null cannot be cast to non-null type kotlin.ranges.IntRange");
                this.f63533e = null;
                this.f63530b = -1;
                return c18361c;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C18406e(CharSequence input, int i, int i2, Function2<? super CharSequence, ? super Integer, C18538n<Integer, Integer>> getNextMatch) {
        C18524p.m3840d(input, "input");
        C18524p.m3840d(getNextMatch, "getNextMatch");
        this.f63525a = input;
        this.f63526b = i;
        this.f63527c = i2;
        this.f63528d = getNextMatch;
    }

    @Override // kotlin.p531g.AbstractC18378h
    /* renamed from: a */
    public final Iterator<C18361c> mo3908a() {
        return new C18407a();
    }
}
