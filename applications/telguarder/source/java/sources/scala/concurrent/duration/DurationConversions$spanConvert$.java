package scala.concurrent.duration;

import scala.concurrent.duration.DurationConversions;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/DurationConversions$spanConvert$.class */
public class DurationConversions$spanConvert$ implements DurationConversions.Classifier<package$span$> {
    public static final DurationConversions$spanConvert$ MODULE$ = null;

    static {
        new DurationConversions$spanConvert$();
    }

    public DurationConversions$spanConvert$() {
        MODULE$ = this;
    }

    @Override // scala.concurrent.duration.DurationConversions.Classifier
    public FiniteDuration convert(FiniteDuration finiteDuration) {
        return finiteDuration;
    }
}
