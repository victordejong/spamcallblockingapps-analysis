package com.callapp.contacts.popup.contact;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.callapp.contacts.popup.contact.AdapterText.ItemText;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterText.class */
public class AdapterText<T extends ItemText> extends ArrayAdapter<T> implements View.OnClickListener {

    /* renamed from: a */
    protected AdapterEvents f26998a;

    /* renamed from: b */
    protected final int f26999b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterText$AdapterEvents.class */
    public interface AdapterEvents {
        void onRowClicked(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterText$ItemText.class */
    public static class ItemText {

        /* renamed from: b */
        String f27000b;

        /* renamed from: c */
        int f27001c;

        public ItemText(int i) {
            this(Activities.getString(i), i);
        }

        public ItemText(String str, int i) {
            this.f27000b = str;
            this.f27001c = i;
        }

        public String getText() {
            return this.f27000b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterText$ViewHolderText.class */
    public static class ViewHolderText {

        /* renamed from: c */
        final TextView f27002c;

        /* renamed from: d */
        int f27003d;

        public ViewHolderText(TextView textView) {
            this.f27002c = textView;
        }
    }

    public AdapterText(Context context, int i, List<T> list) {
        super(context, 0, list);
        this.f26999b = i;
    }

    /* renamed from: a */
    protected ViewHolderText mo27941a(View view) {
        return new ViewHolderText((TextView) view.findViewById(2131363156));
    }

    /* renamed from: a */
    public void mo27940a(ViewHolderText viewHolderText, T t) {
        viewHolderText.f27002c.setText(t.f27000b);
        viewHolderText.f27003d = t.f27001c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = LayoutInflater.from(getContext()).inflate(this.f26999b, viewGroup, false);
            ViewHolderText mo27941a = mo27941a(view2);
            mo27941a.f27002c.setTextColor(ThemeUtils.getColor(2131100140));
            ViewUtils.m27320a(view2, ThemeUtils.getDrawable(2131230995));
            view2.setTag(mo27941a);
            view2.setOnClickListener(this);
        }
        mo27940a((ViewHolderText) view2.getTag(), (ItemText) getItem(i));
        return view2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f26998a == null || !(view.getTag() instanceof ViewHolderText)) {
            return;
        }
        this.f26998a.onRowClicked(((ViewHolderText) view.getTag()).f27003d);
        AndroidUtils.m27630a(view, 1);
    }

    public void setListener(AdapterEvents adapterEvents) {
        this.f26998a = adapterEvents;
    }
}
