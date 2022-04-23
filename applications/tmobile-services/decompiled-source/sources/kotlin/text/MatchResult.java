package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018��2\u00020\u0001:\u0001\u0018J\u0011\u0010\u0002\u001a\u0004\u0018\u00010��H&¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0007\u001a\u00020\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\t8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lkotlin/text/MatchResult;", "Lkotlin/Any;", "next", "()Lkotlin/text/MatchResult;", "Lkotlin/text/MatchResult$Destructured;", "getDestructured", "()Lkotlin/text/MatchResult$Destructured;", "destructured", "", "", "getGroupValues", "()Ljava/util/List;", "groupValues", "Lkotlin/text/MatchGroupCollection;", "getGroups", "()Lkotlin/text/MatchGroupCollection;", "groups", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", "range", "getValue", "()Ljava/lang/String;", FirebaseAnalytics.Param.VALUE, "Destructured", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/MatchResult.class */
public interface MatchResult {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/text/MatchResult$DefaultImpls.class */
    public static final class DefaultImpls {
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��B\u0011\b��\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0002\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\u0004\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\u0005\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\u0006\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\u0007\u0010\u0003J\u0010\u0010\b\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\b\u0010\u0003J\u0010\u0010\t\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\t\u0010\u0003J\u0010\u0010\n\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\n\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\u000b\u0010\u0003J\u0010\u0010\f\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\f\u0010\u0003J\u0013\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lkotlin/text/MatchResult$Destructured;", "", "component1", "()Ljava/lang/String;", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "", "toList", "()Ljava/util/List;", "Lkotlin/text/MatchResult;", "match", "Lkotlin/text/MatchResult;", "getMatch", "()Lkotlin/text/MatchResult;", "<init>", "(Lkotlin/text/MatchResult;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/text/MatchResult$Destructured.class */
    public static final class Destructured {
    }

    @Nullable
    MatchResult next();
}
