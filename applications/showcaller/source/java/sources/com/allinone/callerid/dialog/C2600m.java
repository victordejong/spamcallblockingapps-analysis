package com.allinone.callerid.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.EZSimpleContact;
import com.allinone.callerid.bean.WeekInfo;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.model.EZCountryCode;
import com.allinone.callerid.p136b.C2144a;
import com.allinone.callerid.p136b.C2155b;
import com.allinone.callerid.p136b.C2198k;
import com.allinone.callerid.p136b.p137a0.C2148a;
import com.allinone.callerid.p162i.p163a.AbstractC2773b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2808b;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2814f;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2823j;
import com.allinone.callerid.p162i.p163a.p172g.AbstractC2824k;
import com.allinone.callerid.p162i.p163a.p172g.C2809c;
import com.allinone.callerid.p162i.p163a.p172g.C2815g;
import com.allinone.callerid.p162i.p163a.p181l.AbstractC2896c;
import com.allinone.callerid.p162i.p163a.p181l.C2897d;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.p204j1.C3784b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: com.allinone.callerid.dialog.m */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m.class */
public class C2600m {

    /* renamed from: a */
    private static DialogInterfaceC0146a f9056a;

    /* renamed from: b */
    private static DialogInterfaceC0146a f9057b;

    /* renamed from: c */
    private static DialogInterfaceC0146a f9058c;

    /* renamed from: com.allinone.callerid.dialog.m$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$a.class */
    public class C2601a implements Comparator<EZCountryCode> {
        C2601a() {
        }

