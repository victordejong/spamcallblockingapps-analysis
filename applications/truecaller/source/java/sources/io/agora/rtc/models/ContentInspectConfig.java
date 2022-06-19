package io.agora.rtc.models;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/models/ContentInspectConfig.class */
public class ContentInspectConfig {
    public static final int CONTENT_INSPECT_TYPE_INVALID = 0;
    public static final int CONTENT_INSPECT_TYPE_MODERATION = 1;
    public static final int CONTENT_INSPECT_TYPE_SUPERVISE = 2;
    public static final int MAX_CONTENT_INSPECT_MODULE_COUNT = 32;
    public String extraInfo;
    public int moduleCount;
    public ContentInspectModule[] modules = new ContentInspectModule[32];

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/models/ContentInspectConfig$ContentInspectModule.class */
    public static class ContentInspectModule {
        public int type = 0;
        public int interval = 0;
    }

    public ContentInspectConfig() {
        for (int i = 0; i < 32; i++) {
            this.modules[i] = new ContentInspectModule();
        }
        this.moduleCount = 0;
    }
}
