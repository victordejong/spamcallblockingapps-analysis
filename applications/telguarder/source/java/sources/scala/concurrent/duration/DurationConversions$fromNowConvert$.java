package scala.concurrent.duration;

import scala.concurrent.duration.DurationConversions;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/DurationConversions$fromNowConvert$.class */
public class DurationConversions$fromNowConvert$ implements DurationConversions.Classifier<package$fromNow$> {
    public static final DurationConversions$fromNowConvert$ MODULE$ = null;

    static {
        new DurationConversions$fromNowConvert$();
    }

    public DurationConversions$fromNowConvert$() {
        MODULE$ = this;
    }

    @Override // scala.concurrent.duration.DurationConversions.Classifier
    public Deadline convert(FiniteDuration finiteDuration) {
        return Deadline$.MODULE$.now().$plus(finiteDuration);
    }
}
