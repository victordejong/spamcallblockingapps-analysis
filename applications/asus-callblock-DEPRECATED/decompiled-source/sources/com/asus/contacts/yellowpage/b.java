package com.asus.contacts.yellowpage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.android.contacts.activities.RequestCallPhonePermissionsAcitvity;
import com.asus.contacts.yellowpage.utils.b;
import java.text.DecimalFormat;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/b.class */
public final class b extends ArrayAdapter<com.asus.contacts.yellowpage.a> {

    /* renamed from: a  reason: collision with root package name */
    boolean f2800a;

    /* renamed from: b  reason: collision with root package name */
    String f2801b;
    String c;
    private Context d;
    private View.OnClickListener f = new View.OnClickListener() { // from class: com.asus.contacts.yellowpage.b.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a aVar = (a) view.getTag();
            if (aVar != null) {
                com.asus.contacts.yellowpage.a item = b.this.getItem(aVar.f2805a);
                Intent intent = new Intent(b.this.d, AsusBusinessDetailActivity.class);
                intent.putExtra("extra_company_name", item.f2791b);
                intent.putExtra("extra_branch_name", item.c);
                intent.putExtra("extra_address", item.e);
                intent.putExtra("extra_smlclass", item.f);
                intent.putExtra("extra_phone", item.d);
                intent.putExtra("extra_merge_phone", item.g);
                intent.putExtra("extra_rating", item.h);
                intent.putExtra("extra_longitude", item.i);
                intent.putExtra("extra_latitude", item.j);
                intent.putExtra("extra_source", item.l);
                intent.putExtra("extra_category", b.this.f2801b);
                intent.putExtra("extra_parent_code", b.this.c);
                intent.putExtra("extra_source", item.l);
                intent.putExtra("extra_url", item.m);
                view.getContext().startActivity(intent);
            }
        }
    };
    private View.OnClickListener g = new View.OnClickListener() { // from class: com.asus.contacts.yellowpage.b.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String[][] strArr = (String[][]) view.getTag();
            String str = strArr[0][0];
            String str2 = strArr[0][1];
            String stripSeparators = PhoneNumberUtils.stripSeparators(strArr[1][0]);
            if (stripSeparators != null && !TextUtils.isEmpty(stripSeparators) && !RequestCallPhonePermissionsAcitvity.startPermissionActivity(b.this.d)) {
                Intent intent = new Intent("android.intent.action.CALL");
                intent.setData(Uri.parse("tel:" + stripSeparators));
                view.getContext().startActivity(intent);
                com.asus.contacts.yellowpage.utils.b.a(view.getContext(), b.EnumC0081b.d, str2, str);
            }
        }
    };
    private AdapterView.OnItemSelectedListener h = new AdapterView.OnItemSelectedListener() { // from class: com.asus.contacts.yellowpage.b.3
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            adapterView.setSelection(i);
            if (i > 0) {
                String[][] strArr = (String[][]) adapterView.getTag();
                String str = strArr[0][0];
                String str2 = strArr[0][1];
                String str3 = strArr[1][i];
                if (str3 != null && !TextUtils.isEmpty(str3)) {
                    Intent intent = new Intent("android.intent.action.CALL");
                    intent.setData(Uri.parse("tel:" + str3));
                    adapterView.getContext().startActivity(intent);
                }
                com.asus.contacts.yellowpage.utils.b.a(adapterView.getContext(), b.EnumC0081b.d, str2, str);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    };
    private int e = 2131427733;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/b$a.class */
    final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f2805a;

        /* renamed from: b  reason: collision with root package name */
        public String f2806b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String[] g;
        public TextView h;
        public TextView i;
        public View j;
        public View k;
        public Spinner l;
        public RatingBar m;
        public TextView n;

        public a(View view) {
            this.h = (TextView) view.findViewById(2131296544);
            this.i = (TextView) view.findViewById(2131296322);
            this.j = view.findViewById(2131296677);
            this.k = view.findViewById(2131296682);
            this.l = (Spinner) view.findViewById(2131296681);
            this.m = (RatingBar) view.findViewById(2131297214);
            this.n = (TextView) view.findViewById(2131296756);
            if (b.this.f2800a) {
                this.n.setVisibility(0);
            } else {
                this.n.setVisibility(8);
            }
        }
    }

    public b(Context context, ArrayList<com.asus.contacts.yellowpage.a> arrayList) {
        super(context, 2131427733, arrayList);
        this.d = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ArrayList<com.asus.contacts.yellowpage.a> a(int i, ArrayList<com.asus.contacts.yellowpage.a> arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        ArrayList<com.asus.contacts.yellowpage.a> arrayList3 = new ArrayList<>();
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            if (((int) ((com.asus.contacts.yellowpage.a) arrayList2.get(i2)).k) <= i) {
                arrayList3.add(arrayList2.get(i2));
            }
        }
        return arrayList3;
    }

    public static ArrayList<com.asus.contacts.yellowpage.a> a(String str, ArrayList<com.asus.contacts.yellowpage.a> arrayList) {
        ArrayList<com.asus.contacts.yellowpage.a> arrayList2;
        ArrayList<com.asus.contacts.yellowpage.a> arrayList3 = new ArrayList<>(arrayList);
        ArrayList<com.asus.contacts.yellowpage.a> arrayList4 = new ArrayList<>();
        if (TextUtils.isEmpty(str)) {
            arrayList2 = arrayList3;
        } else {
            for (int i = 0; i < arrayList3.size(); i++) {
                String lowerCase = arrayList3.get(i).f2791b.toLowerCase();
                String lowerCase2 = arrayList3.get(i).c.toLowerCase();
                if (lowerCase.contains(str) || lowerCase2.contains(str)) {
                    arrayList4.add(arrayList3.get(i));
                }
            }
            arrayList2 = arrayList4;
        }
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ArrayList<com.asus.contacts.yellowpage.a> a(ArrayList<com.asus.contacts.yellowpage.a> arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        ArrayList<com.asus.contacts.yellowpage.a> arrayList3 = new ArrayList<>();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < arrayList2.size(); i++) {
            String str = ((com.asus.contacts.yellowpage.a) arrayList2.get(i)).f2791b;
            String str2 = ((com.asus.contacts.yellowpage.a) arrayList2.get(i)).e;
            if (i != 0) {
                int i2 = 0;
                while (true) {
                    if (i2 >= arrayList3.size()) {
                        arrayList4.add(Integer.valueOf(i));
                        arrayList3.add(arrayList2.get(i));
                        break;
                    } else if (!str.equals(((com.asus.contacts.yellowpage.a) arrayList3.get(i2)).f2791b) || !str2.equals(((com.asus.contacts.yellowpage.a) arrayList3.get(i2)).e)) {
                        i2++;
                    }
                }
            } else {
                arrayList4.add(Integer.valueOf(i));
                arrayList3.add(arrayList2.get(i));
            }
        }
        int i3 = 0;
        while (i3 < arrayList3.size()) {
            int intValue = ((Integer) arrayList4.get(i3)).intValue();
            int size = (i3 == arrayList3.size() - 1 ? arrayList.size() : ((Integer) arrayList4.get(i3 + 1)).intValue()) - intValue;
            switch (size) {
                case 1:
                    ((com.asus.contacts.yellowpage.a) arrayList3.get(i3)).g = new String[1];
                    ((com.asus.contacts.yellowpage.a) arrayList3.get(i3)).g[0] = arrayList.get(intValue).d;
                    break;
                default:
                    ((com.asus.contacts.yellowpage.a) arrayList3.get(i3)).g = new String[size + 1];
                    ((com.asus.contacts.yellowpage.a) arrayList3.get(i3)).g[0] = this.d.getString(2131755554);
                    int i4 = 1;
                    int i5 = intValue;
                    while (i4 <= size) {
                        if (!TextUtils.isEmpty(arrayList.get(i5).d)) {
                            ((com.asus.contacts.yellowpage.a) arrayList3.get(i3)).g[i4] = arrayList.get(i5).d;
                        }
                        i4++;
                        i5++;
                    }
                    break;
            }
            i3++;
        }
        return arrayList3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            view = LayoutInflater.from(this.d).inflate(this.e, (ViewGroup) null);
            aVar = new a(view);
            view.setTag(aVar);
        }
        com.asus.contacts.yellowpage.a item = getItem(i);
        aVar.f2805a = i;
        aVar.f2806b = item.f2791b;
        aVar.c = item.c;
        aVar.d = item.d;
        aVar.e = item.e;
        aVar.f = item.f;
        aVar.g = item.g;
        if (TextUtils.isEmpty(aVar.c)) {
            aVar.h.setText(aVar.f2806b);
        } else {
            aVar.h.setText(aVar.f2806b + " - " + aVar.c);
        }
        aVar.i.setText(aVar.e);
        if (item.k < 1000.0d) {
            aVar.n.setText(new DecimalFormat("0.0").format(item.k) + b.this.d.getString(2131755593));
        } else {
            aVar.n.setText(new DecimalFormat("0.0").format(item.k / 1000.0d) + b.this.d.getString(2131755592));
        }
        String[] strArr = {new String[]{aVar.f2806b, aVar.f}, aVar.g};
        if (aVar.g.length > 1) {
            aVar.l.setTag(strArr);
        } else {
            aVar.j.setTag(strArr);
        }
        aVar.m.setRating(item.h);
        if (item.h > 0.0f) {
            aVar.m.setVisibility(0);
        } else {
            aVar.m.setVisibility(8);
        }
        switch (aVar.g.length) {
            case 1:
                aVar.k.setVisibility(8);
                aVar.l.setOnItemSelectedListener(null);
                if (!TextUtils.isEmpty(aVar.g[0])) {
                    aVar.j.setVisibility(0);
                    aVar.j.setOnClickListener(this.g);
                    break;
                } else {
                    aVar.j.setVisibility(8);
                    aVar.j.setOnClickListener(null);
                    break;
                }
            default:
                aVar.j.setVisibility(8);
                aVar.j.setOnClickListener(null);
                if (!TextUtils.isEmpty(aVar.g[1])) {
                    p pVar = new p(this.d, aVar.g);
                    aVar.k.setVisibility(0);
                    aVar.k.setOnClickListener(null);
                    aVar.l.setAdapter((SpinnerAdapter) pVar);
                    aVar.l.setOnItemSelectedListener(this.h);
                    break;
                } else {
                    aVar.k.setVisibility(8);
                    aVar.k.setOnClickListener(null);
                    aVar.l.setOnItemSelectedListener(null);
                    break;
                }
        }
        view.setOnClickListener(this.f);
        return view;
    }
}