        /* renamed from: a */
        public int compare(EZCountryCode eZCountryCode, EZCountryCode eZCountryCode2) {
            return Integer.parseInt(eZCountryCode.getCountry_code()) - Integer.parseInt(eZCountryCode2.getCountry_code());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$b.class */
    public class C2602b implements AdapterView.OnItemClickListener {

        /* renamed from: d */
        final /* synthetic */ ArrayList f9059d;

        /* renamed from: e */
        final /* synthetic */ AbstractC2814f f9060e;

        C2602b(ArrayList arrayList, AbstractC2814f abstractC2814f) {
            this.f9059d = arrayList;
            this.f9060e = abstractC2814f;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f9060e.mo25263a((EZSimpleContact) this.f9059d.get(i));
            if (C2600m.f9057b != null) {
                C2600m.f9057b.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$c.class */
    public class RunnableC2603c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f9061d;

        /* renamed from: e */
        final /* synthetic */ C2155b f9062e;

        /* renamed from: f */
        final /* synthetic */ TextView f9063f;

        /* renamed from: g */
        final /* synthetic */ ListView f9064g;

        /* renamed from: com.allinone.callerid.dialog.m$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$c$a.class */
        class C2604a implements AbstractC2824k {
            C2604a() {
                RunnableC2603c.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2824k
            /* renamed from: a */
            public void mo26540a(ArrayList<EZSimpleContact> arrayList) {
                if (arrayList.size() > 0) {
                    RunnableC2603c.this.f9061d.addAll(arrayList);
                    RunnableC2603c.this.f9062e.notifyDataSetChanged();
                    return;
                }
                RunnableC2603c.this.f9063f.setVisibility(0);
                RunnableC2603c.this.f9064g.setVisibility(8);
            }
        }

        RunnableC2603c(ArrayList arrayList, C2155b c2155b, TextView textView, ListView listView) {
            this.f9061d = arrayList;
            this.f9062e = c2155b;
            this.f9063f = textView;
            this.f9064g = listView;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2815g.m26556a(new C2604a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$d.class */
    public class View$OnClickListenerC2605d implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ DialogInterfaceC0146a f9066d;

        View$OnClickListenerC2605d(DialogInterfaceC0146a dialogInterfaceC0146a) {
            this.f9066d = dialogInterfaceC0146a;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogInterfaceC0146a dialogInterfaceC0146a = this.f9066d;
            if (dialogInterfaceC0146a != null) {
                dialogInterfaceC0146a.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$e.class */
    public class View$OnClickListenerC2606e implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ C2148a f9067d;

        /* renamed from: e */
        final /* synthetic */ AbstractC2896c f9068e;

        /* renamed from: f */
        final /* synthetic */ DialogInterfaceC0146a f9069f;

        View$OnClickListenerC2606e(C2148a c2148a, AbstractC2896c abstractC2896c, DialogInterfaceC0146a dialogInterfaceC0146a) {
            this.f9067d = c2148a;
            this.f9068e = abstractC2896c;
            this.f9069f = dialogInterfaceC0146a;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2148a c2148a = this.f9067d;
            if (c2148a == null || c2148a.m27911O()) {
                return;
            }
            ArrayList<WeekInfo> m27779C = this.f9067d.m27779C();
            AbstractC2896c abstractC2896c = this.f9068e;
            if (abstractC2896c != null) {
                abstractC2896c.mo25244a(m27779C);
            }
            C2897d.m26450a(m27779C);
            DialogInterfaceC0146a dialogInterfaceC0146a = this.f9069f;
            if (dialogInterfaceC0146a == null) {
                return;
            }
            dialogInterfaceC0146a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$f.class */
    public class RunnableC2607f implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f9070d;

        /* renamed from: e */
        final /* synthetic */ C2148a f9071e;

        /* renamed from: com.allinone.callerid.dialog.m$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$f$a.class */
        class C2608a implements AbstractC2896c {
            C2608a() {
                RunnableC2607f.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p181l.AbstractC2896c
            /* renamed from: a */
            public void mo25244a(ArrayList<WeekInfo> arrayList) {
                C2148a c2148a = RunnableC2607f.this.f9071e;
                if (c2148a != null) {
                    c2148a.m27781A(arrayList, true);
                    RunnableC2607f.this.f9071e.m31967i();
                }
            }
        }

        RunnableC2607f(ArrayList arrayList, C2148a c2148a) {
            this.f9070d = arrayList;
            this.f9071e = c2148a;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = this.f9070d;
            if (arrayList == null || arrayList.size() <= 0) {
                C2897d.m26449b(new C2608a());
                return;
            }
            this.f9071e.m27781A(this.f9070d, true);
            this.f9071e.m31967i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$g.class */
    public class DialogInterface$OnClickListenerC2609g implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2609g() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$h.class */
    public class DialogInterface$OnClickListenerC2610h implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ Activity f9073d;

        DialogInterface$OnClickListenerC2610h(Activity activity) {
            this.f9073d = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C3784b.m24143c(this.f9073d);
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$i.class */
    public class C2611i implements AdapterView.OnItemClickListener {

        /* renamed from: d */
        final /* synthetic */ ArrayList f9074d;

        /* renamed from: e */
        final /* synthetic */ AbstractC2808b f9075e;

        C2611i(ArrayList arrayList, AbstractC2808b abstractC2808b) {
            this.f9074d = arrayList;
            this.f9075e = abstractC2808b;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f9075e.mo25264a((CallLogBean) this.f9074d.get(i));
            if (C2600m.f9056a != null) {
                C2600m.f9056a.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$j.class */
    public class RunnableC2612j implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f9076d;

        /* renamed from: e */
        final /* synthetic */ TextView f9077e;

        /* renamed from: f */
        final /* synthetic */ ListView f9078f;

        /* renamed from: g */
        final /* synthetic */ C2144a f9079g;

        /* renamed from: com.allinone.callerid.dialog.m$j$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$j$a.class */
        class C2613a implements AbstractC2823j {
            C2613a() {
                RunnableC2612j.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p172g.AbstractC2823j
            /* renamed from: a */
            public void mo26541a(ArrayList<CallLogBean> arrayList) {
                if (arrayList.size() <= 0) {
                    RunnableC2612j.this.f9077e.setVisibility(0);
                    RunnableC2612j.this.f9078f.setVisibility(8);
                    return;
                }
                RunnableC2612j.this.f9076d.addAll(arrayList);
                RunnableC2612j.this.f9077e.setVisibility(8);
                RunnableC2612j.this.f9078f.setVisibility(0);
                RunnableC2612j.this.f9079g.notifyDataSetChanged();
            }
        }

        RunnableC2612j(ArrayList arrayList, TextView textView, ListView listView, C2144a c2144a) {
            this.f9076d = arrayList;
            this.f9077e = textView;
            this.f9078f = listView;
            this.f9079g = c2144a;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2809c.m26563a(new C2613a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$k.class */
    public class C2614k implements TextWatcher {

        /* renamed from: d */
        final /* synthetic */ List f9081d;

        /* renamed from: e */
        final /* synthetic */ C2198k f9082e;

        C2614k(List list, C2198k c2198k) {
            this.f9081d = list;
            this.f9082e = c2198k;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ArrayList arrayList = new ArrayList();
            if (charSequence == null || "".equals(charSequence.toString())) {
                arrayList.clear();
                this.f9082e.m27859b(this.f9081d);
            } else if (charSequence.length() > 0) {
                this.f9082e.m27859b(C2600m.m27041f(charSequence.toString(), this.f9081d));
            } else {
                arrayList.clear();
                this.f9082e.m27859b(this.f9081d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.m$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/m$l.class */
    public class C2615l implements AdapterView.OnItemClickListener {

        /* renamed from: d */
        final /* synthetic */ List f9083d;

        /* renamed from: e */
        final /* synthetic */ AbstractC2773b f9084e;

        C2615l(List list, AbstractC2773b abstractC2773b) {
            this.f9083d = list;
            this.f9084e = abstractC2773b;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f9084e.mo24754a((EZCountryCode) this.f9083d.get(i));
            if (C2600m.f9058c != null) {
                C2600m.f9058c.dismiss();
            }
        }
    }

    /* renamed from: e */
    public static void m27042e(Context context, ArrayList<WeekInfo> arrayList, AbstractC2896c abstractC2896c) {
        try {
            View inflate = LayoutInflater.from(context).inflate(R$layout.dialog_weeks, (ViewGroup) null);
            RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R$id.dialog_weeks_rv);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
            TextView textView2 = (TextView) inflate.findViewById(R$id.dialog_weeks_cancel);
            TextView textView3 = (TextView) inflate.findViewById(R$id.dialog_weeks_done);
            Typeface m24359b = C3739f1.m24359b();
            textView2.setTypeface(m24359b);
            textView3.setTypeface(m24359b);
            textView.setTypeface(m24359b);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            linearLayoutManager.m32114z2(1);
            recyclerView.setLayoutManager(linearLayoutManager);
            recyclerView.setHasFixedSize(true);
            C2148a c2148a = new C2148a(context, recyclerView);
            recyclerView.setAdapter(c2148a);
            DialogInterfaceC0146a m35556s = new DialogInterfaceC0146a.C0147a(context).m35557r(inflate).m35571d(true).m35556s();
            textView2.setOnClickListener(new View$OnClickListenerC2605d(m35556s));
            textView3.setOnClickListener(new View$OnClickListenerC2606e(c2148a, abstractC2896c, m35556s));
            inflate.post(new RunnableC2607f(arrayList, c2148a));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public static List<EZCountryCode> m27041f(String str, List<EZCountryCode> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            EZCountryCode eZCountryCode = list.get(i);
            String lowerCase = eZCountryCode.country_name.toLowerCase();
            String str2 = eZCountryCode.country_code;
            String substring = str.startsWith("+") ? str.substring(1) : str;
            if ((lowerCase.startsWith(str.toLowerCase()) || str2.startsWith(substring)) && !arrayList.contains(eZCountryCode)) {
                arrayList.add(eZCountryCode);
            }
        }
        if (arrayList.size() > 0) {
            Collections.sort(arrayList, new C2601a());
        }
        return arrayList;
    }

    /* renamed from: g */
    public static void m27040g(Activity activity, AbstractC2808b abstractC2808b) {
        try {
            ArrayList arrayList = new ArrayList();
            View inflate = LayoutInflater.from(activity).inflate(R$layout.listview_addblock_logs, (ViewGroup) null);
            ListView listView = (ListView) inflate.findViewById(R$id.list_addblock_logs);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_nocall);
            C2144a c2144a = new C2144a(activity, arrayList, listView);
            listView.setAdapter((ListAdapter) c2144a);
            ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
            layoutParams.height = (int) (activity.getWindowManager().getDefaultDisplay().getHeight() * 0.75d);
            listView.setLayoutParams(layoutParams);
            listView.setOnItemClickListener(new C2611i(arrayList, abstractC2808b));
            f9056a = new DialogInterfaceC0146a.C0147a(activity).m35567h(activity.getResources().getString(R$string.add_block_log)).m35557r(inflate).m35571d(true).m35556s();
            inflate.post(new RunnableC2612j(arrayList, textView, listView, c2144a));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    public static void m27039h(Activity activity, AbstractC2814f abstractC2814f) {
        try {
            ArrayList arrayList = new ArrayList();
            View inflate = LayoutInflater.from(activity).inflate(R$layout.listview_addblock_contact, (ViewGroup) null);
            ListView listView = (ListView) inflate.findViewById(R$id.list_addblock_contact);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_nocontacts);
            C2155b c2155b = new C2155b(activity, arrayList, listView);
            listView.setAdapter((ListAdapter) c2155b);
            ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
            layoutParams.height = (int) (activity.getWindowManager().getDefaultDisplay().getHeight() * 0.75d);
            listView.setLayoutParams(layoutParams);
            listView.setOnItemClickListener(new C2602b(arrayList, abstractC2814f));
            f9057b = new DialogInterfaceC0146a.C0147a(activity).m35567h(activity.getResources().getString(R$string.add_block_contact)).m35557r(inflate).m35571d(true).m35556s();
            inflate.post(new RunnableC2603c(arrayList, c2155b, textView, listView));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    public static void m27038i(Activity activity, List<EZCountryCode> list, AbstractC2773b abstractC2773b) {
        try {
            View inflate = LayoutInflater.from(activity).inflate(R$layout.contact_record_list_view, (ViewGroup) null);
            ListView listView = (ListView) inflate.findViewById(R$id.call_log_list);
            BaseEditText baseEditText = (BaseEditText) inflate.findViewById(R$id.et_search_country);
            ArrayList arrayList = new ArrayList(list);
            C2198k c2198k = new C2198k(activity, arrayList, listView);
            listView.setAdapter((ListAdapter) c2198k);
            baseEditText.addTextChangedListener(new C2614k(list, c2198k));
            ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
            layoutParams.height = (int) (activity.getWindowManager().getDefaultDisplay().getHeight() * 0.75d);
            listView.setLayoutParams(layoutParams);
            listView.setOnItemClickListener(new C2615l(arrayList, abstractC2773b));
            f9058c = new DialogInterfaceC0146a.C0147a(activity).m35557r(inflate).m35571d(true).m35556s();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    public static boolean m27037j(Activity activity) {
        if (Build.VERSION.SDK_INT < 24 || C3776a.m24153l()) {
            return true;
        }
        try {
            DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(activity).m35559p(R$string.Permission_needed).m35568g(R$string.ring_silent_per_massage).m35562m(R$string.allow_A, new DialogInterface$OnClickListenerC2610h(activity)).m35566i(R$string.LATER, new DialogInterface$OnClickListenerC2609g()).m35574a();
            m35574a.setCanceledOnTouchOutside(false);
            m35574a.show();
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
