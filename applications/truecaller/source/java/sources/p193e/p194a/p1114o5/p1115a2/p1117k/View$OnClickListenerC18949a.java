package p193e.p194a.p1114o5.p1115a2.p1117k;

import android.content.Context;
import android.view.View;
import com.truecaller.util.background.p184qa.WorkActionStatusActivity;
import java.util.Objects;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p1392y2.p1394q.C21782c;
import s1.z.c.l;
/* renamed from: e.a.o5.a2.k.a */
/* loaded from: classes15-dex2jar.jar:e/a/o5/a2/k/a.class */
public final class View$OnClickListenerC18949a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ WorkActionStatusActivity.C4701c f53098a;

    /* renamed from: b */
    public final /* synthetic */ String f53099b;

    public View$OnClickListenerC18949a(WorkActionStatusActivity.C4701c c4701c, String str) {
        this.f53098a = c4701c;
        this.f53099b = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WorkActionStatusActivity.C4701c c4701c = this.f53098a;
        View view2 = c4701c.itemView;
        l.d(view2, "itemView");
        Context context = view2.getContext();
        l.d(context, "itemView.context");
        Context applicationContext = context.getApplicationContext();
        l.d(applicationContext, "itemView.context.applicationContext");
        String str = this.f53099b;
        Objects.requireNonNull(c4701c);
        C26702l m1431n = C26702l.m1431n(applicationContext);
        l.d(m1431n, "WorkManager.getInstance(context)");
        C21782c.m9083c(m1431n, str, applicationContext, null, null, 12);
    }
}
