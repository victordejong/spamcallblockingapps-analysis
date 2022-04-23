package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.trackselection.BufferSizeAdaptationBuilder;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter$$Lambda$0.class */
public final /* synthetic */ class BufferSizeAdaptationBuilder$DynamicFormatFilter$$Lambda$0 implements BufferSizeAdaptationBuilder.DynamicFormatFilter {
    public static final BufferSizeAdaptationBuilder.DynamicFormatFilter $instance = new BufferSizeAdaptationBuilder$DynamicFormatFilter$$Lambda$0();

    @Override // androidx.media2.exoplayer.external.trackselection.BufferSizeAdaptationBuilder.DynamicFormatFilter
    public boolean isFormatAllowed(Format format, int i, boolean z) {
        return BufferSizeAdaptationBuilder$DynamicFormatFilter$$CC.m37491x98f47864(format, i, z);
    }
}
