package com.privacystar.core.p011ui.widgets.dialog;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.StringRes;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.dialog.DialogButton */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/DialogButton.class */
public class DialogButton implements Parcelable {
    public static final Parcelable.Creator<DialogButton> CREATOR = new Parcelable.Creator<DialogButton>() { // from class: com.privacystar.core.ui.widgets.dialog.DialogButton.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DialogButton createFromParcel(Parcel parcel) {
            return new DialogButton(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DialogButton[] newArray(int i) {
            return new DialogButton[i];
        }
    };
    private ButtonAction buttonAction;
    private String buttonText;

    /* renamed from: com.privacystar.core.ui.widgets.dialog.DialogButton$StaticDialogButton */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/DialogButton$StaticDialogButton.class */
    public enum StaticDialogButton {
        OKAY(C1566R.string.info_dialog_okay),
        CANCEL(C1566R.string.group_blocking_dialog_cancel_button);
        
        private DialogButton dialogButton;
        @StringRes
        private int titleRes;

        StaticDialogButton(@StringRes int i) {
            this.titleRes = i;
        }

        public DialogButton getDialogButton(Context context) {
            if (this.dialogButton == null) {
                this.dialogButton = new DialogButton(getTitle(context));
            }
            return this.dialogButton;
        }

        public String getTitle(Context context) {
            return context.getString(this.titleRes);
        }

        @StringRes
        public int getTitleRes() {
            return this.titleRes;
        }
    }

    public DialogButton(Parcel parcel) {
        this.buttonText = parcel.readString();
    }

    public DialogButton(String str) {
        this(str, null);
    }

    public DialogButton(String str, ButtonAction buttonAction) {
        this.buttonText = str;
        this.buttonAction = buttonAction;
    }

    public static DialogButton createFromIntent(String str, Intent intent) {
        return new DialogButton(str, new IntentButtonAction(intent));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return getButtonText().equals(((DialogButton) obj).getButtonText());
    }

    public ButtonAction getAction() {
        return this.buttonAction;
    }

    public String getButtonText() {
        return this.buttonText;
    }

    public int hashCode() {
        return getButtonText().hashCode();
    }

    public void setAction(ButtonAction buttonAction) {
        this.buttonAction = buttonAction;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.buttonText);
    }
}
