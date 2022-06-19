package com.allinone.callerid.p136b.p137a0;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.WeekInfo;
import com.allinone.callerid.p136b.p139z.AbstractC2259b;
import com.allinone.callerid.util.C3739f1;
/* renamed from: com.allinone.callerid.b.a0.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a0/a.class */
public class C2148a extends AbstractC2259b<WeekInfo> {

    /* renamed from: f */
    private RecyclerView f7460f;

    /* renamed from: com.allinone.callerid.b.a0.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a0/a$a.class */
    class View$OnClickListenerC2149a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ WeekInfo f7461d;

        /* renamed from: e */
        final /* synthetic */ C2150b f7462e;

        View$OnClickListenerC2149a(WeekInfo weekInfo, C2150b c2150b) {
            C2148a.this = r4;
            this.f7461d = weekInfo;
            this.f7462e = c2150b;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (this.f7461d.getWeekId() == -1) {
                    if (this.f7462e.f7466w.isChecked()) {
                        C2148a.this.m27909Q(false);
                    } else {
                        C2148a.this.m27909Q(true);
                    }
                } else if (this.f7462e.f7466w.isChecked()) {
                    this.f7462e.f7466w.setChecked(false);
                    this.f7461d.setSelect(false);
                    if (((AbstractC2259b) C2148a.this).f7933d.size() > 0) {
                        ((WeekInfo) ((AbstractC2259b) C2148a.this).f7933d.get(((AbstractC2259b) C2148a.this).f7933d.size() - 1)).setSelect(false);
                        C2150b c2150b = (C2150b) C2148a.this.f7460f.m32051Y(((AbstractC2259b) C2148a.this).f7933d.size() - 1);
                        if (c2150b != null) {
                            c2150b.f7466w.setChecked(false);
                        }
                    }
                } else {
                    this.f7462e.f7466w.setChecked(true);
                    this.f7461d.setSelect(true);
                    if (C2148a.this.m27910P() && ((AbstractC2259b) C2148a.this).f7933d.size() > 0) {
                        ((WeekInfo) ((AbstractC2259b) C2148a.this).f7933d.get(((AbstractC2259b) C2148a.this).f7933d.size() - 1)).setSelect(true);
                        C2150b c2150b2 = (C2150b) C2148a.this.f7460f.m32051Y(((AbstractC2259b) C2148a.this).f7933d.size() - 1);
                        if (c2150b2 != null) {
                            c2150b2.f7466w.setChecked(true);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.a0.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/a0/a$b.class */
    public static class C2150b extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private LinearLayout f7464u;

        /* renamed from: v */
        private TextView f7465v;

        /* renamed from: w */
        private CheckBox f7466w;

        C2150b(View view) {
            super(view);
            Typeface m24359b = C3739f1.m24359b();
            this.f7464u = (LinearLayout) view.findViewById(R$id.item_dialog_weeks_click);
            this.f7465v = (TextView) view.findViewById(R$id.item_dialog_weeks_title);
            CheckBox checkBox = (CheckBox) view.findViewById(R$id.item_dialog_weeks_check);
            this.f7466w = checkBox;
            checkBox.setClickable(false);
            this.f7465v.setTypeface(m24359b);
        }
    }

    public C2148a(Context context, RecyclerView recyclerView) {
        super(context);
        this.f7460f = recyclerView;
    }

    /* renamed from: P */
    public boolean m27910P() {
        if (this.f7933d != null) {
            for (int i = 0; i < this.f7933d.size(); i++) {
                try {
                    WeekInfo weekInfo = (WeekInfo) this.f7933d.get(i);
                    if (weekInfo.getWeekId() != -1 && !weekInfo.isSelect()) {
                        return false;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return true;
                }
            }
            return true;
        }
        return true;
    }

    /* renamed from: Q */
    public void m27909Q(boolean z) {
        if (this.f7933d != null) {
            for (int i = 0; i < this.f7933d.size(); i++) {
                try {
                    ((WeekInfo) this.f7933d.get(i)).setSelect(z);
                    C2150b c2150b = (C2150b) this.f7460f.m32051Y(i);
                    if (c2150b != null) {
                        c2150b.f7466w.setChecked(z);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
        }
    }

    /* renamed from: O */
    public boolean m27911O() {
        if (this.f7933d != null) {
            for (int i = 0; i < this.f7933d.size(); i++) {
                try {
                    WeekInfo weekInfo = (WeekInfo) this.f7933d.get(i);
                    if (weekInfo.getWeekId() != -1 && weekInfo.isSelect()) {
                        return false;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return true;
                }
            }
            return true;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2150b c2150b = (C2150b) abstractC0905b0;
        WeekInfo weekInfo = (WeekInfo) this.f7933d.get(i);
        if (weekInfo != null) {
            c2150b.f7465v.setText(weekInfo.getWeek());
            c2150b.f7464u.setOnClickListener(new View$OnClickListenerC2149a(weekInfo, c2150b));
            c2150b.f7466w.setChecked(weekInfo.isSelect());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2150b(this.f7934e.inflate(R$layout.item_dialog_weeks, viewGroup, false));
    }
}
