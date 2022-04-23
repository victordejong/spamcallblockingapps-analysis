package kotlin.h;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.a.d;
import kotlin.a.n;
import kotlin.f.c;
import kotlin.h.j;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lkotlin/text/MatcherMatchResult;", "Lkotlin/text/MatchResult;", "matcher", "Ljava/util/regex/Matcher;", "input", "", "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V", "groupValues", "", "", "getGroupValues", "()Ljava/util/List;", "groupValues_", "groups", "Lkotlin/text/MatchGroupCollection;", "getGroups", "()Lkotlin/text/MatchGroupCollection;", "matchResult", "Ljava/util/regex/MatchResult;", "getMatchResult", "()Ljava/util/regex/MatchResult;", "range", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", "value", "getValue", "()Ljava/lang/String;", "next", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/h/k.class */
public final class k implements j {

    /* renamed from: a  reason: collision with root package name */
    final Matcher f36734a;

    /* renamed from: b  reason: collision with root package name */
    private final h f36735b = new b();

    /* renamed from: c  reason: collision with root package name */
    private List<String> f36736c;

    /* renamed from: d  reason: collision with root package name */
    private final CharSequence f36737d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0005*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0011\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0096\u0002R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"kotlin/text/MatcherMatchResult$groupValues$1", "Lkotlin/collections/AbstractList;", "", "size", "", "getSize", "()I", "get", "index", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/h/k$a.class */
    public static final class a extends d<String> {
        a() {
        }

        @Override // kotlin.a.a
        public final int a() {
            return k.this.f36734a.groupCount() + 1;
        }

        @Override // kotlin.a.a, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (!(obj instanceof String)) {
                return false;
            }
            return super.contains((String) obj);
        }

        @Override // kotlin.a.d, java.util.List
        public final /* synthetic */ Object get(int i) {
            String group = k.this.f36734a.group(i);
            String str = group;
            if (group == null) {
                str = "";
            }
            return str;
        }

        @Override // kotlin.a.d, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (!(obj instanceof String)) {
                return -1;
            }
            return super.indexOf((String) obj);
        }

        @Override // kotlin.a.d, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (!(obj instanceof String)) {
                return -1;
            }
            return super.lastIndexOf((String) obj);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��-\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010(\n��*\u0001��\b\n\u0018��2\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u0013\u0010\b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0096\u0002J\u0013\u0010\b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000fH\u0096\u0002R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"kotlin/text/MatcherMatchResult$groups$1", "Lkotlin/text/MatchNamedGroupCollection;", "Lkotlin/collections/AbstractCollection;", "Lkotlin/text/MatchGroup;", "size", "", "getSize", "()I", "get", "index", "name", "", "isEmpty", "", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/h/k$b.class */
    public static final class b extends kotlin.a.a<g> implements i {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/text/MatchGroup;", "it", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/h/k$b$a.class */
        static final class a extends r implements Function1<Integer, g> {
            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ g invoke(Integer num) {
                int intValue = num.intValue();
                b bVar = b.this;
                Matcher matcher = k.this.f36734a;
                c b2 = kotlin.f.d.b(matcher.start(intValue), matcher.end(intValue));
                if (b2.f36664a < 0) {
                    return null;
                }
                String group = k.this.f36734a.group(intValue);
                p.b(group, "matchResult.group(index)");
                return new g(group, b2);
            }
        }

        b() {
        }

        @Override // kotlin.a.a
        public final int a() {
            return k.this.f36734a.groupCount() + 1;
        }

        @Override // kotlin.a.a, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (!(obj != null ? obj instanceof g : true)) {
                return false;
            }
            return super.contains((g) obj);
        }

        @Override // kotlin.a.a, java.util.Collection
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator<g> iterator() {
            return kotlin.g.k.d(n.p(n.a((Collection<?>) this)), new a()).a();
        }
    }

    public k(Matcher matcher, CharSequence input) {
        p.d(matcher, "matcher");
        p.d(input, "input");
        this.f36734a = matcher;
        this.f36737d = input;
    }

    @Override // kotlin.h.j
    public final c a() {
        Matcher matcher = this.f36734a;
        return kotlin.f.d.b(matcher.start(), matcher.end());
    }

    @Override // kotlin.h.j
    public final List<String> b() {
        if (this.f36736c == null) {
            this.f36736c = new a();
        }
        List<String> list = this.f36736c;
        p.a(list);
        return list;
    }

    @Override // kotlin.h.j
    public final j.a c() {
        return new j.a(this);
    }

    @Override // kotlin.h.j
    public final j d() {
        int end = this.f36734a.end() + (this.f36734a.end() == this.f36734a.start() ? 1 : 0);
        if (end > this.f36737d.length()) {
            return null;
        }
        Matcher matcher = this.f36734a.pattern().matcher(this.f36737d);
        p.b(matcher, "matcher.pattern().matcher(input)");
        return m.a(matcher, end, this.f36737d);
    }
}
