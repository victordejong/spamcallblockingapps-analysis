package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import com.inmobi.ads.AbstractC8218cf;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.C8315y;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.inmobi.ads.ai */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ai.class */
public class C8094ai {

    /* renamed from: b */
    public static final String f31656b = "ai";

    /* renamed from: g */
    public boolean f31661g;

    /* renamed from: h */
    public int f31662h;

    /* renamed from: a */
    public static final Map<Context, C8315y> f31655a = new WeakHashMap();

    /* renamed from: c */
    public static final Map<Context, AbstractC8218cf> f31657c = new WeakHashMap();

    /* renamed from: d */
    public static final Map<View, AbstractC8098a> f31658d = new HashMap();

    /* renamed from: e */
    public static final C8315y.AbstractC8317a f31659e = new C8315y.AbstractC8317a() { // from class: com.inmobi.ads.ai.1
        @Override // com.inmobi.ads.C8315y.AbstractC8317a
        /* renamed from: a */
        public final void mo5913a(View view, Object obj) {
            ((C8083ah) obj).mo6338a(view);
        }
    };

    /* renamed from: f */
    public static final AbstractC8218cf.AbstractC8219a f31660f = new AbstractC8218cf.AbstractC8219a() { // from class: com.inmobi.ads.ai.2

        /* renamed from: a */
        public final Rect f31663a = new Rect();

        @Override // com.inmobi.ads.AbstractC8218cf.AbstractC8219a
        /* renamed from: a */
        public final boolean mo6170a(View view, View view2, int i, Object obj) {
            C8135av mediaPlayer;
            if (!(obj instanceof C8083ah) || ((C8083ah) obj).f31631l) {
                return false;
            }
            if (((view2 instanceof NativeVideoView) && (mediaPlayer = ((NativeVideoView) view2).getMediaPlayer()) != null && 3 != mediaPlayer.f31813a) || view2 == null || view == null || !view2.isShown() || view.getParent() == null || !view2.getGlobalVisibleRect(this.f31663a)) {
                return false;
            }
            long width = view.getWidth() * view.getHeight();
            return width > 0 && (this.f31663a.height() * this.f31663a.width()) * 100 >= ((long) i) * width;
        }
    };

    /* renamed from: com.inmobi.ads.ai$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ai$a.class */
    public interface AbstractC8098a {
        /* renamed from: a */
        void mo6314a(View view, boolean z);
    }

    public C8094ai(int i) {
        this.f31662h = i;
    }

    /* renamed from: b */
    public static void m6461b(Context context) {
        C8315y yVar = f31655a.get(context);
        if (yVar != null) {
            yVar.m5920b();
        }
    }

    /* renamed from: c */
    public static void m6460c(Context context) {
        C8315y yVar = f31655a.get(context);
        if (yVar != null) {
            yVar.m5927a();
        }
    }

    /* renamed from: a */
    public final void m6466a(Context context) {
        C8315y remove = f31655a.remove(context);
        if (remove != null) {
            remove.m5918c();
        }
        if ((context instanceof Activity) && Build.VERSION.SDK_INT >= 15 && f31655a.isEmpty() && this.f31661g) {
            this.f31661g = false;
        }
    }

    /* renamed from: a */
    public final void m6465a(Context context, View view, C8083ah ahVar) {
        AbstractC8218cf cfVar = f31657c.get(context);
        if (cfVar != null) {
            cfVar.m6176a(ahVar);
            if (!(!cfVar.f32086b.isEmpty())) {
                AbstractC8218cf remove = f31657c.remove(context);
                if (remove != null) {
                    remove.mo5958e();
                }
                if ((context instanceof Activity) && Build.VERSION.SDK_INT >= 15 && f31657c.isEmpty() && this.f31661g) {
                    this.f31661g = false;
                }
            }
        }
        f31658d.remove(view);
    }

    /* renamed from: a */
    public final void m6464a(Context context, View view, C8083ah ahVar, AbstractC8098a aVar, C8197c.C8209l lVar) {
        AbstractC8218cf cfVar = f31657c.get(context);
        AbstractC8218cf cfVar2 = cfVar;
        if (cfVar == null) {
            boolean z = context instanceof Activity;
            cfVar2 = z ? new C8303s(f31660f, (Activity) context) : new C8177bl(f31660f, lVar);
            cfVar2.f32087c = new AbstractC8218cf.AbstractC8221c() { // from class: com.inmobi.ads.ai.3
                @Override // com.inmobi.ads.AbstractC8218cf.AbstractC8221c
                /* renamed from: a */
                public final void mo5914a(List<View> list, List<View> list2) {
                    for (View view2 : list) {
                        AbstractC8098a aVar2 = (AbstractC8098a) C8094ai.f31658d.get(view2);
                        if (aVar2 != null) {
                            aVar2.mo6314a(view2, true);
                        }
                    }
                    for (View view3 : list2) {
                        AbstractC8098a aVar3 = (AbstractC8098a) C8094ai.f31658d.get(view3);
                        if (aVar3 != null) {
                            aVar3.mo6314a(view3, false);
                        }
                    }
                }
            };
            f31657c.put(context, cfVar2);
            if (z && Build.VERSION.SDK_INT >= 15 && !this.f31661g) {
                this.f31661g = true;
            }
        }
        f31658d.put(view, aVar);
        if (this.f31662h != 0) {
            cfVar2.m6178a(view, ahVar, lVar.f32061e);
        } else {
            cfVar2.m6178a(view, ahVar, lVar.f32064h);
        }
    }

    /* renamed from: a */
    public final void m6463a(Context context, View view, C8083ah ahVar, C8197c.C8209l lVar) {
        C8315y yVar = f31655a.get(context);
        C8315y yVar2 = yVar;
        if (yVar == null) {
            if (context instanceof Activity) {
                C8315y yVar3 = new C8315y(lVar, new C8303s(f31660f, (Activity) context), f31659e);
                yVar2 = yVar3;
                if (Build.VERSION.SDK_INT >= 15) {
                    yVar2 = yVar3;
                    if (!this.f31661g) {
                        this.f31661g = true;
                        yVar2 = yVar3;
                    }
                }
            } else {
                yVar2 = new C8315y(lVar, new C8177bl(f31660f, lVar), f31659e);
            }
            f31655a.put(context, yVar2);
        }
        if (this.f31662h != 0) {
            yVar2.m5924a(view, ahVar, lVar.f32057a, lVar.f32058b);
        } else {
            yVar2.m5924a(view, ahVar, lVar.f32062f, lVar.f32063g);
        }
    }

    /* renamed from: a */
    public final void m6462a(Context context, C8083ah ahVar) {
        C8315y yVar = f31655a.get(context);
        if (yVar != null) {
            yVar.m5921a(ahVar);
            if (!(!yVar.f32342a.isEmpty())) {
                m6466a(context);
            }
        }
    }
}
