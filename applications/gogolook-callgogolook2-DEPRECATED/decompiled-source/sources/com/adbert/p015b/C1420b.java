package com.adbert.p015b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1384d;
import com.adbert.p009a.p013d.C1391a;
/* renamed from: com.adbert.b.b */
/* loaded from: classes-dex2jar.jar:com/adbert/b/b.class */
public class C1420b extends RelativeLayout {

    /* renamed from: a */
    public Context f689a;

    /* renamed from: b */
    public boolean f690b;

    /* renamed from: c */
    public C1391a f691c;

    /* renamed from: d */
    public int f692d;

    /* renamed from: e */
    public C1377b f693e;

    /* renamed from: f */
    public float f694f;

    /* renamed from: g */
    public float f695g;

    /* renamed from: h */
    public RelativeLayout f696h;

    /* renamed from: i */
    public ImageView f697i;

    /* renamed from: j */
    public Bitmap f698j;

    public C1420b(Context context, boolean z, C1377b bVar, float f, float f2, int i, C1391a aVar) {
        super(context);
        C1402g.m37134b("CPMBannerView pWidth = " + f + ",pHeight = " + f2);
        this.f689a = context;
        this.f690b = z;
        this.f691c = aVar;
        this.f693e = bVar;
        this.f692d = i;
        this.f694f = f;
        this.f695g = f2;
        m37087b();
    }

    /* renamed from: b */
    private void m37087b() {
        this.f696h = this;
        this.f696h.setBackgroundColor(EnumC1384d.cpmBg.m37188a());
        if (C1402g.m37140a(this.f693e.f413h) || this.f693e.f399A) {
            m37085d();
        } else {
            m37086c();
        }
        C1425c cVar = new C1425c(getContext(), this.f692d);
        this.f696h.addView(cVar);
        int i = (int) (this.f692d * 1.4d);
        cVar.getLayoutParams().width = i;
        cVar.getLayoutParams().height = i;
        cVar.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1420b.this.f691c.finish();
            }
        });
        this.f696h.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.b.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.f691c.setLogo(this.f696h, true);
    }

    /* renamed from: c */
    private void m37086c() {
        this.f697i = new ImageView(this.f689a);
        this.f697i.setScaleType(ImageView.ScaleType.FIT_XY);
        if (this.f690b) {
            this.f696h.addView(this.f697i, new RelativeLayout.LayoutParams(-2, -2));
            this.f697i.getLayoutParams().width = (int) (this.f694f * 0.9d);
            this.f697i.getLayoutParams().height = (int) (((this.f694f * 0.9d) / 320.0d) * 480.0d);
        } else {
            this.f696h.addView(this.f697i, new RelativeLayout.LayoutParams(-2, -2));
            this.f697i.getLayoutParams().width = (int) (((this.f695g * 0.9d) / 320.0d) * 480.0d);
            this.f697i.getLayoutParams().height = (int) (this.f695g * 0.9d);
        }
        ((RelativeLayout.LayoutParams) this.f697i.getLayoutParams()).addRule(13);
        this.f698j = BitmapFactory.decodeFile(C1402g.m37135b(this.f689a, this.f693e.f413h));
        this.f697i.setImageBitmap(this.f698j);
        this.f697i.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.b.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                for (int i = 0; i < 5; i++) {
                    C1420b bVar = C1420b.this;
                    if (bVar.f693e.f414i[i]) {
                        bVar.f691c.endingCardAction(i);
                        return;
                    }
                }
            }
        });
    }

    /* renamed from: d */
    private void m37085d() {
        RelativeLayout relativeLayout = new RelativeLayout(this.f689a);
        C1439e eVar = new C1439e(this.f689a, this.f691c, this.f693e.f406a);
        C1377b bVar = this.f693e;
        eVar.m37055a(bVar.f413h, bVar);
        if (this.f690b) {
            this.f696h.addView(relativeLayout, new RelativeLayout.LayoutParams(-2, -2));
            relativeLayout.getLayoutParams().width = (int) (this.f694f * 0.9d);
            relativeLayout.getLayoutParams().height = (int) (((this.f694f * 0.9d) / 320.0d) * 480.0d);
        } else {
            this.f696h.addView(relativeLayout, new RelativeLayout.LayoutParams(-2, -2));
            relativeLayout.getLayoutParams().height = (int) (this.f695g * 0.9d);
            relativeLayout.getLayoutParams().width = (int) (((this.f695g * 0.9d) / 320.0d) * 480.0d);
        }
        ((RelativeLayout.LayoutParams) relativeLayout.getLayoutParams()).addRule(13);
        relativeLayout.addView(eVar);
        RelativeLayout relativeLayout2 = new RelativeLayout(this.f689a);
        relativeLayout.addView(relativeLayout2, new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.b.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                for (int i = 0; i < 5; i++) {
                    C1420b bVar2 = C1420b.this;
                    if (bVar2.f693e.f414i[i]) {
                        bVar2.f691c.endingCardAction(i);
                        return;
                    }
                }
            }
        });
    }

    /* renamed from: a */
    public void m37088a() {
        Bitmap bitmap = this.f698j;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f698j.isRecycled();
            this.f698j = null;
        }
    }
}
