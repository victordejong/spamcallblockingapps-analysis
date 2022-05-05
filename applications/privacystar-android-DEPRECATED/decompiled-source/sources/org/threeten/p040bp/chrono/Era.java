package org.threeten.p040bp.chrono;

import java.util.Locale;
import org.threeten.p040bp.format.TextStyle;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalAdjuster;
/* renamed from: org.threeten.bp.chrono.Era */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/Era.class */
public interface Era extends TemporalAccessor, TemporalAdjuster {
    String getDisplayName(TextStyle textStyle, Locale locale);

    int getValue();
}
