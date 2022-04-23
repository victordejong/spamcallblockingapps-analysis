package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.DisposableHandle;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��*\u0004\b��\u0010\u00012\u00020\u0002J\u0019\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00028��H¦@ø\u0001��¢\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\rH¦@ø\u0001��¢\u0006\u0002\u0010\u000eR\u0014\u0010\u0003\u001a\u0004\u0018\u00018��X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, m815d2 = {"Landroidx/lifecycle/LiveDataScope;", ExifInterface.GPS_DIRECTION_TRUE, "", "latestValue", "getLatestValue", "()Ljava/lang/Object;", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emitSource", "Lkotlinx/coroutines/DisposableHandle;", "source", "Landroidx/lifecycle/LiveData;", "(Landroidx/lifecycle/LiveData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lifecycle-livedata-ktx_release"}, m814k = 1, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveDataScope.class */
public interface LiveDataScope<T> {
    Object emit(T t, AbstractC15044d<? super C14989s> dVar);

    Object emitSource(LiveData<T> liveData, AbstractC15044d<? super DisposableHandle> dVar);

    T getLatestValue();
}
