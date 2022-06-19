package com.unknownphone.callblocker.selector;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.widget.AppCompatTextView;
import java.util.List;
/* renamed from: com.unknownphone.callblocker.selector.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/selector/a.class */
public class C5370a extends ArrayAdapter<Pair<String, String>> {

    /* renamed from: a */
    private LayoutInflater f22367a;

    /* renamed from: b */
    private String f22368b;

    /* renamed from: com.unknownphone.callblocker.selector.a$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/selector/a$a.class */
    private static class C5372a {

        /* renamed from: a */
        private AppCompatTextView f22369a;

        private C5372a() {
        }
    }

    public C5370a(Context context, List<Pair<String, String>> list, String str) {
        super(context, 2131493011, list);
        this.f22367a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f22368b = str;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @SuppressLint({"InflateParams"})
    public View getView(int i, View view, ViewGroup viewGroup) {
        C5372a c5372a;
        if (view == null) {
            view = this.f22367a.inflate(2131493011, (ViewGroup) null);
            c5372a = new C5372a();
            c5372a.f22369a = (AppCompatTextView) view.findViewById(2131296708);
            view.setTag(c5372a);
        } else {
            c5372a = (C5372a) view.getTag();
        }
        Pair<String, String> item = getItem(i);
        if (item != null) {
            c5372a.f22369a.setText((CharSequence) item.second);
            c5372a.f22369a.setCompoundDrawablesWithIntrinsicBounds(0, 0, ((String) item.first).equalsIgnoreCase(this.f22368b) ? 2131230902 : 0, 0);
        }
        return view;
    }
}
