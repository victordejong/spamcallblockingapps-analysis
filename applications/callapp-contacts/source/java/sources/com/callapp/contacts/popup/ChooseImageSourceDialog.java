package com.callapp.contacts.popup;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ChooseImageSourceDialog.class */
public class ChooseImageSourceDialog extends DialogPopup {

    /* renamed from: a */
    private View f26870a;

    /* renamed from: b */
    private ImageSourceType f26871b;

    /* renamed from: c */
    private OnChooseImageSourceClickListener f26872c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType.class */
    public enum ImageSourceType {
        IMAGE,
        VIDEO
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener.class */
    public interface OnChooseImageSourceClickListener {
        /* renamed from: a */
        void mo28062a(DialogPopup dialogPopup, ImageSourceType imageSourceType);

        /* renamed from: b */
        void mo28061b(DialogPopup dialogPopup, ImageSourceType imageSourceType);
    }

    public ChooseImageSourceDialog(View view, ImageSourceType imageSourceType) {
        this.f26870a = view;
        this.f26871b = imageSourceType;
    }

    public ChooseImageSourceDialog(ImageSourceType imageSourceType) {
        this.f26871b = imageSourceType;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.roundedCenter;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogCancelled(DialogInterface dialogInterface) {
        super.onDialogCancelled(dialogInterface);
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558606, (ViewGroup) null);
        inflate.findViewById(2131362893).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.ChooseImageSourceDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnChooseImageSourceClickListener onChooseImageSourceClickListener = ChooseImageSourceDialog.this.f26872c;
                ChooseImageSourceDialog chooseImageSourceDialog = ChooseImageSourceDialog.this;
                onChooseImageSourceClickListener.mo28062a(chooseImageSourceDialog, chooseImageSourceDialog.f26871b);
                ChooseImageSourceDialog.this.dismiss();
            }
        });
        View findViewById = inflate.findViewById(2131362245);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.ChooseImageSourceDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnChooseImageSourceClickListener onChooseImageSourceClickListener = ChooseImageSourceDialog.this.f26872c;
                ChooseImageSourceDialog chooseImageSourceDialog = ChooseImageSourceDialog.this;
                onChooseImageSourceClickListener.mo28061b(chooseImageSourceDialog, chooseImageSourceDialog.f26871b);
                ChooseImageSourceDialog.this.dismiss();
            }
        });
        TextView textView = (TextView) inflate.findViewById(2131362894);
        textView.setText(Activities.getString(2131887870));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView2 = (TextView) inflate.findViewById(2131362246);
        textView2.setText(Activities.getString(2131887857));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        if (this.f26870a != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(2131362572);
            C0680c c0680c = new C0680c();
            constraintLayout.addView(this.f26870a);
            c0680c.m44701a(constraintLayout);
            c0680c.m44709a(this.f26870a.getId(), 3, findViewById.getId(), 4, 0);
            c0680c.m44709a(this.f26870a.getId(), 4, constraintLayout.getId(), 4, 0);
            c0680c.m44709a(this.f26870a.getId(), 6, constraintLayout.getId(), 6, 0);
            c0680c.m44709a(this.f26870a.getId(), 7, constraintLayout.getId(), 7, 0);
            c0680c.m44693b(constraintLayout);
        }
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }

    public void setListener(OnChooseImageSourceClickListener onChooseImageSourceClickListener) {
        this.f26872c = onChooseImageSourceClickListener;
    }
}
