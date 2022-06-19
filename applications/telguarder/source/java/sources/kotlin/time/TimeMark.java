package kotlin.time;

import kotlin.Metadata;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b'\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u0004H&ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bJ\u001b\u0010\n\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\u0004H\u0096\u0002ø\u0001��¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u000e\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\u0004H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u000f\u0010\r\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0010"}, m400d2 = {"Lkotlin/time/TimeMark;", "", "()V", "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "()D", "hasNotPassedNow", "", "hasPassedNow", "minus", "duration", "minus-LRDsOJo", "(D)Lkotlin/time/TimeMark;", "plus", "plus-LRDsOJo", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/time/TimeMark.class */
public abstract class TimeMark {
    /* renamed from: elapsedNow-UwyO8pc */
    public abstract double mo5531elapsedNowUwyO8pc();

    public final boolean hasNotPassedNow() {
        return Duration.m5560isNegativeimpl(mo5531elapsedNowUwyO8pc());
    }

    public final boolean hasPassedNow() {
        return !Duration.m5560isNegativeimpl(mo5531elapsedNowUwyO8pc());
    }

    /* renamed from: minus-LRDsOJo */
    public TimeMark m5592minusLRDsOJo(double d) {
        return mo5532plusLRDsOJo(Duration.m5580unaryMinusUwyO8pc(d));
    }

    /* renamed from: plus-LRDsOJo */
    public TimeMark mo5532plusLRDsOJo(double d) {
        return new AdjustedTimeMark(this, d, null);
    }
}
