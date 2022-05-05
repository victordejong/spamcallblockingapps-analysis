package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.regex.MatchResult;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\t\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"kotlin/text/MatcherMatchResult$groupValues$1", "Lkotlin/collections/AbstractList;", "", FirebaseAnalytics.Param.INDEX, "", "get", "(I)Ljava/lang/String;", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/MatcherMatchResult$groupValues$1.class */
public final class MatcherMatchResult$groupValues$1 extends AbstractList<String> {

    /* renamed from: g */
    final /* synthetic */ MatcherMatchResult f21036g;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        MatchResult b;
        b = this.f21036g.m1562b();
        return b.groupCount() + 1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof String) {
            return m1561e((String) obj);
        }
        return false;
    }

    /* renamed from: e */
    public /* bridge */ boolean m1561e(String str) {
        return super.contains(str);
    }

    @NotNull
    /* renamed from: f */
    public String get(int i) {
        MatchResult b;
        b = this.f21036g.m1562b();
        String group = b.group(i);
        if (group == null) {
            group = "";
        }
        return group;
    }

    /* renamed from: g */
    public /* bridge */ int m1559g(String str) {
        return super.indexOf(str);
    }

    /* renamed from: h */
    public /* bridge */ int m1558h(String str) {
        return super.lastIndexOf(str);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof String) {
            return m1559g((String) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof String) {
            return m1558h((String) obj);
        }
        return -1;
    }
}
