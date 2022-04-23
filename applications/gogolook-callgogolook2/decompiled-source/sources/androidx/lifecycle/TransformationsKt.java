package androidx.lifecycle;

import androidx.arch.core.util.Function;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001f\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0086\b\u001a;\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0014\b\u0004\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0006H\u0086\b\u001aA\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u001a\b\u0004\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00010\u0006H\u0086\b¨\u0006\b"}, m815d2 = {"distinctUntilChanged", "Landroidx/lifecycle/LiveData;", "X", "map", "Y", "transform", "Lkotlin/Function1;", "switchMap", "lifecycle-livedata-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/TransformationsKt.class */
public final class TransformationsKt {
    public static final <X> LiveData<X> distinctUntilChanged(LiveData<X> liveData) {
        C15149k.m377b(liveData, "$this$distinctUntilChanged");
        LiveData<X> distinctUntilChanged = Transformations.distinctUntilChanged(liveData);
        C15149k.m383a((Object) distinctUntilChanged, "Transformations.distinctUntilChanged(this)");
        return distinctUntilChanged;
    }

    public static final <X, Y> LiveData<Y> map(LiveData<X> liveData, final AbstractC15118l<? super X, ? extends Y> lVar) {
        C15149k.m377b(liveData, "$this$map");
        C15149k.m377b(lVar, "transform");
        LiveData<Y> map = Transformations.map(liveData, new Function<X, Y>() { // from class: androidx.lifecycle.TransformationsKt$map$1
            /* JADX WARN: Type inference failed for: r0v2, types: [Y, java.lang.Object] */
            @Override // androidx.arch.core.util.Function
            public final Y apply(X x) {
                return AbstractC15118l.this.invoke(x);
            }
        });
        C15149k.m383a((Object) map, "Transformations.map(this) { transform(it) }");
        return map;
    }

    public static final <X, Y> LiveData<Y> switchMap(LiveData<X> liveData, final AbstractC15118l<? super X, ? extends LiveData<Y>> lVar) {
        C15149k.m377b(liveData, "$this$switchMap");
        C15149k.m377b(lVar, "transform");
        LiveData<Y> switchMap = Transformations.switchMap(liveData, new Function<X, LiveData<Y>>() { // from class: androidx.lifecycle.TransformationsKt$switchMap$1
            @Override // androidx.arch.core.util.Function
            public final LiveData<Y> apply(X x) {
                return (LiveData) AbstractC15118l.this.invoke(x);
            }
        });
        C15149k.m383a((Object) switchMap, "Transformations.switchMap(this) { transform(it) }");
        return switchMap;
    }
}
