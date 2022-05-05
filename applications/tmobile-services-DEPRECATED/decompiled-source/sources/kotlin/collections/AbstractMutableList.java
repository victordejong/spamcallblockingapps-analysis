package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractList;
import java.util.List;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.markers.KMutableList;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\b'\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t\b\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00028��H&¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00028��2\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u000b\u0010\fJ \u0010\r\u001a\u00028��2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00028��H¦\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lkotlin/collections/AbstractMutableList;", "E", "Ljava/util/List;", "Lkotlin/jvm/internal/markers/KMutableList;", "Ljava/util/AbstractList;", "", FirebaseAnalytics.Param.INDEX, "element", "", "add", "(ILjava/lang/Object;)V", "removeAt", "(I)Ljava/lang/Object;", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMutableList.class */
public abstract class AbstractMutableList<E> extends AbstractList<E> implements List<E>, KMutableList {
    /* renamed from: c */
    public abstract int mo2050c();

    /* renamed from: e */
    public abstract E mo2049e(int i);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int i) {
        return mo2049e(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return mo2050c();
    }
}
