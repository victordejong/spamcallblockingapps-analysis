package com.callapp.contacts.popup.contact;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogList.class */
public class DialogList extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private final String f15486a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f15487b;

    /* renamed from: c  reason: collision with root package name */
    private ListAdapter f15488c;

    /* renamed from: d  reason: collision with root package name */
    private ListView f15489d;
    private AdapterView.OnItemClickListener e;
    private String f;
    private String g;
    private View.OnClickListener h;
    private View.OnClickListener i;
    private Popup.DialogType j;
    private Integer k;

    public DialogList(String str) {
        this(str, false);
    }

    public DialogList(String str, boolean z) {
        this.f = Activities.getString(2131887338);
        this.g = Activities.getString(2131886505);
        this.j = Popup.DialogType.rounded;
        this.f15486a = str;
        this.f15487b = z;
    }

    private View getFooterView() {
        return null;
    }

    private void setupBottomBar(View view) {
        if (this.h == null && this.i == null) {
            view.findViewById(2131362574).setVisibility(8);
            return;
        }
        TextView textView = (TextView) view.findViewById(2131362584);
        View.OnClickListener onClickListener = this.h;
        if (onClickListener == null) {
            textView.setVisibility(8);
        } else {
            textView.setOnClickListener(onClickListener);
            String str = this.f;
            if (str != null) {
                textView.setText(str);
            }
        }
        TextView textView2 = (TextView) view.findViewById(2131362581);
        View.OnClickListener onClickListener2 = this.i;
        if (onClickListener2 == null) {
            textView2.setVisibility(8);
            return;
        }
        textView2.setOnClickListener(onClickListener2);
        String str2 = this.g;
        if (str2 != null) {
            textView2.setText(str2);
            textView2.setTextColor(ThemeUtils.getColor(2131099784));
        }
    }

    public final void a(ListAdapter listAdapter, AdapterView.OnItemClickListener onItemClickListener) {
        this.f15488c = listAdapter;
        this.e = onItemClickListener;
        ListView listView = this.f15489d;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            this.f15489d.setOnItemClickListener(onItemClickListener);
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return this.j;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558614, (ViewGroup) null);
        setupTextViewMember(inflate, this.f15486a, 2131364421);
        this.f15489d = (ListView) inflate.findViewById(2131363206);
        a(this.f15488c, this.e);
        if (this.f15487b) {
            Drawable divider = this.f15489d.getDivider();
            if (divider != null) {
                divider.setColorFilter(ThemeUtils.a(getActivity(), 2131099891), PorterDuff.Mode.SRC_IN);
            }
        } else {
            this.f15489d.setDivider(null);
        }
        if (getFooterView() != null) {
            this.f15489d.addFooterView(getFooterView());
        }
        setupBottomBar(inflate);
        Integer num = this.k;
        if (num != null) {
            inflate.setBackgroundColor(num.intValue());
        }
        return inflate;
    }

    public void setAdapter(ListAdapter listAdapter) {
        a(listAdapter, this.e);
    }

    public void setBackgroundColor(int i) {
        this.k = Integer.valueOf(i);
    }

    public void setDialogType(Popup.DialogType dialogType) {
        this.j = dialogType;
    }

    public void setOnCancelButtonClickListener(View.OnClickListener onClickListener) {
        this.i = onClickListener;
    }
}
