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

    /* renamed from: a */
    private final String f27095a;

    /* renamed from: b */
    private final boolean f27096b;

    /* renamed from: c */
    private ListAdapter f27097c;

    /* renamed from: d */
    private ListView f27098d;

    /* renamed from: e */
    private AdapterView.OnItemClickListener f27099e;

    /* renamed from: f */
    private String f27100f;

    /* renamed from: g */
    private String f27101g;

    /* renamed from: h */
    private View.OnClickListener f27102h;

    /* renamed from: i */
    private View.OnClickListener f27103i;

    /* renamed from: j */
    private Popup.DialogType f27104j;

    /* renamed from: k */
    private Integer f27105k;

    public DialogList(String str) {
        this(str, false);
    }

    public DialogList(String str, boolean z) {
        this.f27100f = Activities.getString(2131887338);
        this.f27101g = Activities.getString(2131886505);
        this.f27104j = Popup.DialogType.rounded;
        this.f27095a = str;
        this.f27096b = z;
    }

    private View getFooterView() {
        return null;
    }

    private void setupBottomBar(View view) {
        if (this.f27102h == null && this.f27103i == null) {
            view.findViewById(2131362574).setVisibility(8);
            return;
        }
        TextView textView = (TextView) view.findViewById(2131362584);
        View.OnClickListener onClickListener = this.f27102h;
        if (onClickListener == null) {
            textView.setVisibility(8);
        } else {
            textView.setOnClickListener(onClickListener);
            String str = this.f27100f;
            if (str != null) {
                textView.setText(str);
            }
        }
        TextView textView2 = (TextView) view.findViewById(2131362581);
        View.OnClickListener onClickListener2 = this.f27103i;
        if (onClickListener2 == null) {
            textView2.setVisibility(8);
            return;
        }
        textView2.setOnClickListener(onClickListener2);
        String str2 = this.f27101g;
        if (str2 == null) {
            return;
        }
        textView2.setText(str2);
        textView2.setTextColor(ThemeUtils.getColor(2131099784));
    }

    /* renamed from: a */
    public final void m27970a(ListAdapter listAdapter, AdapterView.OnItemClickListener onItemClickListener) {
        this.f27097c = listAdapter;
        this.f27099e = onItemClickListener;
        ListView listView = this.f27098d;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            this.f27098d.setOnItemClickListener(onItemClickListener);
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return this.f27104j;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558614, (ViewGroup) null);
        setupTextViewMember(inflate, this.f27095a, 2131364421);
        this.f27098d = (ListView) inflate.findViewById(2131363206);
        m27970a(this.f27097c, this.f27099e);
        if (this.f27096b) {
            Drawable divider = this.f27098d.getDivider();
            if (divider != null) {
                divider.setColorFilter(ThemeUtils.m27386a(getActivity(), 2131099891), PorterDuff.Mode.SRC_IN);
            }
        } else {
            this.f27098d.setDivider(null);
        }
        if (getFooterView() != null) {
            this.f27098d.addFooterView(getFooterView());
        }
        setupBottomBar(inflate);
        Integer num = this.f27105k;
        if (num != null) {
            inflate.setBackgroundColor(num.intValue());
        }
        return inflate;
    }

    public void setAdapter(ListAdapter listAdapter) {
        m27970a(listAdapter, this.f27099e);
    }

    public void setBackgroundColor(int i) {
        this.f27105k = Integer.valueOf(i);
    }

    public void setDialogType(Popup.DialogType dialogType) {
        this.f27104j = dialogType;
    }

    public void setOnCancelButtonClickListener(View.OnClickListener onClickListener) {
        this.f27103i = onClickListener;
    }
}
