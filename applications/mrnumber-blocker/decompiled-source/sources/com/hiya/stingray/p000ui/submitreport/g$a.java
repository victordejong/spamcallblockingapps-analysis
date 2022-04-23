package com.hiya.stingray.p000ui.submitreport;

import android.view.View;
import com.hiya.stingray.s.b1;
/* renamed from: com.hiya.stingray.ui.submitreport.g$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/g$a.class */
class g$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b1 f146f;

    /* renamed from: g */
    final /* synthetic */ g f147g;

    g$a(g gVar, b1 b1Var) {
        this.f147g = gVar;
        this.f146f = b1Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        g.c(this.f147g).onNext(this.f146f);
    }
}
