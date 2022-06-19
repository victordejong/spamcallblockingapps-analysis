package com.callapp.contacts.widget.tutorial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.Predicate;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.tutorial.TutorialPageModel;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.google.android.material.C14376a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialView.class */
public class TutorialView<T extends TutorialPageModel> extends RelativeLayout {

    /* renamed from: a */
    protected TextView f29527a;

    /* renamed from: b */
    protected TextView f29528b;

    /* renamed from: c */
    protected TextView f29529c;

    /* renamed from: d */
    protected TextView f29530d;

    /* renamed from: e */
    protected ImageView f29531e;

    /* renamed from: f */
    protected View f29532f;

    /* renamed from: g */
    protected FrameLayout f29533g;

    /* renamed from: h */
    private View f29534h;

    /* renamed from: i */
    private TutorialPageModel f29535i;

    /* renamed from: j */
    private View.OnClickListener f29536j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.widget.tutorial.TutorialView$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialView$1.class */
    public class View$OnClickListenerC81931 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ TutorialPageModel f29537a;

        View$OnClickListenerC81931(TutorialPageModel tutorialPageModel) {
            TutorialView.this = r4;
            this.f29537a = tutorialPageModel;
        }

        /* renamed from: a */
        public static /* synthetic */ boolean m26223a() {
            return true;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f29537a.getCommand() != null && this.f29537a.getCommand().getCommandType().equals(TutorialCommand.COMMAND_TYPE.NOT_MANDATORY)) {
                TutorialView.this.setNextButtonState(_$$Lambda$TutorialView$1$fpsKe4aTqR_ABYid_xD_neGsNW0.INSTANCE);
            }
            this.f29537a.getCommand().run((BaseActivity) view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.widget.tutorial.TutorialView$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialView$2.class */
    public static /* synthetic */ class C81942 {

        /* renamed from: a */
        static final /* synthetic */ int[] f29539a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[TutorialCommand.COMMAND_TYPE.values().length];
            f29539a = iArr;
            try {
                iArr[TutorialCommand.COMMAND_TYPE.INFORMATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f29539a[TutorialCommand.COMMAND_TYPE.NOT_MANDATORY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f29539a[TutorialCommand.COMMAND_TYPE.MANDATORY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public TutorialView(Context context) {
        this(context, null);
    }

    public TutorialView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TutorialView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(2131558855, this);
        this.f29527a = (TextView) findViewById(2131364402);
        this.f29528b = (TextView) findViewById(2131364401);
        this.f29531e = (ImageView) findViewById(2131364398);
        this.f29532f = findViewById(2131364396);
        this.f29529c = (TextView) findViewById(2131364397);
        this.f29533g = (FrameLayout) findViewById(2131364399);
        this.f29530d = (TextView) findViewById(2131364400);
        this.f29534h = findViewById(C14376a.C14382f.guideline);
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m26227a() {
        return false;
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m26225b() {
        return true;
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m26224c() {
        return true;
    }

    /* renamed from: a */
    public void mo26226a(T t, View.OnClickListener onClickListener, TutorialCommand.COMMAND_TYPE command_type) {
        this.f29535i = t;
        this.f29536j = onClickListener;
        int i = C81942.f29539a[command_type.ordinal()];
        setNextButtonState(i != 1 ? i != 2 ? i != 3 ? null : t.getShouldBeDisplayed() : (t == null || (t.getCommand() != null && t.m26269a())) ? _$$Lambda$TutorialView$ioc2d_dDWsuuspwsrcqYTT0LtUU.INSTANCE : _$$Lambda$TutorialView$PEyBXINIJxJZc5ToQu6NWcH79iA.INSTANCE : _$$Lambda$TutorialView$dhpp11jrQ2LizCwkIb2sg_Sd5ts.INSTANCE);
        this.f29527a.setText(t.getTitle());
        this.f29528b.setText(t.getSubtitle());
        this.f29531e.setImageResource(t.getDrawableRes());
        if (t.isCta()) {
            this.f29532f.setOnClickListener(new View$OnClickListenerC81931(t));
            this.f29529c.setText(t.getCtaText());
        } else {
            ((RelativeLayout.LayoutParams) this.f29534h.getLayoutParams()).addRule(2, this.f29533g.getId());
            this.f29532f.setVisibility(8);
            ((RelativeLayout.LayoutParams) this.f29534h.getLayoutParams()).addRule(2, this.f29533g.getId());
        }
        if (Activities.getScreenHeight(1) <= 1280) {
            ((ViewGroup.MarginLayoutParams) this.f29532f.getLayoutParams()).bottomMargin = getResources().getDimensionPixelOffset(2131165559);
            ((ViewGroup.MarginLayoutParams) this.f29533g.getLayoutParams()).bottomMargin = getResources().getDimensionPixelOffset(2131165559);
        }
        if (t.getId() != 9) {
            return;
        }
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "ViewPermissionToNotification", "TutorialCallAppPlus");
    }

    public TutorialPageModel getData() {
        return this.f29535i;
    }

    public void setNextButtonState(Predicate predicate) {
        boolean accept = predicate.accept();
        this.f29530d.setText(Activities.getString(2131887299));
        int i = accept ? 2131099784 : 2131099919;
        this.f29533g.setOnClickListener(accept ? this.f29536j : null);
        TutorialPageModel tutorialPageModel = this.f29535i;
        if (tutorialPageModel == null || tutorialPageModel.getCommand() == null || !this.f29535i.getCommand().getCommandType().equals(TutorialCommand.COMMAND_TYPE.MANDATORY)) {
            this.f29533g.setEnabled(accept);
            this.f29533g.setClickable(accept);
        } else {
            this.f29533g.setEnabled(true);
            this.f29533g.setClickable(true);
            this.f29533g.setOnClickListener(this.f29536j);
            i = !accept ? 2131099784 : 2131099919;
        }
        this.f29530d.setTextColor(ThemeUtils.getColor(i));
    }
}
