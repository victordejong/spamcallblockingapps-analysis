package com.asus.contacts.fonts;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.ListView;
import com.asus.contacts.fonts.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/h.class */
public final class h extends BaseAdapter implements e.a {

    /* renamed from: a  reason: collision with root package name */
    final List<Font> f2660a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f2661b = 0;
    private final WeakReference<LayoutInflater> c;
    private final String d;
    private e e;
    private Context f;
    private ListView g;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/h$a.class */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        CheckedTextView f2662a;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    public h(Context context, String str, e eVar, ListView listView) {
        this.f = context;
        this.c = new WeakReference<>((LayoutInflater) context.getSystemService("layout_inflater"));
        this.d = str;
        this.g = listView;
        this.e = eVar;
        this.e.a(this);
        a();
    }

    private void a() {
        List<Font> c = this.e.c();
        if (c != null) {
            this.f2660a.clear();
            this.f2660a.addAll(c);
        }
        if (!(this.d == null || this.d == "###")) {
            for (int i = 0; i < this.f2660a.size(); i++) {
                if (this.e.a(i, this.d)) {
                    this.f2661b = i;
                    this.g.setSelection(this.f2661b);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final Font getItem(int i) {
        return this.f2660a.get(i);
    }

    @Override // com.asus.contacts.fonts.e.a
    public final void a(String... strArr) {
    }

    @Override // com.asus.contacts.fonts.e.a
    public final void b() {
        a();
        notifyDataSetChanged();
    }

    @Override // com.asus.contacts.fonts.e.a
    public final void c() {
        a();
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f2660a.size();
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        View view2;
        LayoutInflater layoutInflater = this.c.get();
        if (view != null) {
            aVar = (a) view.getTag();
            view2 = view;
        } else if (layoutInflater != null) {
            view2 = layoutInflater.inflate(2131427587, (ViewGroup) null);
            aVar = new a((byte) 0);
            aVar.f2662a = (CheckedTextView) view2.findViewById(2131296868);
            view2.setTag(aVar);
        } else {
            aVar = null;
            view2 = view;
        }
        if (aVar != null) {
            aVar.f2662a.setTag(Integer.valueOf(i));
            Font a2 = getItem(i);
            if (this.e != null) {
                try {
                    aVar.f2662a.setTypeface(d.a(this.f, this.e.a(i)));
                } catch (Exception e) {
                    Log.w("FontStyleAdapter", "failed to load typeface", e);
                    aVar.f2662a.setTypeface(null);
                }
            }
            String trim = a2.c.trim();
            String str = trim;
            if (TextUtils.isEmpty(trim)) {
                int lastIndexOf = a2.f2631b.lastIndexOf(".");
                str = trim;
                if (lastIndexOf >= 0) {
                    str = a2.f2631b.substring(0, lastIndexOf);
                }
            }
            String str2 = str;
            if (!TextUtils.isEmpty(a2.d)) {
                str2 = str + " [" + a2.d + "]";
            }
            aVar.f2662a.setText(str2);
            aVar.f2662a.setChecked(this.f2661b == i);
        }
        return view2;
    }
}
