package com.truecaller.videocallerid.p187ui.preview;

import com.truecaller.videocallerid.C4718R;
import kotlin.Metadata;
/* JADX WARN: Init of enum PREVIEW can be incorrect */
/* JADX WARN: Init of enum UPDATE can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B'\b\u0002\u0012\b\b\u0001\u0010\t\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006j\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/truecaller/videocallerid/ui/preview/PreviewModes;", "", "", "description", "I", "getDescription", "()I", "actionButton", "getActionButton", "title", "getTitle", "<init>", "(Ljava/lang/String;IIII)V", "ON_BOARDING", "PREVIEW", "UPDATE", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.preview.PreviewModes */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/preview/PreviewModes.class */
public enum PreviewModes {
    ON_BOARDING(C4718R.string.vid_preview_on_boarding_title, C4718R.string.vid_preview_on_boarding_description, C4718R.string.vid_preview_create_now),
    PREVIEW(r0, r0, r0),
    UPDATE(C4718R.string.vid_preview_edit_video_title, C4718R.string.vid_preview_edit_video_description, r0);
    
    private final int actionButton;
    private final int description;
    private final int title;

    static {
        int i = C4718R.string.vid_preview_create_new_video_title;
        int i2 = C4718R.string.vid_preview_create_new_video_description;
        int i3 = C4718R.string.vid_preview_got_it;
    }

    PreviewModes(int i, int i2, int i3) {
        this.title = i;
        this.description = i2;
        this.actionButton = i3;
    }

    public final int getActionButton() {
        return this.actionButton;
    }

    public final int getDescription() {
        return this.description;
    }

    public final int getTitle() {
        return this.title;
    }
}
