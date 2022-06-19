package p193e.p194a.p1357x3.p1358h;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.truecaller.forcedupdate.UpdateType;
import com.truecaller.forcedupdate.p167ui.C3993R;
import com.truecaller.log.AssertionUtil;
import javax.inject.Inject;
import p193e.p194a.p1128p4.AbstractC19214a;
import p193e.p194a.p1357x3.AbstractC21394a;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p437c.p578p.C10480a;
/* renamed from: e.a.x3.h.e */
/* loaded from: classes9-dex2jar.jar:e/a/x3/h/e.class */
public class View$OnClickListenerC21407e extends AbstractC21412j implements View.OnClickListener {

    /* renamed from: e */
    public UpdateType f59872e;

    /* renamed from: f */
    public CardView f59873f;
    @Inject

    /* renamed from: g */
    public AbstractC21394a f59874g;
    @Inject

    /* renamed from: h */
    public AbstractC21396c f59875h;

    /* renamed from: QA */
    public int mo9762QA() {
        int ordinal = this.f59872e.ordinal();
        if (ordinal != 1) {
            if (ordinal == 2) {
                return C3993R.color.fu_red;
            }
            if (ordinal == 3) {
                return C3993R.color.fu_grey;
            }
            return 0;
        }
        return C3993R.color.fu_blue;
    }

    /* renamed from: RA */
    public int mo9761RA() {
        int ordinal = this.f59872e.ordinal();
        if (ordinal != 1) {
            if (ordinal == 2) {
                return C3993R.C3994drawable.fu_img_required;
            }
            if (ordinal == 3) {
                return C3993R.C3994drawable.fu_img_discontinued;
            }
            return 0;
        }
        return C3993R.C3994drawable.fu_img_optional;
    }

    public void onClick(View view) {
        if (view.getId() != C3993R.C3995id.btn_action) {
            if (view.getId() != C3993R.C3995id.btn_dismiss) {
                return;
            }
            this.f59875h.mo9775a(System.currentTimeMillis());
            startActivity(getContext().getPackageManager().getLaunchIntentForPackage(getContext().getPackageName()));
            getActivity().finish();
            return;
        }
        try {
            if (this.f59872e == UpdateType.DISCONTINUED) {
                Context context = getContext();
                if (context != null) {
                    this.f59874g.mo9779a(context);
                }
            } else {
                Context context2 = getContext();
                if (context2 != null) {
                    this.f59874g.mo9777c(context2, this.f59875h.mo9773c(), "forcedUpdate");
                }
            }
        } catch (ActivityNotFoundException e) {
            C10480a.m26061I1(e);
        }
    }

    public void onCreate(Bundle bundle) {
        View$OnClickListenerC21407e.super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("updateType");
            if (!TextUtils.isEmpty(string)) {
                this.f59872e = UpdateType.Companion.m35319a(string);
            }
        }
        UpdateType updateType = this.f59872e;
        if (updateType == null || updateType == UpdateType.NONE) {
            AssertionUtil.report("Update type not specified");
            getActivity().finish();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C3993R.layout.fu_update, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        getActivity().getWindow().setBackgroundDrawableResource(mo9762QA());
        CardView cardView = (CardView) view.findViewById(C3993R.C3995id.btn_action);
        this.f59873f = cardView;
        cardView.setOnClickListener(this);
        TextView textView = (TextView) view.findViewById(C3993R.C3995id.title);
        textView.setText(this.f59872e.getTitle());
        textView.setOnLongClickListener(new View.OnLongClickListener() { // from class: e.a.x3.h.a
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                ((AbstractC19214a) View$OnClickListenerC21407e.this.getContext().getApplicationContext()).mo13876z();
                return true;
            }
        });
        ((TextView) view.findViewById(C3993R.C3995id.description)).setText(this.f59872e.getDescription());
        ((TextView) view.findViewById(C3993R.C3995id.btn_action_text)).setText(this.f59872e.getAction());
        ((ImageView) view.findViewById(C3993R.C3995id.image)).setImageResource(mo9761RA());
        View findViewById = view.findViewById(C3993R.C3995id.btn_dismiss);
        if (findViewById != null) {
            if (this.f59872e.getSkippable()) {
                findViewById.setOnClickListener(this);
            } else {
                findViewById.setVisibility(8);
            }
        }
        this.f59874g.mo9778b(this.f59872e);
    }
}
