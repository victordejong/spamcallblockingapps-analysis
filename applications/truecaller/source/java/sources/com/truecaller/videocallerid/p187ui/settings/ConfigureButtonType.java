package com.truecaller.videocallerid.p187ui.settings;

import com.truecaller.videocallerid.C4718R;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0013\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;", "", "", "buttonTextResource", "I", "getButtonTextResource", "()I", "<init>", "(Ljava/lang/String;II)V", "Setup", "Manage", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.settings.ConfigureButtonType */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/settings/ConfigureButtonType.class */
public enum ConfigureButtonType {
    Setup(C4718R.string.vid_settings_setup),
    Manage(C4718R.string.vid_settings_manage);
    
    private final int buttonTextResource;

    ConfigureButtonType(int i) {
        this.buttonTextResource = i;
    }

    public final int getButtonTextResource() {
        return this.buttonTextResource;
    }
}
