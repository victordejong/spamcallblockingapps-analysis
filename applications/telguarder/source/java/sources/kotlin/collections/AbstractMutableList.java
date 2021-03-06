package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableList;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\b'\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007\b\u0004¢\u0006\u0002\u0010\u0004J\u001d\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028��H&¢\u0006\u0002\u0010\nJ\u0015\u0010\u000b\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\bH&¢\u0006\u0002\u0010\fJ\u001e\u0010\r\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028��H¦\u0002¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, m400d2 = {"Lkotlin/collections/AbstractMutableList;", ExifInterface.LONGITUDE_EAST, "", "Ljava/util/AbstractList;", "()V", "add", "", FirebaseAnalytics.Param.INDEX, "", "element", "(ILjava/lang/Object;)V", "removeAt", "(I)Ljava/lang/Object;", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/collections/AbstractMutableList.class */
public abstract class AbstractMutableList<E> extends AbstractList<E> implements List<E>, KMutableList {
    @Override // java.util.AbstractList, java.util.List
    public abstract void add(int i, E e);

    public abstract int getSize();

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int i) {
        return removeAt(i);
    }

    public abstract E removeAt(int i);

    @Override // java.util.AbstractList, java.util.List
    public abstract E set(int i, E e);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }
}
