package com.allinone.callerid.p136b;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.SubType;
import com.allinone.callerid.p136b.p139z.AbstractC2259b;
import com.allinone.callerid.util.C3739f1;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.b.y */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/y.class */
public class C2251y extends AbstractC2259b<SubType> {

    /* renamed from: f */
    private Context f7907f;

    /* renamed from: g */
    private Typeface f7908g = C3739f1.m24359b();

    /* renamed from: h */
    private boolean f7909h = false;

    /* renamed from: i */
    private int f7910i;

    /* renamed from: j */
    private AbstractC2254b f7911j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.b.y$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/y$a.class */
    public class View$OnClickListenerC2252a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ C2255c f7912d;

        /* renamed from: e */
        final /* synthetic */ SubType f7913e;

        /* renamed from: com.allinone.callerid.b.y$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/y$a$a.class */
        class C2253a extends Thread {
            C2253a() {
                View$OnClickListenerC2252a.this = r4;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                if (View$OnClickListenerC2252a.this.f7912d.f7919x.getProgress() == 0) {
                    C2251y.this.f7910i = 0;
                    for (int i = 0; i < 25; i++) {
                        C2251y.this.f7910i += 4;
                        try {
                            Thread.sleep(10L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        View$OnClickListenerC2252a.this.f7912d.f7919x.setProgress(C2251y.this.f7910i);
                    }
                    if (C2251y.this.f7911j == null) {
                        return;
                    }
                    C2251y.this.f7911j.mo25049a(View$OnClickListenerC2252a.this.f7913e, true);
                    return;
                }
                C2251y.this.f7910i = 100;
                for (int i2 = 0; i2 < 25; i2++) {
                    C2251y.this.f7910i -= 4;
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    View$OnClickListenerC2252a.this.f7912d.f7919x.setProgress(C2251y.this.f7910i);
                }
                if (C2251y.this.f7911j == null) {
                    return;
                }
                C2251y.this.f7911j.mo25049a(View$OnClickListenerC2252a.this.f7913e, false);
            }
        }

        View$OnClickListenerC2252a(C2255c c2255c, SubType subType) {
            C2251y.this = r4;
            this.f7912d = c2255c;
            this.f7913e = subType;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!C2251y.this.f7909h) {
                C2251y.this.f7909h = true;
                if (this.f7912d.f7919x.getProgress() == 0) {
                    this.f7912d.f7916u.setTextColor(C2251y.this.f7907f.getResources().getColor(R$color.white));
                } else {
                    this.f7912d.f7916u.setTextColor(C2251y.this.f7907f.getResources().getColor(R$color.name));
                }
                ViewGroup.LayoutParams layoutParams = this.f7912d.f7919x.getLayoutParams();
                layoutParams.width = view.getWidth();
                this.f7912d.f7919x.setLayoutParams(layoutParams);
                new C2253a().start();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.y$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/y$b.class */
    public interface AbstractC2254b {
        /* renamed from: a */
        void mo25049a(SubType subType, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.b.y$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/y$c.class */
    public class C2255c extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private TextView f7916u;

        /* renamed from: v */
        private TextView f7917v;

        /* renamed from: w */
        private RelativeLayout f7918w;

        /* renamed from: x */
        private ProgressBar f7919x;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C2255c(View view) {
            super(view);
            C2251y.this = r5;
            TextView textView = (TextView) view.findViewById(R$id.tvtv);
            this.f7916u = textView;
            textView.setTypeface(r5.f7908g);
            this.f7918w = (RelativeLayout) view.findViewById(R$id.rl_bg);
            this.f7919x = (ProgressBar) view.findViewById(R$id.my_progress);
            this.f7917v = (TextView) view.findViewById(R$id.mark_count);
        }

        /* synthetic */ C2255c(C2251y c2251y, View view, View$OnClickListenerC2252a view$OnClickListenerC2252a) {
            this(view);
        }
    }

    public C2251y(Context context, ArrayList<SubType> arrayList) {
        super(context, arrayList);
        this.f7907f = context;
    }

    /* renamed from: K */
    public void m27794K(AbstractC2254b abstractC2254b) {
        this.f7911j = abstractC2254b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2255c c2255c = (C2255c) abstractC0905b0;
        if (c2255c != null) {
            SubType subType = (SubType) this.f7933d.get(i);
            c2255c.f7916u.setText(subType.getSubtype());
            if (subType.getCount() != 0) {
                c2255c.f7917v.setVisibility(0);
                TextView textView = c2255c.f7917v;
                textView.setText(subType.getCount() + "");
            } else {
                c2255c.f7917v.setVisibility(8);
            }
            if (subType.isIs_has_bg()) {
                c2255c.f7919x.setProgress(100);
                c2255c.f7918w.setBackgroundResource(R$drawable.shape_subtype_themecolor);
                c2255c.f7916u.setTextColor(this.f7907f.getResources().getColor(R$color.white));
            } else {
                c2255c.f7919x.setProgress(0);
                c2255c.f7918w.setBackgroundResource(R$drawable.shape_subtype_yinse);
                c2255c.f7916u.setTextColor(this.f7907f.getResources().getColor(R$color.name));
            }
            c2255c.f7918w.setOnClickListener(new View$OnClickListenerC2252a(c2255c, subType));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2255c(this, this.f7934e.inflate(R$layout.subtype_item, viewGroup, false), null);
    }
}
