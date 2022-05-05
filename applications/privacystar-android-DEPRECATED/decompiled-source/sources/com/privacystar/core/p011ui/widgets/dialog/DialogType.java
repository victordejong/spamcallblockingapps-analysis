package com.privacystar.core.p011ui.widgets.dialog;

import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import com.privacystar.core.C1566R;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.widgets.dialog.DialogType */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/DialogType.class */
public enum DialogType {
    SUCCESS(0, C1566R.C1568drawable.ic_thumb_up_black_24dp, C1566R.color.ps3_green_300),
    BLOCKED(1, C1566R.C1568drawable.ic_block_black_24dp, C1566R.color.ps3_grey_400),
    INFORMATION(2, C1566R.C1568drawable.ic_info_black_24dp, C1566R.color.ps3_yellow_700),
    ERROR(3, C1566R.C1568drawable.ic_thumb_down_black_24dp, C1566R.color.ps3_red_300),
    APPROVED(4, C1566R.C1568drawable.ic_approve, C1566R.color.ps3_green_300),
    NO_HEADER(5, C1566R.C1568drawable.ic_info_black_24dp, C1566R.color.ps3_yellow_700);
    
    @DrawableRes
    private int icon;

    /* renamed from: id */
    private int f295id;
    @ColorRes
    private int tint;

    DialogType(int i, @DrawableRes int i2, @ColorRes int i3) {
        this.f295id = i;
        this.icon = i2;
        this.tint = i3;
    }

    public static DialogType getDialogType(int i) {
        DialogType[] values;
        for (DialogType dialogType : values()) {
            if (dialogType.getId() == i) {
                return dialogType;
            }
        }
        Timber.m25w("Invalid DialogType ID.", new Object[0]);
        return ERROR;
    }

    @DrawableRes
    public int getIcon() {
        return this.icon;
    }

    public int getId() {
        return this.f295id;
    }

    @ColorRes
    public int getTint() {
        return this.tint;
    }
}
