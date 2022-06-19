package com.mopub.mraid;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidJavascriptCommand.class */
public class MraidJavascriptCommand extends Enum<MraidJavascriptCommand> {
    public static final MraidJavascriptCommand CLOSE;
    public static final MraidJavascriptCommand CREATE_CALENDAR_EVENT;
    public static final MraidJavascriptCommand EXPAND;
    public static final MraidJavascriptCommand OPEN;
    public static final MraidJavascriptCommand PLAY_VIDEO;
    public static final MraidJavascriptCommand RESIZE;
    public static final MraidJavascriptCommand SET_ORIENTATION_PROPERTIES;
    public static final MraidJavascriptCommand STORE_PICTURE;
    public static final MraidJavascriptCommand UNSPECIFIED;
    public static final MraidJavascriptCommand USE_CUSTOM_CLOSE;

    /* renamed from: b */
    public static final /* synthetic */ MraidJavascriptCommand[] f5078b;

    /* renamed from: a */
    public final String f5079a;

    /* renamed from: com.mopub.mraid.MraidJavascriptCommand$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidJavascriptCommand$a.class */
    public static final class C1161a extends MraidJavascriptCommand {
        public C1161a(String str, int i, String str2) {
            super(str, i, str2, null);
        }

        @Override // com.mopub.mraid.MraidJavascriptCommand
        /* renamed from: b */
        public boolean mo3404b(PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    }

    static {
        MraidJavascriptCommand mraidJavascriptCommand = new MraidJavascriptCommand("CLOSE", 0, "close");
        CLOSE = mraidJavascriptCommand;
        C1161a c1161a = new C1161a("EXPAND", 1, "expand");
        EXPAND = c1161a;
        MraidJavascriptCommand mraidJavascriptCommand2 = new MraidJavascriptCommand("USE_CUSTOM_CLOSE", 2, "usecustomclose");
        USE_CUSTOM_CLOSE = mraidJavascriptCommand2;
        MraidJavascriptCommand mraidJavascriptCommand3 = new MraidJavascriptCommand("OPEN", 3, "open") { // from class: com.mopub.mraid.MraidJavascriptCommand.b
            @Override // com.mopub.mraid.MraidJavascriptCommand
            /* renamed from: b */
            public boolean mo3404b(PlacementType placementType) {
                return true;
            }
        };
        OPEN = mraidJavascriptCommand3;
        MraidJavascriptCommand mraidJavascriptCommand4 = new MraidJavascriptCommand("RESIZE", 4, "resize") { // from class: com.mopub.mraid.MraidJavascriptCommand.c
            @Override // com.mopub.mraid.MraidJavascriptCommand
            /* renamed from: b */
            public boolean mo3404b(PlacementType placementType) {
                return true;
            }
        };
        RESIZE = mraidJavascriptCommand4;
        MraidJavascriptCommand mraidJavascriptCommand5 = new MraidJavascriptCommand("SET_ORIENTATION_PROPERTIES", 5, "setOrientationProperties");
        SET_ORIENTATION_PROPERTIES = mraidJavascriptCommand5;
        MraidJavascriptCommand mraidJavascriptCommand6 = new MraidJavascriptCommand("PLAY_VIDEO", 6, "playVideo") { // from class: com.mopub.mraid.MraidJavascriptCommand.d
            @Override // com.mopub.mraid.MraidJavascriptCommand
            /* renamed from: b */
            public boolean mo3404b(PlacementType placementType) {
                return placementType == PlacementType.INLINE;
            }
        };
        PLAY_VIDEO = mraidJavascriptCommand6;
        MraidJavascriptCommand mraidJavascriptCommand7 = new MraidJavascriptCommand("STORE_PICTURE", 7, "storePicture") { // from class: com.mopub.mraid.MraidJavascriptCommand.e
            @Override // com.mopub.mraid.MraidJavascriptCommand
            /* renamed from: b */
            public boolean mo3404b(PlacementType placementType) {
                return true;
            }
        };
        STORE_PICTURE = mraidJavascriptCommand7;
        MraidJavascriptCommand mraidJavascriptCommand8 = new MraidJavascriptCommand("CREATE_CALENDAR_EVENT", 8, "createCalendarEvent") { // from class: com.mopub.mraid.MraidJavascriptCommand.f
            @Override // com.mopub.mraid.MraidJavascriptCommand
            /* renamed from: b */
            public boolean mo3404b(PlacementType placementType) {
                return true;
            }
        };
        CREATE_CALENDAR_EVENT = mraidJavascriptCommand8;
        MraidJavascriptCommand mraidJavascriptCommand9 = new MraidJavascriptCommand("UNSPECIFIED", 9, "");
        UNSPECIFIED = mraidJavascriptCommand9;
        f5078b = new MraidJavascriptCommand[]{mraidJavascriptCommand, c1161a, mraidJavascriptCommand2, mraidJavascriptCommand3, mraidJavascriptCommand4, mraidJavascriptCommand5, mraidJavascriptCommand6, mraidJavascriptCommand7, mraidJavascriptCommand8, mraidJavascriptCommand9};
    }

    public MraidJavascriptCommand(String str, int i, String str2) {
        super(str, i);
        this.f5079a = str2;
    }

    public /* synthetic */ MraidJavascriptCommand(String str, int i, String str2, C1161a c1161a) {
        this(str, i, str2);
    }

    /* renamed from: a */
    public static MraidJavascriptCommand m3406a(String str) {
        MraidJavascriptCommand[] values;
        for (MraidJavascriptCommand mraidJavascriptCommand : values()) {
            if (mraidJavascriptCommand.f5079a.equals(str)) {
                return mraidJavascriptCommand;
            }
        }
        return UNSPECIFIED;
    }

    public static MraidJavascriptCommand valueOf(String str) {
        return (MraidJavascriptCommand) Enum.valueOf(MraidJavascriptCommand.class, str);
    }

    public static MraidJavascriptCommand[] values() {
        return (MraidJavascriptCommand[]) f5078b.clone();
    }

    /* renamed from: b */
    public boolean mo3404b(PlacementType placementType) {
        return false;
    }

    /* renamed from: c */
    public String m3405c() {
        return this.f5079a;
    }
}
