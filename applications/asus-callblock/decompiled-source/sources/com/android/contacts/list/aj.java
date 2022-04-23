package com.android.contacts.list;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.util.AsusRedPointNotificationHelper;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.ZenUiFamily;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/aj.class */
public final class aj extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f1776a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<Integer> f1777b = new ArrayList<>();
    private LayoutInflater c;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/aj$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f1778a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1779b;
        ImageView c;

        public a(long j, TextView textView, ImageView imageView) {
            this.f1778a = j;
            this.f1779b = textView;
            this.c = imageView;
        }
    }

    public aj(Context context) {
        this.f1776a = context;
        this.c = LayoutInflater.from(context);
        if (PhoneCapabilityTester.isKDDISku()) {
            this.f1777b.add(2131755717);
        }
        if (MainDialtactsActivity.checkNeedShowUpdateVesion(this.f1776a)) {
            this.f1777b.add(2131755851);
        }
        this.f1777b.add(2131755830);
        this.f1777b.add(2131755082);
        this.f1777b.add(2131755800);
        if (PhoneCapabilityTester.IsAsusDevice()) {
            this.f1777b.add(2131756120);
        }
        if (com.asus.contacts.a.a(this.f1776a, "com.vcast.mediamanager")) {
            this.f1777b.add(2131755814);
        }
        if (!MainDialtactsActivity.checkNeedDisableZenUiUpdate(this.f1776a)) {
            this.f1777b.add(Integer.valueOf(ZenUiFamily.getZenUiFamilyTitle()));
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f1777b == null ? 0 : this.f1777b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.f1777b == null ? null : this.f1777b.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return this.f1777b.get(i).intValue();
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            view = this.c.inflate(2131427622, (ViewGroup) null);
            aVar = new a(getItemId(i), (TextView) view.findViewById(2131297139), (ImageView) view.findViewById(2131297224));
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        aVar.f1778a = getItemId(i);
        aVar.f1779b.setText(((Integer) getItem(i)).intValue());
        if ((((Integer) getItem(i)).intValue() != 2131755830 || !AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(this.f1776a, 2)) && ((((Integer) getItem(i)).intValue() != 2131755851 || !AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(this.f1776a, 12)) && (((Integer) getItem(i)).intValue() != ZenUiFamily.getZenUiFamilyTitle() || !AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(this.f1776a, 13)))) {
            aVar.c.setVisibility(8);
        } else {
            aVar.c.setVisibility(0);
        }
        return view;
    }
}
