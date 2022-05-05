package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlinx.coroutines.InternalCoroutinesApi;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��*\u0006\b��\u0010\u0001 ��*\u0006\b\u0001\u0010\u0002 \u00012\u00020\u0003JP\u0010\u0004\u001a\u00020\u0005\"\u0004\b\u0002\u0010\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\b2\u0006\u0010\t\u001a\u00028��2\"\u0010\n\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\f\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000bH'ø\u0001��¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m815d2 = {"Lkotlinx/coroutines/selects/SelectClause2;", "P", "Q", "", "registerSelectClause2", "", "R", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "param", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectClause2.class */
public interface SelectClause2<P, Q> {
    @InternalCoroutinesApi
    <R> void registerSelectClause2(SelectInstance<? super R> selectInstance, P p, AbstractC15122p<? super Q, ? super AbstractC15044d<? super R>, ? extends Object> pVar);
}
