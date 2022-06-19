package kotlin.p518a;

import java.util.AbstractList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p534a.AbstractC18485e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\b'\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007\b\u0004¢\u0006\u0002\u0010\u0004J\u001d\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028��H&¢\u0006\u0002\u0010\nJ\u0015\u0010\u000b\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\bH&¢\u0006\u0002\u0010\fJ\u001e\u0010\r\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028��H¦\u0002¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, m4298d2 = {"Lkotlin/collections/AbstractMutableList;", "E", "", "Ljava/util/AbstractList;", "()V", "add", "", "index", "", "element", "(ILjava/lang/Object;)V", "removeAt", "(I)Ljava/lang/Object;", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.a.f */
/* loaded from: classes5-dex2jar.jar:kotlin/a/f.class */
public abstract class AbstractC18270f<E> extends AbstractList<E> implements List<E>, AbstractC18485e {
    /* renamed from: a */
    public abstract int mo4229a();

    /* renamed from: a */
    public abstract E mo4228a(int i);

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        return mo4228a(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return mo4229a();
    }
}
