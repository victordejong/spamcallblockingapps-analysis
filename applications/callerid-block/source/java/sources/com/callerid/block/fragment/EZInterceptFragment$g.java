package com.callerid.block.fragment;

import android.database.Cursor;
import android.provider.ContactsContract;
import android.view.ViewGroup;
import com.callerid.block.bean.EZSimpleContact;
import com.callerid.block.util.C1178g;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$g.class */
public class EZInterceptFragment$g implements Runnable {

    /* renamed from: b */
    final /* synthetic */ EZInterceptFragment f4353b;

    /* renamed from: com.callerid.block.fragment.EZInterceptFragment$g$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$g$a.class */
    class RunnableC0954a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ List f4354b;

        RunnableC0954a(List list) {
            EZInterceptFragment$g.this = r4;
            this.f4354b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4354b.size() > 0) {
                EZInterceptFragment.f2(EZInterceptFragment$g.this.f4353b).addAll(this.f4354b);
                if (EZInterceptFragment.f2(EZInterceptFragment$g.this.f4353b).size() <= 0) {
                    return;
                }
                EZInterceptFragment.V1(EZInterceptFragment$g.this.f4353b).notifyDataSetChanged();
                ViewGroup.LayoutParams layoutParams = EZInterceptFragment.W1(EZInterceptFragment$g.this.f4353b).getLayoutParams();
                double height = EZInterceptFragment.Z1(EZInterceptFragment$g.this.f4353b).getWindowManager().getDefaultDisplay().getHeight();
                Double.isNaN(height);
                int i = (int) (height * 0.75d);
                if (EZInterceptFragment.f2(EZInterceptFragment$g.this.f4353b).size() <= 20) {
                    C1178g.m9846b(EZInterceptFragment.W1(EZInterceptFragment$g.this.f4353b));
                    if (layoutParams.height <= i) {
                        return;
                    }
                }
                layoutParams.height = i;
                EZInterceptFragment.W1(EZInterceptFragment$g.this.f4353b).setLayoutParams(layoutParams);
            }
        }
    }

    EZInterceptFragment$g(EZInterceptFragment eZInterceptFragment) {
        this.f4353b = eZInterceptFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ArrayList arrayList = new ArrayList();
            Cursor query = EZInterceptFragment.G1(this.f4353b).getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "sort_key", "contact_id", "data1", "photo_id"}, null, null, "sort_key");
            if (query != null && query.getCount() > 0) {
                query.moveToFirst();
                for (int i = 0; i < query.getCount(); i++) {
                    query.moveToPosition(i);
                    String string = query.getString(query.getColumnIndex("data1"));
                    String string2 = query.getString(query.getColumnIndex("display_name"));
                    String string3 = query.getString(query.getColumnIndex("photo_id"));
                    int i2 = query.getInt(query.getColumnIndex("contact_id"));
                    EZSimpleContact eZSimpleContact = new EZSimpleContact();
                    eZSimpleContact.setId(i2);
                    eZSimpleContact.setNumber(string);
                    if (string3 != null && !string3.equals("")) {
                        eZSimpleContact.setPhoto_id(string3);
                    }
                    if (string2 != null) {
                        eZSimpleContact.setName(string2);
                        arrayList.add(eZSimpleContact);
                    }
                }
            }
            EZInterceptFragment.Z1(this.f4353b).runOnUiThread(new RunnableC0954a(arrayList));
            if (query == null) {
                return;
            }
            query.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
