package com.callerid.block.mvc.controller;

import android.app.Activity;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.callerid.block.R$drawable;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.R$string;
import com.callerid.block.bean.SearchHis;
import com.callerid.block.customview.DeletableEditText;
import com.callerid.block.util.C1216t0;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$a.class */
class EZSearchNumberActivity$a extends AsyncTask<Void, Void, List<SearchHis>> {

    /* renamed from: a */
    final /* synthetic */ EZSearchNumberActivity f4636a;

    EZSearchNumberActivity$a(EZSearchNumberActivity eZSearchNumberActivity) {
        this.f4636a = eZSearchNumberActivity;
    }

    /* renamed from: a */
    public List<SearchHis> doInBackground(Void... voidArr) {
        try {
            List<SearchHis> findAll = EZSearchNumberActivity.l0(this.f4636a).findAll(SearchHis.class);
            if (findAll == null) {
                return null;
            }
            return findAll;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v12, types: [com.callerid.block.mvc.controller.EZSearchNumberActivity$q] */
    /* renamed from: b */
    public void onPostExecute(List<SearchHis> list) {
        super.onPostExecute(list);
        if (list != null) {
            if ((EZSearchNumberActivity.g0(this.f4636a) != null && EZSearchNumberActivity.g0(this.f4636a).size() != 0) || EZSearchNumberActivity.g0(this.f4636a) != null) {
                EZSearchNumberActivity.g0(this.f4636a).clear();
                EZSearchNumberActivity.g0(this.f4636a).addAll(list);
            }
            Collections.reverse(EZSearchNumberActivity.g0(this.f4636a));
        }
        if (EZSearchNumberActivity.m0(this.f4636a) != null) {
            EZSearchNumberActivity.m0(this.f4636a).notifyDataSetChanged();
        } else {
            EZSearchNumberActivity eZSearchNumberActivity = this.f4636a;
            EZSearchNumberActivity eZSearchNumberActivity2 = this.f4636a;
            EZSearchNumberActivity.n0(eZSearchNumberActivity, (EZSearchNumberActivity$q) new BaseAdapter(eZSearchNumberActivity2, eZSearchNumberActivity2) { // from class: com.callerid.block.mvc.controller.EZSearchNumberActivity$q

                /* renamed from: b */
                Activity f4655b;

                /* renamed from: c */
                final /* synthetic */ EZSearchNumberActivity f4656c;

                /* renamed from: com.callerid.block.mvc.controller.EZSearchNumberActivity$q$a */
                /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$q$a.class */
                class View$OnClickListenerC1103a implements View.OnClickListener {

                    /* renamed from: b */
                    final /* synthetic */ SearchHis f4657b;

                    View$OnClickListenerC1103a(SearchHis searchHis) {
                        this.f4657b = searchHis;
                    }

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        EZSearchNumberActivity$q.this.f4656c.s.setText(this.f4657b.getNumber());
                        DeletableEditText deletableEditText = EZSearchNumberActivity$q.this.f4656c.s;
                        deletableEditText.setSelection(deletableEditText.getText().length());
                        EZSearchNumberActivity.e0(EZSearchNumberActivity$q.this.f4656c).setVisibility(8);
                        EZSearchNumberActivity.e0(EZSearchNumberActivity$q.this.f4656c).setClickable(false);
                        EZSearchNumberActivity$q.this.f4656c.p0();
                    }
                }

                /* renamed from: com.callerid.block.mvc.controller.EZSearchNumberActivity$q$b */
                /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$q$b.class */
                private class C1104b {

                    /* renamed from: a */
                    TextView f4659a;

                    /* renamed from: b */
                    FrameLayout f4660b;

                    /* renamed from: c */
                    ImageView f4661c;

                    private C1104b(EZSearchNumberActivity$q eZSearchNumberActivity$q) {
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4655b = eZSearchNumberActivity2;
                }

                @Override // android.widget.Adapter
                public int getCount() {
                    return EZSearchNumberActivity.g0(this.f4656c).size();
                }

                @Override // android.widget.Adapter
                public Object getItem(int i) {
                    return EZSearchNumberActivity.g0(this.f4656c).get(i);
                }

                @Override // android.widget.Adapter
                public long getItemId(int i) {
                    return i;
                }

                @Override // android.widget.Adapter
                public View getView(int i, View view, ViewGroup viewGroup) {
                    C1104b c1104b;
                    if (view == null) {
                        view = LayoutInflater.from(this.f4655b).inflate(R$layout.search_history_item, (ViewGroup) null);
                        c1104b = new C1104b();
                        c1104b.f4659a = (TextView) view.findViewById(R$id.tv_search_his_number);
                        c1104b.f4660b = (FrameLayout) view.findViewById(R$id.btn_search_his);
                        c1104b.f4661c = (ImageView) view.findViewById(R$id.iv_search_his);
                        view.setTag(c1104b);
                    } else {
                        c1104b = (C1104b) view.getTag();
                    }
                    try {
                        SearchHis searchHis = (SearchHis) EZSearchNumberActivity.g0(this.f4656c).get(i);
                        if (C1216t0.m9596P(this.f4656c.getApplicationContext()).booleanValue()) {
                            c1104b.f4661c.setImageResource(R$drawable.search_history_tag_oppo);
                        }
                        c1104b.f4659a.setText(searchHis.getNumber());
                        c1104b.f4660b.setOnClickListener(new View$OnClickListenerC1103a(searchHis));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    return view;
                }
            });
            EZSearchNumberActivity.e0(this.f4636a).setAdapter((ListAdapter) EZSearchNumberActivity.m0(this.f4636a));
        }
        if (EZSearchNumberActivity.g0(this.f4636a) != null && EZSearchNumberActivity.g0(this.f4636a).size() >= 1) {
            EZSearchNumberActivity.R(this.f4636a).setVisibility(8);
            EZSearchNumberActivity.e0(this.f4636a).setVisibility(0);
            EZSearchNumberActivity.e0(this.f4636a).setClickable(true);
            return;
        }
        EZSearchNumberActivity.R(this.f4636a).setVisibility(0);
        EZSearchNumberActivity.R(this.f4636a).setText(this.f4636a.getResources().getString(R$string.search_over));
        EZSearchNumberActivity.e0(this.f4636a).setVisibility(8);
        EZSearchNumberActivity.e0(this.f4636a).setClickable(false);
    }
}
