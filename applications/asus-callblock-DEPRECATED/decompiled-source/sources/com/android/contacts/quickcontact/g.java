package com.android.contacts.quickcontact;

import android.app.Fragment;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.android.contacts.m;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/g.class */
public final class g extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    List<com.android.contacts.quickcontact.a> f2102a;

    /* renamed from: b  reason: collision with root package name */
    a f2103b;
    private ListView f;
    private RelativeLayout g;
    protected final View.OnClickListener c = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.g.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            com.android.contacts.quickcontact.a aVar = (com.android.contacts.quickcontact.a) view.getTag();
            if (g.this.f2103b != null) {
                g.this.f2103b.a(aVar, false);
            }
        }
    };
    protected final View.OnClickListener d = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.g.3
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            com.android.contacts.quickcontact.a aVar = (com.android.contacts.quickcontact.a) view.getTag();
            if (g.this.f2103b != null) {
                g.this.f2103b.a(aVar, true);
            }
        }
    };
    private final View.OnClickListener h = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.g.4
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (g.this.f2103b != null) {
                g.this.f2103b.a();
            }
        }
    };
    protected final View.OnClickListener e = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.g.5
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            com.android.contacts.quickcontact.a aVar = (com.android.contacts.quickcontact.a) view.getTag();
            if (g.this.f2103b != null) {
                g.this.f2103b.a(aVar);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/g$a.class */
    public interface a {
        void a();

        void a(com.android.contacts.quickcontact.a aVar);

        void a(com.android.contacts.quickcontact.a aVar, boolean z);
    }

    public g() {
        setRetainInstance(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f2102a != null && this.f != null) {
            this.f.setAdapter((ListAdapter) new BaseAdapter() { // from class: com.android.contacts.quickcontact.g.1
                @Override // android.widget.Adapter
                public final int getCount() {
                    return g.this.f2102a.size();
                }

                @Override // android.widget.Adapter
                public final Object getItem(int i) {
                    return g.this.f2102a.get(i);
                }

                @Override // android.widget.Adapter
                public final long getItemId(int i) {
                    return i;
                }

                @Override // android.widget.Adapter
                public final View getView(int i, View view, ViewGroup viewGroup) {
                    com.android.contacts.quickcontact.a aVar = (com.android.contacts.quickcontact.a) g.this.f2102a.get(i);
                    String c = aVar.c();
                    if (view == null) {
                        view = g.this.getActivity().getLayoutInflater().inflate(c.equals("vnd.android.cursor.item/postal-address_v2") ? 2131427641 : 2131427640, viewGroup, false);
                    }
                    TextView textView = (TextView) view.findViewById(16908308);
                    TextView textView2 = (TextView) view.findViewById(16908309);
                    View findViewById = view.findViewById(2131296288);
                    ImageView imageView = (ImageView) view.findViewById(2131297258);
                    View findViewById2 = view.findViewById(2131297259);
                    ImageView imageView2 = (ImageView) view.findViewById(2131297181);
                    imageView.setOnClickListener(g.this.d);
                    imageView.setTag(aVar);
                    boolean z = aVar.g() != null;
                    imageView.setImageDrawable(aVar.d());
                    com.android.contacts.skin.a.a(imageView, g.this.getResources().getColor(2131034393));
                    imageView.setContentDescription(aVar.e());
                    imageView.setVisibility(z ? 0 : 8);
                    findViewById2.setVisibility(z ? 0 : 8);
                    if (c.equals("vnd.android.cursor.item/phone_v2")) {
                        textView.setContentDescription(g.this.getActivity().getString(2131755531, new Object[]{aVar.a()}));
                        if (z) {
                            imageView.setContentDescription(g.this.getActivity().getString(2131755546, new Object[]{aVar.a()}));
                        }
                    }
                    textView.setText(aVar.a());
                    if (textView2 != null) {
                        CharSequence b2 = aVar.b();
                        textView2.setText(b2);
                        if (TextUtils.isEmpty(b2)) {
                            textView2.setVisibility(8);
                        } else {
                            textView2.setVisibility(0);
                        }
                    }
                    Drawable a2 = m.a(g.this.getActivity(), aVar.h());
                    if (a2 != null) {
                        imageView2.setImageDrawable(a2);
                        imageView2.setVisibility(0);
                    } else {
                        imageView2.setVisibility(8);
                    }
                    ViewFlipper viewFlipper = (ViewFlipper) view.findViewById(2131297205);
                    if (viewFlipper != null) {
                        if (PhoneCapabilityTester.isRCSVerizon()) {
                            viewFlipper.getChildAt(0).setVisibility(8);
                            viewFlipper.setDisplayedChild(1);
                            ImageView imageView3 = (ImageView) viewFlipper.findViewById(2131297261);
                            imageView3.setOnClickListener(g.this.d);
                            imageView3.setTag(aVar);
                            imageView3.setImageDrawable(aVar.d());
                            com.android.contacts.skin.a.a(imageView3, g.this.getResources().getColor(2131034393));
                            imageView3.setContentDescription(aVar.e());
                            imageView.setVisibility(8);
                            findViewById2.setVisibility(8);
                            ImageView imageView4 = (ImageView) viewFlipper.findViewById(2131297522);
                            imageView4.setOnClickListener(g.this.e);
                            imageView4.setTag(aVar);
                            ImageView imageView5 = (ImageView) viewFlipper.findViewById(2131297539);
                            imageView5.setOnClickListener(g.this.c);
                            imageView5.setTag(aVar);
                            viewFlipper.getLayoutParams().width = g.this.getResources().getDimensionPixelSize(2131100282);
                        } else {
                            viewFlipper.setDisplayedChild(0);
                            findViewById.setOnClickListener(g.this.c);
                            findViewById.setTag(aVar);
                        }
                    }
                    return view;
                }
            });
        }
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.g = (RelativeLayout) layoutInflater.inflate(2131427639, viewGroup, false);
        this.f = (ListView) this.g.findViewById(2131296995);
        this.f.setItemsCanFocus(true);
        this.g.setOnClickListener(this.h);
        a();
        return this.g;
    }
}
