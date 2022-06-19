package kotlin.p518a;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.analytics.Reporting;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000f\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a&\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u0087\b¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0006\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0087\b\u001a!\u0010\u0006\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0087\b\u001a \u0010\t\u001a\u00020\u0001\"\u000e\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\n*\b\u0012\u0004\u0012\u0002H\u00020\u0003\u001a6\u0010\t\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\r0\fH\u0087\bø\u0001��\u001a5\u0010\t\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u001a\u0010\u000e\u001a\u0016\u0012\u0006\b��\u0012\u0002H\u00020\u000fj\n\u0012\u0006\b��\u0012\u0002H\u0002`\u0010H\u0087\b\u001a2\u0010\u0011\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u001a\u0010\u000e\u001a\u0016\u0012\u0006\b��\u0012\u0002H\u00020\u000fj\n\u0012\u0006\b��\u0012\u0002H\u0002`\u0010\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, m4298d2 = {Reporting.EventType.FILL, "", "T", "", "value", "(Ljava/util/List;Ljava/lang/Object;)V", "shuffle", "random", "Ljava/util/Random;", "sort", "", "comparison", "Lkotlin/Function2;", "", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "sortWith", "kotlin-stdlib"}, m4297k = 5, m4296mv = {1, 4, 1}, m4294xi = 1, m4293xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.a.t */
/* loaded from: classes5-dex2jar.jar:kotlin/a/t.class */
public class C18288t extends C18287s {
    /* renamed from: a */
    public static final <T> void m4161a(List<T> sortWith, Comparator<? super T> comparator) {
        C18524p.m3840d(sortWith, "$this$sortWith");
        C18524p.m3840d(comparator, "comparator");
        if (sortWith.size() > 1) {
            Collections.sort(sortWith, comparator);
        }
    }

    /* renamed from: c */
    public static final <T extends Comparable<? super T>> void m4160c(List<T> sort) {
        C18524p.m3840d(sort, "$this$sort");
        if (sort.size() > 1) {
            Collections.sort(sort);
        }
    }
}
