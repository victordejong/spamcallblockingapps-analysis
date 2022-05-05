package p660rx.internal.util;

import java.util.List;
import p660rx.Notification;
import p660rx.Observable;
import p660rx.exceptions.OnErrorNotImplementedException;
import p660rx.functions.Action1;
import p660rx.functions.Func1;
import p660rx.functions.Func2;
import p660rx.internal.operators.OperatorAny;
/* renamed from: rx.internal.util.InternalObservableUtils */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/InternalObservableUtils.class */
public enum InternalObservableUtils {
    ;
    
    public static final Action1<Throwable> ERROR_NOT_IMPLEMENTED = new Action1<Throwable>() { // from class: rx.internal.util.InternalObservableUtils.ErrorNotImplementedAction
        @Override // p660rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Throwable th) {
            call2(th);
            throw null;
        }

        /* renamed from: call  reason: avoid collision after fix types in other method */
        public void call2(Throwable th) {
            throw new OnErrorNotImplementedException(th);
        }
    };

    static {
        new Func2<Long, Object, Long>() { // from class: rx.internal.util.InternalObservableUtils.PlusOneLongFunc2
            public Long call(Long l, Object obj) {
                return Long.valueOf(l.longValue() + 1);
            }
        };
        new Func2<Object, Object, Boolean>() { // from class: rx.internal.util.InternalObservableUtils.ObjectEqualsFunc2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // p660rx.functions.Func2
            public Boolean call(Object obj, Object obj2) {
                return Boolean.valueOf(obj == obj2 || (obj != null && obj.equals(obj2)));
            }
        };
        new Func1<List<? extends Observable<?>>, Observable<?>[]>() { // from class: rx.internal.util.InternalObservableUtils.ToArrayFunc1
            public Observable<?>[] call(List<? extends Observable<?>> list) {
                return (Observable[]) list.toArray(new Observable[list.size()]);
            }
        };
        new Func1<Object, Void>() { // from class: rx.internal.util.InternalObservableUtils.ReturnsVoidFunc1
            @Override // p660rx.functions.Func1
            public Void call(Object obj) {
                return null;
            }
        };
        new Func2<Integer, Object, Integer>() { // from class: rx.internal.util.InternalObservableUtils.PlusOneFunc2
            public Integer call(Integer num, Object obj) {
                return Integer.valueOf(num.intValue() + 1);
            }
        };
        new Func1<Notification<?>, Throwable>() { // from class: rx.internal.util.InternalObservableUtils.NotificationErrorExtractor
            public Throwable call(Notification<?> notification) {
                return notification.getThrowable();
            }
        };
        new OperatorAny(UtilityFunctions.alwaysTrue(), true);
    }
}
