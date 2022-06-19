package p193e.p194a.p195a.p200c;

import android.content.Context;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Reaction;
import e.m.a.g.e.d;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.c.o7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o7.class */
public final class C5631o7 extends d {
    @Inject

    /* renamed from: o */
    public AbstractC19233h0 f18942o;
    @Inject

    /* renamed from: p */
    public AbstractC6392i0 f18943p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C5631o7(Context context, Map<Reaction, ? extends Participant> map) {
        super(context);
        l.e(context, "activityContext");
        l.e(map, "items");
        AbstractC5784v3 mo33447z9 = ((AbstractC5275f3) context).mo33447z9();
        l.d(mo33447z9, "(activityContext as ComponentHolder).component");
        C5689r5 c5689r5 = (C5689r5) mo33447z9;
        this.f18942o = C10480a.m25933l2(c5689r5.f19089a);
        AbstractC6392i0 mo12565S = c5689r5.f19091b.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        this.f18943p = mo12565S;
        setContentView((int) C2752R.layout.dialog_participant_with_reaction);
        TextView textView = (TextView) findViewById(2131366469);
        if (textView != null) {
            textView.setText(getContext().getString(C2752R.string.reactions_dialog_title, Integer.valueOf(map.size())));
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(2131365382);
        if (recyclerView != null) {
            Context context2 = getContext();
            l.d(context2, AnalyticsConstants.CONTEXT);
            AbstractC19233h0 abstractC19233h0 = this.f18942o;
            if (abstractC19233h0 == null) {
                l.l("resourceProvider");
                throw null;
            }
            AbstractC6392i0 abstractC6392i0 = this.f18943p;
            if (abstractC6392i0 != null) {
                recyclerView.setAdapter(new C5587n7(context2, abstractC19233h0, abstractC6392i0, map));
            } else {
                l.l("messageSettings");
                throw null;
            }
        }
    }
}
