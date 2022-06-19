package com.criteo.publisher.advancednative;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayDeque;
/* renamed from: com.criteo.publisher.advancednative.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/e.class */
public class C8231e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.advancednative.e$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/e$a.class */
    public final class View$OnClickListenerC8232a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ AbstractC8248n f29764a;

        View$OnClickListenerC8232a(C8231e c8231e, AbstractC8248n abstractC8248n) {
            this.f29764a = abstractC8248n;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f29764a.mo25967a();
        }
    }

    /* renamed from: a */
    public final void m25981a(View view, AbstractC8248n abstractC8248n) {
        View$OnClickListenerC8232a view$OnClickListenerC8232a = new View$OnClickListenerC8232a(this, abstractC8248n);
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(view);
        while (!arrayDeque.isEmpty()) {
            View view2 = (View) arrayDeque.remove();
            view2.setOnClickListener(view$OnClickListenerC8232a);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    arrayDeque.add(viewGroup.getChildAt(i));
                }
            }
        }
    }
}
