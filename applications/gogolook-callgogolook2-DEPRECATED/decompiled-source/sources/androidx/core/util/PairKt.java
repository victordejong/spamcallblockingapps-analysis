package androidx.core.util;

import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14978j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a2\u0010��\u001a\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\"\u0004\b��\u0010\u0001\"\u0004\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004H\u0086\n¢\u0006\u0002\u0010\u0005\u001a2\u0010\u0006\u001a\n \u0002*\u0004\u0018\u0001H\u0003H\u0003\"\u0004\b��\u0010\u0001\"\u0004\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004H\u0086\n¢\u0006\u0002\u0010\u0005\u001a1\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004\"\u0004\b��\u0010\u0001\"\u0004\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\bH\u0086\b\u001aA\u0010\t\u001a\u001e\u0012\f\u0012\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\u0012\f\u0012\n \u0002*\u0004\u0018\u0001H\u0003H\u00030\b\"\u0004\b��\u0010\u0001\"\u0004\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004H\u0086\b¨\u0006\n"}, m815d2 = {"component1", "F", "kotlin.jvm.PlatformType", ExifInterface.LATITUDE_SOUTH, "Landroid/util/Pair;", "(Landroid/util/Pair;)Ljava/lang/Object;", "component2", "toAndroidPair", "Lkotlin/Pair;", "toKotlinPair", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/util/PairKt.class */
public final class PairKt {
    public static final <F, S> F component1(Pair<F, S> pair) {
        C15149k.m377b(pair, "$this$component1");
        return (F) pair.first;
    }

    public static final <F, S> S component2(Pair<F, S> pair) {
        C15149k.m377b(pair, "$this$component2");
        return (S) pair.second;
    }

    public static final <F, S> Pair<F, S> toAndroidPair(C14978j<? extends F, ? extends S> jVar) {
        C15149k.m377b(jVar, "$this$toAndroidPair");
        return new Pair<>(jVar.m659c(), jVar.m658d());
    }

    public static final <F, S> C14978j<F, S> toKotlinPair(Pair<F, S> pair) {
        C15149k.m377b(pair, "$this$toKotlinPair");
        return new C14978j<>(pair.first, pair.second);
    }
}
