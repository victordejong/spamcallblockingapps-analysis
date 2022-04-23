package com.callapp.contacts.popup.contact;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\b\u001a\u00020\tH\u0005J\b\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/callapp/contacts/popup/contact/CongratsPopUp;", "Lcom/callapp/contacts/manager/popup/DialogPopup;", "rightButtonClick", "Landroid/view/View$OnClickListener;", "(Landroid/view/View$OnClickListener;)V", "getRightButtonClick", "()Landroid/view/View$OnClickListener;", "setRightButtonClick", "getLayoutResource", "", "getMessageText", "Landroid/text/SpannableStringBuilder;", "getPopupType", "Lcom/callapp/contacts/manager/popup/Popup$DialogType;", "ovViewCreated", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setDialogWindowSize", "", "window", "Landroid/view/Window;", "setupViews", "itemView", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/CongratsPopUp.class */
public final class CongratsPopUp extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private View.OnClickListener f15427a;

    public CongratsPopUp(View.OnClickListener rightButtonClick) {
        p.d(rightButtonClick, "rightButtonClick");
        this.f15427a = rightButtonClick;
    }

    private final SpannableStringBuilder getMessageText() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) Activities.getString(2131887503));
        SpannableString spannableString = new SpannableString(Activities.getString(2131887501));
        spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131099784)), 0, spannableString.length(), 0);
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
        spannableStringBuilder.append((CharSequence) System.getProperty("line.separator"));
        spannableStringBuilder.append((CharSequence) System.getProperty("line.separator"));
        spannableStringBuilder.append((CharSequence) spannableString);
        return spannableStringBuilder;
    }

    protected final int getLayoutResource() {
        return 2131558561;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final Popup.DialogType getPopupType() {
        return Popup.DialogType.roundedCenter;
    }

    public final View.OnClickListener getRightButtonClick() {
        return this.f15427a;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final View ovViewCreated(LayoutInflater inflater, ViewGroup viewGroup) {
        p.d(inflater, "inflater");
        View view = inflater.inflate(getLayoutResource(), (ViewGroup) null);
        p.b(view, "view");
        setupViews(view);
        return view;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void setDialogWindowSize(Window window) {
        p.d(window, "window");
        window.setLayout(-1, -2);
    }

    public final void setupViews(View itemView) {
        p.d(itemView, "itemView");
        TextView congratsTitle = (TextView) itemView.findViewById(2131362403);
        p.b(congratsTitle, "congratsTitle");
        congratsTitle.setText(Activities.getString(2131887504));
        congratsTitle.setTextColor(ThemeUtils.getColor(2131100140));
        TextView congratsSubTitle = (TextView) itemView.findViewById(2131362402);
        congratsSubTitle.setTextColor(ThemeUtils.getColor(2131100140));
        p.b(congratsSubTitle, "congratsSubTitle");
        congratsSubTitle.setText(getMessageText());
        TextView warningTest = (TextView) itemView.findViewById(2131364546);
        p.b(warningTest, "warningTest");
        warningTest.setText(Activities.getText(2131887502));
        warningTest.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView = (TextView) itemView.findViewById(2131363673);
        DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f15494a;
        int color = ThemeUtils.getColor(2131099784);
        int color2 = ThemeUtils.getColor(2131100228);
        int color3 = ThemeUtils.getColor(2131099784);
        DialogMessageWithTopImageNew.Companion.a(textView, 2131232141, Integer.valueOf(color), Integer.valueOf(color3), 0, Integer.valueOf(color2), new SpannableString(Activities.getString(2131887509)), null, true, true);
        textView.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.CongratsPopUp$setupViews$1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View v) {
                p.d(v, "v");
                CongratsPopUp.this.getRightButtonClick().onClick(v);
                CongratsPopUp.this.dismiss();
            }
        });
        TextView textView2 = (TextView) itemView.findViewById(2131363177);
        DialogMessageWithTopImageNew.Companion companion2 = DialogMessageWithTopImageNew.f15494a;
        DialogMessageWithTopImageNew.Companion.a(textView2, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131100228)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 2, Integer.valueOf(ThemeUtils.getColor(2131099784)), new SpannableString(Activities.getString(2131886290)), null, true, true);
        textView2.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.CongratsPopUp$setupViews$2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View v) {
                p.d(v, "v");
                CongratsPopUp.this.dismiss();
            }
        });
        itemView.findViewById(2131362401).setBackgroundColor(ThemeUtils.getColor(2131099686));
    }
}
