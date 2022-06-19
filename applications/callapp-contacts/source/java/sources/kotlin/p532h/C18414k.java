package kotlin.p532h;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.AbstractC18225a;
import kotlin.p518a.AbstractC18264d;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18361c;
import kotlin.p530f.C18363d;
import kotlin.p531g.C18381k;
import kotlin.p532h.AbstractC18412j;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, m4298d2 = {"Lkotlin/text/MatcherMatchResult;", "Lkotlin/text/MatchResult;", "matcher", "Ljava/util/regex/Matcher;", "input", "", "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V", "groupValues", "", "", "getGroupValues", "()Ljava/util/List;", "groupValues_", "groups", "Lkotlin/text/MatchGroupCollection;", "getGroups", "()Lkotlin/text/MatchGroupCollection;", "matchResult", "Ljava/util/regex/MatchResult;", "getMatchResult", "()Ljava/util/regex/MatchResult;", "range", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", "value", "getValue", "()Ljava/lang/String;", "next", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.h.k */
/* loaded from: classes5-dex2jar.jar:kotlin/h/k.class */
public final class C18414k implements AbstractC18412j {

    /* renamed from: a */
    final Matcher f63538a;

    /* renamed from: b */
    private final AbstractC18410h f63539b = new C18416b();

    /* renamed from: c */
    private List<String> f63540c;

    /* renamed from: d */
    private final CharSequence f63541d;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0005*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0096\u0002R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m4298d2 = {"kotlin/text/MatcherMatchResult$groupValues$1", "Lkotlin/collections/AbstractList;", "", "size", "", "getSize", "()I", "get", "index", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.h.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/h/k$a.class */
    public static final class C18415a extends AbstractC18264d<String> {
        C18415a() {
            C18414k.this = r4;
        }

        @Override // kotlin.p518a.AbstractC18225a
        /* renamed from: a */
        public final int mo3987a() {
            return C18414k.this.f63538a.groupCount() + 1;
        }

        @Override // kotlin.p518a.AbstractC18225a, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (!(obj instanceof String)) {
                return false;
            }
            return super.contains((String) obj);
        }

        @Override // kotlin.p518a.AbstractC18264d, java.util.List
        public final /* synthetic */ Object get(int i) {
            String group = C18414k.this.f63538a.group(i);
            String str = group;
            if (group == null) {
                str = "";
            }
            return str;
        }

        @Override // kotlin.p518a.AbstractC18264d, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (!(obj instanceof String)) {
                return -1;
            }
            return super.indexOf((String) obj);
        }

        @Override // kotlin.p518a.AbstractC18264d, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (!(obj instanceof String)) {
                return -1;
            }
            return super.lastIndexOf((String) obj);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��-\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010(\n��*\u0001��\b\n\u0018��2\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u0013\u0010\b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0096\u0002J\u0013\u0010\b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000fH\u0096\u0002R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, m4298d2 = {"kotlin/text/MatcherMatchResult$groups$1", "Lkotlin/text/MatchNamedGroupCollection;", "Lkotlin/collections/AbstractCollection;", "Lkotlin/text/MatchGroup;", "size", "", "getSize", "()I", "get", "index", "name", "", "isEmpty", "", "iterator", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.h.k$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/h/k$b.class */
    public static final class C18416b extends AbstractC18225a<C18409g> implements AbstractC18411i {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/text/MatchGroup;", "it", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.h.k$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/h/k$b$a.class */
        static final class C18417a extends AbstractC18526r implements Function1<Integer, C18409g> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18417a() {
                super(1);
                C18416b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ C18409g invoke(Integer num) {
                int intValue = num.intValue();
                C18416b c18416b = C18416b.this;
                Matcher matcher = C18414k.this.f63538a;
                C18361c b = C18363d.m4052b(matcher.start(intValue), matcher.end(intValue));
                if (b.f63459a >= 0) {
                    String group = C18414k.this.f63538a.group(intValue);
                    C18524p.m3843b(group, "matchResult.group(index)");
                    return new C18409g(group, b);
                }
                return null;
            }
        }

        C18416b() {
            C18414k.this = r4;
        }

        @Override // kotlin.p518a.AbstractC18225a
        /* renamed from: a */
        public final int mo3987a() {
            return C18414k.this.f63538a.groupCount() + 1;
        }

        @Override // kotlin.p518a.AbstractC18225a, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (!(obj != null ? obj instanceof C18409g : true)) {
                return false;
            }
            return super.contains((C18409g) obj);
        }

        @Override // kotlin.p518a.AbstractC18225a, java.util.Collection
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator<C18409g> iterator() {
            return C18381k.m4015d(C18282n.m4106p(C18282n.m4174a((Collection<?>) this)), new C18417a()).mo3908a();
        }
    }

    public C18414k(Matcher matcher, CharSequence input) {
        C18524p.m3840d(matcher, "matcher");
        C18524p.m3840d(input, "input");
        this.f63538a = matcher;
        this.f63541d = input;
    }

    @Override // kotlin.p532h.AbstractC18412j
    /* renamed from: a */
    public final C18361c mo3991a() {
        Matcher matcher = this.f63538a;
        return C18363d.m4052b(matcher.start(), matcher.end());
    }

    @Override // kotlin.p532h.AbstractC18412j
    /* renamed from: b */
    public final List<String> mo3990b() {
        if (this.f63540c == null) {
            this.f63540c = new C18415a();
        }
        List<String> list = this.f63540c;
        C18524p.m3851a(list);
        return list;
    }

    @Override // kotlin.p532h.AbstractC18412j
    /* renamed from: c */
    public final AbstractC18412j.C18413a mo3989c() {
        return new AbstractC18412j.C18413a(this);
    }

    @Override // kotlin.p532h.AbstractC18412j
    /* renamed from: d */
    public final AbstractC18412j mo3988d() {
        int end = this.f63538a.end() + (this.f63538a.end() == this.f63538a.start() ? 1 : 0);
        if (end <= this.f63541d.length()) {
            Matcher matcher = this.f63538a.pattern().matcher(this.f63541d);
            C18524p.m3843b(matcher, "matcher.pattern().matcher(input)");
            return C18422m.m3979a(matcher, end, this.f63541d);
        }
        return null;
    }
}
