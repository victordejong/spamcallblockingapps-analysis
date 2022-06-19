package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.popup.contact.DialogContactMultiNumber;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber.class */
public class DialogContactMultiNumber extends DialogPopup {

    /* renamed from: a */
    private DialogContactMultiNumberListener f27038a;

    /* renamed from: c */
    private long f27040c;

    /* renamed from: f */
    private TextView f27043f;

    /* renamed from: g */
    private TextView f27044g;

    /* renamed from: h */
    private ArrayList<PhoneData> f27045h;

    /* renamed from: i */
    private List<String> f27046i;

    /* renamed from: j */
    private MultiNumberAdapter f27047j;

    /* renamed from: b */
    private boolean f27039b = false;

    /* renamed from: k */
    private int f27048k = -1;

    /* renamed from: l */
    private OnSelectChangeListener f27049l = new OnSelectChangeListener() { // from class: com.callapp.contacts.popup.contact.DialogContactMultiNumber.1
        @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.OnSelectChangeListener
        /* renamed from: a */
        public final void mo27988a(int i) {
            DialogContactMultiNumber.this.f27043f.setEnabled(true);
            DialogContactMultiNumber.this.f27044g.setEnabled(true);
            DialogContactMultiNumber.this.f27048k = i;
            int i2 = 0;
            while (i2 < DialogContactMultiNumber.this.f27045h.size()) {
                ((PhoneData) DialogContactMultiNumber.this.f27045h.get(i2)).f27054b = i2 == i;
                DialogContactMultiNumber.this.f27047j.notifyDataSetChanged();
                i2++;
            }
        }
    };

    /* renamed from: d */
    private int f27041d = ThemeUtils.getColor(2131100140);

    /* renamed from: e */
    private int f27042e = ThemeUtils.getColor(2131100108);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener.class */
    public interface DialogContactMultiNumberListener {
        void onDone(Phone phone, boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter.class */
    class MultiNumberAdapter extends RecyclerView.AbstractC2626a<PhoneViewHolder> {

        /* renamed from: b */
        private List<PhoneData> f27052b;

        public MultiNumberAdapter(List<PhoneData> list) {
            DialogContactMultiNumber.this = r4;
            this.f27052b = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public int getItemCount() {
            return this.f27052b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public /* synthetic */ void onBindViewHolder(PhoneViewHolder phoneViewHolder, int i) {
            phoneViewHolder.m27986a(this.f27052b.get(i), DialogContactMultiNumber.this.f27049l);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public /* synthetic */ PhoneViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new PhoneViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558476, viewGroup, false));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener.class */
    public interface OnSelectChangeListener {
        /* renamed from: a */
        void mo27988a(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData.class */
    public class PhoneData {

        /* renamed from: a */
        Phone f27053a;

        /* renamed from: b */
        boolean f27054b;

        PhoneData(Phone phone, boolean z) {
            DialogContactMultiNumber.this = r4;
            this.f27053a = phone;
            this.f27054b = z;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder.class */
    public class PhoneViewHolder extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        RadioButton f27056r;

        /* renamed from: s */
        TextView f27057s;

        /* renamed from: t */
        TextView f27058t;

        /* renamed from: u */
        View f27059u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        PhoneViewHolder(View view) {
            super(view);
            DialogContactMultiNumber.this = r5;
            this.f27059u = view.findViewById(2131363710);
            this.f27056r = (RadioButton) view.findViewById(2131363607);
            TextView textView = (TextView) view.findViewById(2131363500);
            this.f27057s = textView;
            textView.setTextColor(r5.f27041d);
            TextView textView2 = (TextView) view.findViewById(2131363499);
            this.f27058t = textView2;
            textView2.setTextColor(r5.f27042e);
        }

        /* renamed from: a */
        public /* synthetic */ void m27987a(OnSelectChangeListener onSelectChangeListener, View view) {
            onSelectChangeListener.mo27988a(getAdapterPosition());
        }

        /* renamed from: a */
        final void m27986a(PhoneData phoneData, final OnSelectChangeListener onSelectChangeListener) {
            this.f27057s.setText(phoneData.f27053a.m26087e());
            String phoneInfo = phoneData.f27053a.getPhoneInfo();
            this.f27058t.setText(phoneInfo);
            this.f27058t.setVisibility(StringUtils.m26059a((CharSequence) phoneInfo) ? 8 : 0);
            this.f27056r.setChecked(phoneData.f27054b);
            this.f27059u.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact._$$Lambda$DialogContactMultiNumber$PhoneViewHolder$SCIr8OybookOB8HYMZ_ORilpNcU
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogContactMultiNumber.PhoneViewHolder.this.m27987a(onSelectChangeListener, view);
                }
            });
        }
    }

    public DialogContactMultiNumber(long j, List<String> list, DialogContactMultiNumberListener dialogContactMultiNumberListener) {
        this.f27040c = j;
        this.f27038a = dialogContactMultiNumberListener;
        this.f27046i = list;
    }

    /* renamed from: a */
    public /* synthetic */ void m27998a(View view) {
        this.f27039b = true;
        dismiss();
    }

    /* renamed from: b */
    public /* synthetic */ void m27995b(View view) {
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void dismiss() {
        super.dismiss();
        if (this.f27038a != null) {
            AndroidUtils.m27635a(getActivity());
            this.f27038a.onDone(this.f27045h.get(this.f27048k).f27053a, this.f27039b);
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558607, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131364421);
        textView.setText(Activities.getString(2131887859));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(2131363341);
        ArrayList<Phone> arrayList = new ArrayList();
        ContactUtils.m28301f(this.f27040c);
        for (String str : this.f27046i) {
            arrayList.add(PhoneManager.get().m28239a(str));
        }
        this.f27045h = new ArrayList<>();
        for (Phone phone : arrayList) {
            this.f27045h.add(new PhoneData(phone, false));
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(inflate.getContext()));
        MultiNumberAdapter multiNumberAdapter = new MultiNumberAdapter(this.f27045h);
        this.f27047j = multiNumberAdapter;
        recyclerView.setAdapter(multiNumberAdapter);
        TextView textView2 = (TextView) inflate.findViewById(2131363137);
        this.f27043f = textView2;
        textView2.setText(Activities.getString(2131887876));
        this.f27043f.setTextColor(this.f27042e);
        TextView textView3 = (TextView) inflate.findViewById(2131362007);
        this.f27044g = textView3;
        textView3.setText(Activities.getString(2131887855));
        this.f27044g.setTextColor(this.f27042e);
        this.f27043f.setEnabled(false);
        this.f27044g.setEnabled(false);
        this.f27043f.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact._$$Lambda$DialogContactMultiNumber$Zo8RUby3ENG52rc8wpFMVwX0QXo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogContactMultiNumber.this.m27995b(view);
            }
        });
        this.f27044g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact._$$Lambda$DialogContactMultiNumber$YW5hPm_g9yt4Yjyrj_28F8Qdh6Q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogContactMultiNumber.this.m27998a(view);
            }
        });
        return inflate;
    }
}
