package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.operators.flowable.FlowableGroupJoin$LeftRightEndSubscriber;
import io.reactivex.internal.operators.flowable.FlowableGroupJoin$LeftRightSubscriber;
/* renamed from: d.c.b0.e.b.j */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/j.class */
public interface AbstractC9692j {
    void innerClose(boolean z, FlowableGroupJoin$LeftRightEndSubscriber flowableGroupJoin$LeftRightEndSubscriber);

    void innerCloseError(Throwable th);

    void innerComplete(FlowableGroupJoin$LeftRightSubscriber flowableGroupJoin$LeftRightSubscriber);

    void innerError(Throwable th);

    void innerValue(boolean z, Object obj);
}
