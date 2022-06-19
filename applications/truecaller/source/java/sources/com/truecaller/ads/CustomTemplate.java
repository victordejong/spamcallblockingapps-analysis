package com.truecaller.ads;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018�� \n2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u000bB\u0019\b\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007j\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/truecaller/ads/CustomTemplate;", "", "", "openUrl", "Z", "", "templateId", "Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;Z)V", "Companion", "a", "NATIVE_BANNER", "NATIVE_BANNER_DUAL_TRACKER", "MEGA_NATIVE_BANNER_DUAL_TRACKER", "CLICK_TO_PLAY_VIDEO", "VIDEO_WITH_FALLBACK_IMAGE", "NATIVE_CONTENT_DUAL_TRACKER", "ads_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2-dex2jar.jar:com/truecaller/ads/CustomTemplate.class */
public enum CustomTemplate {
    NATIVE_BANNER("11726661", true),
    NATIVE_BANNER_DUAL_TRACKER("11788491", true),
    MEGA_NATIVE_BANNER_DUAL_TRACKER("11976407", true),
    CLICK_TO_PLAY_VIDEO("11732026", false),
    VIDEO_WITH_FALLBACK_IMAGE("11777280", true),
    NATIVE_CONTENT_DUAL_TRACKER("11788194", true);
    
    public static final C2807a Companion = new Object(null) { // from class: com.truecaller.ads.CustomTemplate.a
    };
    public final boolean openUrl;
    public final String templateId;

    CustomTemplate(String str, boolean z) {
        this.templateId = str;
        this.openUrl = z;
    }
}
