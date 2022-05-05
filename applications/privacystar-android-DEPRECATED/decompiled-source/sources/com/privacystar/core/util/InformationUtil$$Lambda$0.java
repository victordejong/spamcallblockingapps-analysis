package com.privacystar.core.util;

import com.privacystar.core.data.call.call_event.LogItem;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/InformationUtil$$Lambda$0.class */
public final /* synthetic */ class InformationUtil$$Lambda$0 implements Comparator {
    static final Comparator $instance = new InformationUtil$$Lambda$0();

    private InformationUtil$$Lambda$0() {
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return InformationUtil.lambda$getCallHistory$0$InformationUtil((LogItem) obj, (LogItem) obj2);
    }
}
