package com.criteo.publisher.advancednative;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayDeque;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/e.class */
public class e {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/e$a.class */
    final class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f17160a;

        a(e eVar, n nVar) {
            this.f17160a = nVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f17160a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view, n nVar) {
        a aVar = new a(this, nVar);
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(view);
        while (!arrayDeque.isEmpty()) {
            View view2 = (View) arrayDeque.remove();
            view2.setOnClickListener(aVar);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    arrayDeque.add(viewGroup.getChildAt(i));
                }
            }
        }
    }
}
