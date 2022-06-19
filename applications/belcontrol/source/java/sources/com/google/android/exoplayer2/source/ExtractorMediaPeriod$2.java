package com.google.android.exoplayer2.source;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ExtractorMediaPeriod$2.class */
public class ExtractorMediaPeriod$2 implements Runnable {
    public final /* synthetic */ ExtractorMediaPeriod this$0;

    public ExtractorMediaPeriod$2(ExtractorMediaPeriod extractorMediaPeriod) {
        this.this$0 = extractorMediaPeriod;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!ExtractorMediaPeriod.access$100(this.this$0)) {
            ExtractorMediaPeriod.access$200(this.this$0).onContinueLoadingRequested(this.this$0);
        }
    }
}
