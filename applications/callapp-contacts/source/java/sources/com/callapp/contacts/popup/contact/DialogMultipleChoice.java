package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.MultipleChoiceArrayAdapter;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogMultipleChoice.class */
public class DialogMultipleChoice extends DialogPopup {

    /* renamed from: a */
    private MultipleChoiceDialogListener f27207a;

    /* renamed from: b */
    private String f27208b;

    /* renamed from: f */
    public final ArrayList<MultipleChoiceArrayAdapter.MultipleChoiceRowData> f27209f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener.class */
    public interface MultipleChoiceDialogListener {
        /* renamed from: a */
        void mo27956a();

        /* renamed from: a */
        void mo27955a(ArrayList<Integer> arrayList);
    }

    public DialogMultipleChoice(String str, ArrayList<MultipleChoiceArrayAdapter.MultipleChoiceRowData> arrayList, MultipleChoiceDialogListener multipleChoiceDialogListener) {
        this.f27207a = multipleChoiceDialogListener;
        this.f27208b = str;
        this.f27209f = arrayList;
    }

    private View.OnClickListener getNegativeOnClickListener() {
        return new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogMultipleChoice.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DialogMultipleChoice.this.f27207a != null) {
                    DialogMultipleChoice.this.f27207a.mo27956a();
                }
                DialogMultipleChoice.this.dismiss();
            }
        };
    }

    /* renamed from: a */
    protected boolean mo27958a() {
        return true;
    }

    protected MultipleChoiceDialogListener getListener() {
        return this.f27207a;
    }

    protected String getNegativeBtnText() {
        return Activities.getString(2131886505);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    protected String getPositiveBtnText() {
        return Activities.getString(2131887338);
    }

    protected View.OnClickListener getPositiveOnClickListener() {
        return new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogMultipleChoice.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DialogMultipleChoice.this.f27207a == null) {
                    DialogMultipleChoice.this.dismiss();
                    return;
                }
                ArrayList<Integer> arrayList = new ArrayList<>();
                for (int i = 0; i < DialogMultipleChoice.this.f27209f.size(); i++) {
                    if (DialogMultipleChoice.this.f27209f.get(i).f28781c) {
                        arrayList.add(Integer.valueOf(i));
                    }
                }
                if (arrayList.size() == 0) {
                    FeedbackManager.get().m28664b(Activities.getString(2131886755), (Integer) null);
                    return;
                }
                DialogMultipleChoice.this.f27207a.mo27955a(arrayList);
                DialogMultipleChoice.this.dismiss();
            }
        };
    }

    protected String getTitleText() {
        return this.f27208b;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        this.f27207a = getListener();
        View inflate = layoutInflater.inflate(2131558618, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131364421);
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(getTitleText());
        ((ListView) inflate.findViewById(2131363340)).setAdapter((ListAdapter) new MultipleChoiceArrayAdapter(getActivity(), 2131558550, this.f27209f));
        int color = ThemeUtils.getColor(2131099784);
        TextView textView2 = (TextView) inflate.findViewById(2131362584);
        textView2.setTextColor(color);
        textView2.setText(getPositiveBtnText());
        textView2.setOnClickListener(getPositiveOnClickListener());
        TextView textView3 = (TextView) inflate.findViewById(2131362581);
        if (mo27958a()) {
            textView3.setTextColor(color);
            textView3.setText(getNegativeBtnText());
            textView3.setOnClickListener(getNegativeOnClickListener());
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
        return inflate;
    }
}
