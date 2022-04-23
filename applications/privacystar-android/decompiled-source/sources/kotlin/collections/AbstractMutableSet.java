package kotlin.collections;

import com.google.android.gms.analytics.ecommerce.ProductAction;
import java.util.AbstractSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.markers.KMutableSet;
@SinceKotlin(version = "1.1")
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b'\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007\b\u0004¢\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028��H&¢\u0006\u0002\u0010\b¨\u0006\t"}, m254d2 = {"Lkotlin/collections/AbstractMutableSet;", "E", "", "Ljava/util/AbstractSet;", "()V", ProductAction.ACTION_ADD, "", "element", "(Ljava/lang/Object;)Z", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMutableSet.class */
public abstract class AbstractMutableSet<E> extends AbstractSet<E> implements Set<E>, KMutableSet {
    protected AbstractMutableSet() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean add(E e);

    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }
}
