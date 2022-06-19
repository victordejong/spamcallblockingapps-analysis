package p193e.p194a.p195a.p200c;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.adapter.loader.LoadHistoryType;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.a.c.o6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o6.class */
public final class C5629o6 extends RecyclerView.AbstractC0313c0 implements AbstractC5586n6 {

    /* renamed from: e.a.a.c.o6$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o6$a.class */
    public static final class View$OnClickListenerC5630a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5525m6 f18940a;

        /* renamed from: b */
        public final /* synthetic */ LoadHistoryType f18941b;

        public View$OnClickListenerC5630a(AbstractC5525m6 abstractC5525m6, LoadHistoryType loadHistoryType) {
            this.f18940a = abstractC5525m6;
            this.f18941b = loadHistoryType;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f18940a.mo32702f9(this.f18941b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5629o6(View view) {
        super(view);
        l.e(view, "itemView");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5586n6
    /* renamed from: U3 */
    public void mo32840U3(LoadHistoryType loadHistoryType, AbstractC5525m6 abstractC5525m6) {
        l.e(loadHistoryType, "loadHistoryType");
        l.e(abstractC5525m6, "loadHistoryClickListener");
        if (loadHistoryType == LoadHistoryType.FAIL) {
            this.itemView.findViewById(C2752R.C2754id.failed_btn).setOnClickListener(new View$OnClickListenerC5630a(abstractC5525m6, loadHistoryType));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5586n6
    /* renamed from: X2 */
    public void mo32839X2(LoadHistoryType loadHistoryType) {
        l.e(loadHistoryType, "loadHistoryType");
        View findViewById = this.itemView.findViewById(2131365285);
        l.d(findViewById, "itemView.findViewById<Vi…(R.id.progress_indicator)");
        C19286f.m13683U(findViewById, loadHistoryType == LoadHistoryType.PROGRESS);
        View findViewById2 = this.itemView.findViewById(C2752R.C2754id.failed_indicator);
        l.d(findViewById2, "itemView.findViewById<View>(R.id.failed_indicator)");
        C19286f.m13683U(findViewById2, loadHistoryType == LoadHistoryType.FAIL);
        View findViewById3 = this.itemView.findViewById(C2752R.C2754id.complete_indicator);
        l.d(findViewById3, "itemView.findViewById<Vi…(R.id.complete_indicator)");
        C19286f.m13683U(findViewById3, loadHistoryType == LoadHistoryType.COMPLETE);
    }
}
