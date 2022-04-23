package com.callerid.block.fragment;

import android.database.Cursor;
import android.provider.CallLog;
import android.view.ViewGroup;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1178g;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.p060x0.C1230a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$f.class */
class EZInterceptFragment$f implements Runnable {

    /* renamed from: b */
    final /* synthetic */ EZInterceptFragment f4350b;

    /* renamed from: com.callerid.block.fragment.EZInterceptFragment$f$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$f$a.class */
    class RunnableC0953a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ List f4351b;

        RunnableC0953a(List list) {
            this.f4351b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4351b.size() > 0) {
                EZInterceptFragment$f.this.f4350b.Y.addAll(this.f4351b);
            }
            if (EZInterceptFragment$f.this.f4350b.Y.size() > 0) {
                if (EZInterceptFragment.S1(EZInterceptFragment$f.this.f4350b) == null) {
                    EZInterceptFragment eZInterceptFragment = EZInterceptFragment$f.this.f4350b;
                    EZInterceptFragment.T1(eZInterceptFragment, eZInterceptFragment.Y);
                }
                EZInterceptFragment.S1(EZInterceptFragment$f.this.f4350b).notifyDataSetChanged();
                ViewGroup.LayoutParams layoutParams = EZInterceptFragment.U1(EZInterceptFragment$f.this.f4350b).getLayoutParams();
                double height = EZInterceptFragment.Z1(EZInterceptFragment$f.this.f4350b).getWindowManager().getDefaultDisplay().getHeight();
                Double.isNaN(height);
                int i = (int) (height * 0.75d);
                if (EZInterceptFragment$f.this.f4350b.Y.size() <= 20) {
                    C1178g.m9846b(EZInterceptFragment.U1(EZInterceptFragment$f.this.f4350b));
                    if (layoutParams.height <= i) {
                        return;
                    }
                }
                layoutParams.height = i;
                EZInterceptFragment.U1(EZInterceptFragment$f.this.f4350b).setLayoutParams(layoutParams);
            }
        }
    }

    EZInterceptFragment$f(EZInterceptFragment eZInterceptFragment) {
        this.f4350b = eZInterceptFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (C1230a.m9514b(EZInterceptFragment.G1(this.f4350b), "android.permission.READ_CALL_LOG")) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Cursor query = EZInterceptFragment.G1(this.f4350b).getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{EZBlackList.NUMBER, "type", EZBlackList.NAME, "photo_id"}, null, null, "date DESC");
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    for (int i = 0; i < query.getCount(); i++) {
                        query.moveToPosition(i);
                        String string = query.getString(query.getColumnIndex(EZBlackList.NUMBER));
                        String string2 = query.getString(query.getColumnIndex(EZBlackList.NAME));
                        int i2 = query.getInt(query.getColumnIndex("type"));
                        String string3 = query.getString(query.getColumnIndex("photo_id"));
                        String str = string + i2 + "";
                        if (!arrayList2.contains(str)) {
                            arrayList2.add(str);
                            CallLogBean callLogBean = new CallLogBean();
                            callLogBean.m10048m0(string);
                            callLogBean.m10050l0(string2);
                            if (string3 != null && !string3.equals("")) {
                                callLogBean.m10040q0(string3);
                                callLogBean.m10039r0(C1216t0.m9603I(EZInterceptFragment.G1(this.f4350b), string));
                            }
                            arrayList.add(callLogBean);
                        }
                    }
                    EZInterceptFragment.Z1(this.f4350b).runOnUiThread(new RunnableC0953a(arrayList));
                }
                if (query != null) {
                    query.close();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
