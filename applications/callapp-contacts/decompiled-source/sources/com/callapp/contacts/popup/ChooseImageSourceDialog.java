package com.callapp.contacts.popup;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ChooseImageSourceDialog.class */
public class ChooseImageSourceDialog extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private View f15314a;

    /* renamed from: b  reason: collision with root package name */
    private ImageSourceType f15315b;

    /* renamed from: c  reason: collision with root package name */
    private OnChooseImageSourceClickListener f15316c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType.class */
    public enum ImageSourceType {
        IMAGE,
        VIDEO
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener.class */
    public interface OnChooseImageSourceClickListener {
        void a(DialogPopup dialogPopup, ImageSourceType imageSourceType);

        void b(DialogPopup dialogPopup, ImageSourceType imageSourceType);
    }

    public ChooseImageSourceDialog(View view, ImageSourceType imageSourceType) {
        this.f15314a = view;
        this.f15315b = imageSourceType;
    }

    public ChooseImageSourceDialog(ImageSourceType imageSourceType) {
        this.f15315b = imageSourceType;
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
                OnChooseImageSourceClickListener onChooseImageSourceClickListener = ChooseImageSourceDialog.this.f15316c;
                ChooseImageSourceDialog chooseImageSourceDialog = ChooseImageSourceDialog.this;
                onChooseImageSourceClickListener.a(chooseImageSourceDialog, chooseImageSourceDialog.f15315b);
                ChooseImageSourceDialog.this.dismiss();
            }
        });
        View findViewById = inflate.findViewById(2131362245);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.ChooseImageSourceDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnChooseImageSourceClickListener onChooseImageSourceClickListener = ChooseImageSourceDialog.this.f15316c;
                ChooseImageSourceDialog chooseImageSourceDialog = ChooseImageSourceDialog.this;
                onChooseImageSourceClickListener.b(chooseImageSourceDialog, chooseImageSourceDialog.f15315b);
                ChooseImageSourceDialog.this.dismiss();
            }
        });
        TextView textView = (TextView) inflate.findViewById(2131362894);
        textView.setText(Activities.getString(2131887870));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView2 = (TextView) inflate.findViewById(2131362246);
        textView2.setText(Activities.getString(2131887857));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        if (this.f15314a != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(2131362572);
            c cVar = new c();
            constraintLayout.addView(this.f15314a);
            cVar.a(constraintLayout);
            cVar.a(this.f15314a.getId(), 3, findViewById.getId(), 4, 0);
            cVar.a(this.f15314a.getId(), 4, constraintLayout.getId(), 4, 0);
            cVar.a(this.f15314a.getId(), 6, constraintLayout.getId(), 6, 0);
            cVar.a(this.f15314a.getId(), 7, constraintLayout.getId(), 7, 0);
            cVar.b(constraintLayout);
        }
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }

    public void setListener(OnChooseImageSourceClickListener onChooseImageSourceClickListener) {
        this.f15316c = onChooseImageSourceClickListener;
    }
}
