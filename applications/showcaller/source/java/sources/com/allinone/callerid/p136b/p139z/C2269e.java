package com.allinone.callerid.p136b.p139z;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.recorder.AudioSourceInfo;
import com.allinone.callerid.p157f.p159k.C2647c;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.recorder.C3820b;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.allinone.callerid.b.z.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/e.class */
public class C2269e extends AbstractC2259b<AudioSourceInfo> {

    /* renamed from: f */
    private Typeface f7969f = C3739f1.m24359b();

    /* renamed from: g */
    private Context f7970g;

    /* renamed from: h */
    private Activity f7971h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.b.z.e$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/e$a.class */
    public class View$OnClickListenerC2270a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ AudioSourceInfo f7972d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.b.z.e$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/e$a$a.class */
        public class RunnableC2271a implements Runnable {

            /* renamed from: com.allinone.callerid.b.z.e$a$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/e$a$a$a.class */
            class RunnableC2272a implements Runnable {
                RunnableC2272a() {
                    RunnableC2271a.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C2269e.this.m31967i();
                    Toast.makeText(C2269e.this.f7970g, C2269e.this.f7970g.getString(R$string.Switch_successfully), 0).show();
                }
            }

            RunnableC2271a() {
                View$OnClickListenerC2270a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2647c.m26958b().m26956d(View$OnClickListenerC2270a.this.f7972d.getShowname())) {
                    C3820b.m24023m(View$OnClickListenerC2270a.this.f7972d.getAudiosource());
                    Iterator it = C2269e.this.f7933d.iterator();
                    while (it.hasNext()) {
                        ((AudioSourceInfo) it.next()).setIsselected(false);
                    }
                    View$OnClickListenerC2270a.this.f7972d.setIsselected(true);
                    C2269e.this.f7971h.runOnUiThread(new RunnableC2272a());
                }
            }
        }

        View$OnClickListenerC2270a(AudioSourceInfo audioSourceInfo) {
            C2269e.this = r4;
            this.f7972d = audioSourceInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!this.f7972d.isselected()) {
                new Thread(new RunnableC2271a()).start();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.z.e$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/e$b.class */
    private class C2273b extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private FrameLayout f7976u;

        /* renamed from: v */
        private TextView f7977v;

        /* renamed from: w */
        private RadioButton f7978w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2273b(View view) {
            super(view);
            C2269e.this = r5;
            this.f7976u = (FrameLayout) view.findViewById(R$id.recordproblem_item_click);
            this.f7977v = (TextView) view.findViewById(R$id.recordproblem_item_name);
            this.f7978w = (RadioButton) view.findViewById(R$id.recordproblem_item_radio_normal);
            this.f7977v.setTypeface(r5.f7969f);
        }
    }

    public C2269e(Context context, ArrayList<AudioSourceInfo> arrayList) {
        super(context, arrayList);
        this.f7970g = context;
        this.f7971h = (Activity) context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2273b c2273b = (C2273b) abstractC0905b0;
        if (c2273b != null) {
            AudioSourceInfo audioSourceInfo = (AudioSourceInfo) this.f7933d.get(i);
            c2273b.f7977v.setText(audioSourceInfo.getShowname());
            c2273b.f7976u.setOnClickListener(new View$OnClickListenerC2270a(audioSourceInfo));
            if (audioSourceInfo.isselected()) {
                c2273b.f7978w.setChecked(true);
                c2273b.f7978w.setVisibility(0);
                return;
            }
            c2273b.f7978w.setChecked(false);
            c2273b.f7978w.setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2273b(this.f7934e.inflate(R$layout.recordproblem_item, viewGroup, false));
    }
}
