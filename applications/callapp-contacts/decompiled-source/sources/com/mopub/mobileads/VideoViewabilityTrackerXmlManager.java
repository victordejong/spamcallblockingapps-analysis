package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTrackerXmlManager.class */
public class VideoViewabilityTrackerXmlManager {
    public static final String PERCENT_VIEWABLE = "percentViewable";
    public static final String VIEWABLE_PLAYTIME = "viewablePlaytime";

    /* renamed from: a  reason: collision with root package name */
    final Node f34368a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoViewabilityTrackerXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f34368a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007f A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Integer a() {
        /*
            r10 = this;
            r0 = r10
            org.w3c.dom.Node r0 = r0.f34368a
            java.lang.String r1 = "viewablePlaytime"
            java.lang.String r0 = com.mopub.mobileads.util.XmlUtils.getAttributeValue(r0, r1)
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0010
            r0 = 0
            return r0
        L_0x0010:
            com.mopub.mobileads.VastAbsoluteProgressTracker$Companion r0 = com.mopub.mobileads.VastAbsoluteProgressTracker.Companion
            r1 = r11
            boolean r0 = r0.isAbsoluteTracker(r1)
            if (r0 == 0) goto L_0x0043
            com.mopub.mobileads.VastAbsoluteProgressTracker$Companion r0 = com.mopub.mobileads.VastAbsoluteProgressTracker.Companion     // Catch: NumberFormatException -> 0x0025
            r1 = r11
            java.lang.Integer r0 = r0.parseAbsoluteOffset(r1)     // Catch: NumberFormatException -> 0x0025
            r12 = r0
            goto L_0x006f
        L_0x0025:
            r12 = move-exception
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "Invalid VAST viewablePlaytime format for \"HH:MM:SS[.mmm]\": %s:"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r6 = r5
            r7 = 0
            r8 = r11
            r6[r7] = r8
            java.lang.String r4 = java.lang.String.format(r4, r5)
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            goto L_0x006d
        L_0x0043:
            r0 = r11
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: NumberFormatException -> 0x0052
            r1 = 1148846080(0x447a0000, float:1000.0)
            float r0 = r0 * r1
            int r0 = (int) r0     // Catch: NumberFormatException -> 0x0052
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: NumberFormatException -> 0x0052
            r12 = r0
            goto L_0x006f
        L_0x0052:
            r12 = move-exception
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "Invalid VAST viewablePlaytime format for \"SS[.mmm]\": %s:"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r6 = r5
            r7 = 0
            r8 = r11
            r6[r7] = r8
            java.lang.String r4 = java.lang.String.format(r4, r5)
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
        L_0x006d:
            r0 = 0
            r12 = r0
        L_0x006f:
            r0 = r12
            if (r0 == 0) goto L_0x007f
            r0 = r12
            int r0 = r0.intValue()
            if (r0 >= 0) goto L_0x007d
            goto L_0x007f
        L_0x007d:
            r0 = r12
            return r0
        L_0x007f:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VideoViewabilityTrackerXmlManager.a():java.lang.Integer");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Integer b() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f34368a, PERCENT_VIEWABLE);
        if (attributeValue == null) {
            return null;
        }
        try {
            num = Integer.valueOf((int) Float.parseFloat(attributeValue.replace("%", "")));
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST percentViewable format for \"d{1,3}%%\": %s:", attributeValue));
            num = null;
        }
        if (num == null || num.intValue() < 0 || num.intValue() > 100) {
            return null;
        }
        return num;
    }
}
