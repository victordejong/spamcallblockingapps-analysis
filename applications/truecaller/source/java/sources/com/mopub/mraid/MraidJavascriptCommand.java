package com.mopub.mraid;

import com.amazon.device.ads.MraidCloseCommand;
import com.amazon.device.ads.MraidExpandCommand;
import com.amazon.device.ads.MraidOpenCommand;
import com.amazon.device.ads.MraidResizeCommand;
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
    public static final /* synthetic */ MraidJavascriptCommand[] f9025b;

    /* renamed from: a */
    public final String f9026a;

    static {
        MraidJavascriptCommand mraidJavascriptCommand = new MraidJavascriptCommand("CLOSE", 0, MraidCloseCommand.NAME);
        CLOSE = mraidJavascriptCommand;
        MraidJavascriptCommand aVar = new a("EXPAND", 1, MraidExpandCommand.NAME);
        EXPAND = aVar;
        MraidJavascriptCommand mraidJavascriptCommand2 = new MraidJavascriptCommand("USE_CUSTOM_CLOSE", 2, "usecustomclose");
        USE_CUSTOM_CLOSE = mraidJavascriptCommand2;
        MraidJavascriptCommand bVar = new b("OPEN", 3, MraidOpenCommand.NAME);
        OPEN = bVar;
        MraidJavascriptCommand cVar = new c("RESIZE", 4, MraidResizeCommand.NAME);
        RESIZE = cVar;
        MraidJavascriptCommand mraidJavascriptCommand3 = new MraidJavascriptCommand("SET_ORIENTATION_PROPERTIES", 5, "setOrientationProperties");
        SET_ORIENTATION_PROPERTIES = mraidJavascriptCommand3;
        MraidJavascriptCommand dVar = new d("PLAY_VIDEO", 6, "playVideo");
        PLAY_VIDEO = dVar;
        MraidJavascriptCommand eVar = new e("STORE_PICTURE", 7, "storePicture");
        STORE_PICTURE = eVar;
        MraidJavascriptCommand fVar = new f("CREATE_CALENDAR_EVENT", 8, "createCalendarEvent");
        CREATE_CALENDAR_EVENT = fVar;
        MraidJavascriptCommand mraidJavascriptCommand4 = new MraidJavascriptCommand("UNSPECIFIED", 9, "");
        UNSPECIFIED = mraidJavascriptCommand4;
        f9025b = new MraidJavascriptCommand[]{mraidJavascriptCommand, aVar, mraidJavascriptCommand2, bVar, cVar, mraidJavascriptCommand3, dVar, eVar, fVar, mraidJavascriptCommand4};
    }

    public MraidJavascriptCommand(String str, int i, String str2) {
        super(str, i);
        this.f9026a = str2;
    }

    public MraidJavascriptCommand(String str, int i, String str2, a aVar) {
        super(str, i);
        this.f9026a = str2;
    }

    public static MraidJavascriptCommand valueOf(String str) {
        return (MraidJavascriptCommand) Enum.valueOf(MraidJavascriptCommand.class, str);
    }

    public static MraidJavascriptCommand[] values() {
        return (MraidJavascriptCommand[]) f9025b.clone();
    }

    /* renamed from: a */
    public boolean m36194a(PlacementType placementType) {
        return false;
    }
}
