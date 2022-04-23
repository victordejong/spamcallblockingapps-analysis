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

    /* renamed from: a  reason: collision with root package name */
    protected AdapterEvents f15415a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f15416b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterText$AdapterEvents.class */
    public interface AdapterEvents {
        void onRowClicked(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterText$ItemText.class */
    public static class ItemText {

        /* renamed from: b  reason: collision with root package name */
        String f15417b;

        /* renamed from: c  reason: collision with root package name */
        int f15418c;

        public ItemText(int i) {
            this(Activities.getString(i), i);
        }

        public ItemText(String str, int i) {
            this.f15417b = str;
            this.f15418c = i;
        }

        public String getText() {
            return this.f15417b;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterText$ViewHolderText.class */
    public static class ViewHolderText {

        /* renamed from: c  reason: collision with root package name */
        final TextView f15419c;

        /* renamed from: d  reason: collision with root package name */
        int f15420d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ViewHolderText(TextView textView) {
            this.f15419c = textView;
        }
    }

    public AdapterText(Context context, int i, List<T> list) {
        super(context, 0, list);
        this.f15416b = i;
    }

    protected ViewHolderText a(View view) {
        return new ViewHolderText((TextView) view.findViewById(2131363156));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ViewHolderText viewHolderText, T t) {
        viewHolderText.f15419c.setText(t.f15417b);
        viewHolderText.f15420d = t.f15418c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = LayoutInflater.from(getContext()).inflate(this.f15416b, viewGroup, false);
            ViewHolderText a2 = a(view2);
            a2.f15419c.setTextColor(ThemeUtils.getColor(2131100140));
            ViewUtils.a(view2, ThemeUtils.getDrawable(2131230995));
            view2.setTag(a2);
            view2.setOnClickListener(this);
        }
        a((ViewHolderText) view2.getTag(), (ItemText) getItem(i));
        return view2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f15415a != null && (view.getTag() instanceof ViewHolderText)) {
            this.f15415a.onRowClicked(((ViewHolderText) view.getTag()).f15420d);
            AndroidUtils.a(view, 1);
        }
    }

    public void setListener(AdapterEvents adapterEvents) {
        this.f15415a = adapterEvents;
    }
}
