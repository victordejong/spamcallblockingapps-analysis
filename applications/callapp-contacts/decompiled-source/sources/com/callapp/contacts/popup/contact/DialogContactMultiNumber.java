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

    /* renamed from: a  reason: collision with root package name */
    private DialogContactMultiNumberListener f15455a;

    /* renamed from: c  reason: collision with root package name */
    private long f15457c;
    private TextView f;
    private TextView g;
    private ArrayList<PhoneData> h;
    private List<String> i;
    private MultiNumberAdapter j;

    /* renamed from: b  reason: collision with root package name */
    private boolean f15456b = false;
    private int k = -1;
    private OnSelectChangeListener l = new OnSelectChangeListener() { // from class: com.callapp.contacts.popup.contact.DialogContactMultiNumber.1
        @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.OnSelectChangeListener
        public final void a(int i) {
            DialogContactMultiNumber.this.f.setEnabled(true);
            DialogContactMultiNumber.this.g.setEnabled(true);
            DialogContactMultiNumber.this.k = i;
            int i2 = 0;
            while (i2 < DialogContactMultiNumber.this.h.size()) {
                ((PhoneData) DialogContactMultiNumber.this.h.get(i2)).f15463b = i2 == i;
                DialogContactMultiNumber.this.j.notifyDataSetChanged();
                i2++;
            }
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private int f15458d = ThemeUtils.getColor(2131100140);
    private int e = ThemeUtils.getColor(2131100108);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener.class */
    public interface DialogContactMultiNumberListener {
        void onDone(Phone phone, boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter.class */
    class MultiNumberAdapter extends RecyclerView.a<PhoneViewHolder> {

        /* renamed from: b  reason: collision with root package name */
        private List<PhoneData> f15461b;

        public MultiNumberAdapter(List<PhoneData> list) {
            this.f15461b = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public int getItemCount() {
            return this.f15461b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public /* synthetic */ void onBindViewHolder(PhoneViewHolder phoneViewHolder, int i) {
            phoneViewHolder.a(this.f15461b.get(i), DialogContactMultiNumber.this.l);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public /* synthetic */ PhoneViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new PhoneViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558476, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener.class */
    public interface OnSelectChangeListener {
        void a(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData.class */
    public class PhoneData {

        /* renamed from: a  reason: collision with root package name */
        Phone f15462a;

        /* renamed from: b  reason: collision with root package name */
        boolean f15463b;

        PhoneData(Phone phone, boolean z) {
            this.f15462a = phone;
            this.f15463b = z;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneViewHolder.class */
    class PhoneViewHolder extends RecyclerView.v {
        RadioButton r;
        TextView s;
        TextView t;
        View u;

        PhoneViewHolder(View view) {
            super(view);
            this.u = view.findViewById(2131363710);
            this.r = (RadioButton) view.findViewById(2131363607);
            TextView textView = (TextView) view.findViewById(2131363500);
            this.s = textView;
            textView.setTextColor(DialogContactMultiNumber.this.f15458d);
            TextView textView2 = (TextView) view.findViewById(2131363499);
            this.t = textView2;
            textView2.setTextColor(DialogContactMultiNumber.this.e);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(OnSelectChangeListener onSelectChangeListener, View view) {
            onSelectChangeListener.a(getAdapterPosition());
        }

        final void a(PhoneData phoneData, final OnSelectChangeListener onSelectChangeListener) {
            this.s.setText(phoneData.f15462a.e());
            String phoneInfo = phoneData.f15462a.getPhoneInfo();
            this.t.setText(phoneInfo);
            this.t.setVisibility(StringUtils.a((CharSequence) phoneInfo) ? 8 : 0);
            this.r.setChecked(phoneData.f15463b);
            this.u.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact._$$Lambda$DialogContactMultiNumber$PhoneViewHolder$SCIr8OybookOB8HYMZ_ORilpNcU
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DialogContactMultiNumber.PhoneViewHolder.this.a(onSelectChangeListener, view);
                }
            });
        }
    }

    public DialogContactMultiNumber(long j, List<String> list, DialogContactMultiNumberListener dialogContactMultiNumberListener) {
        this.f15457c = j;
        this.f15455a = dialogContactMultiNumberListener;
        this.i = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f15456b = true;
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void dismiss() {
        super.dismiss();
        if (this.f15455a != null) {
            AndroidUtils.a(getActivity());
            this.f15455a.onDone(this.h.get(this.k).f15462a, this.f15456b);
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
        ContactUtils.f(this.f15457c);
        for (String str : this.i) {
            arrayList.add(PhoneManager.get().a(str));
        }
        this.h = new ArrayList<>();
        for (Phone phone : arrayList) {
            this.h.add(new PhoneData(phone, false));
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(inflate.getContext()));
        MultiNumberAdapter multiNumberAdapter = new MultiNumberAdapter(this.h);
        this.j = multiNumberAdapter;
        recyclerView.setAdapter(multiNumberAdapter);
        TextView textView2 = (TextView) inflate.findViewById(2131363137);
        this.f = textView2;
        textView2.setText(Activities.getString(2131887876));
        this.f.setTextColor(this.e);
        TextView textView3 = (TextView) inflate.findViewById(2131362007);
        this.g = textView3;
        textView3.setText(Activities.getString(2131887855));
        this.g.setTextColor(this.e);
        this.f.setEnabled(false);
        this.g.setEnabled(false);
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact._$$Lambda$DialogContactMultiNumber$Zo8RUby3ENG52rc8wpFMVwX0QXo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogContactMultiNumber.this.b(view);
            }
        });
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact._$$Lambda$DialogContactMultiNumber$YW5hPm_g9yt4Yjyrj_28F8Qdh6Q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogContactMultiNumber.this.a(view);
            }
        });
        return inflate;
    }
}
