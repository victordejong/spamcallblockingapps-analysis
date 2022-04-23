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
import com.google.android.material.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialView.class */
public class TutorialView<T extends TutorialPageModel> extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    protected TextView f16995a;

    /* renamed from: b  reason: collision with root package name */
    protected TextView f16996b;

    /* renamed from: c  reason: collision with root package name */
    protected TextView f16997c;

    /* renamed from: d  reason: collision with root package name */
    protected TextView f16998d;
    protected ImageView e;
    protected View f;
    protected FrameLayout g;
    private View h;
    private TutorialPageModel i;
    private View.OnClickListener j;

    /* renamed from: com.callapp.contacts.widget.tutorial.TutorialView$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialView$1.class */
    class AnonymousClass1 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TutorialPageModel f16999a;

        AnonymousClass1(TutorialPageModel tutorialPageModel) {
            this.f16999a = tutorialPageModel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean a() {
            return true;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f16999a.getCommand() != null && this.f16999a.getCommand().getCommandType().equals(TutorialCommand.COMMAND_TYPE.NOT_MANDATORY)) {
                TutorialView.this.setNextButtonState(_$$Lambda$TutorialView$1$fpsKe4aTqR_ABYid_xD_neGsNW0.INSTANCE);
            }
            this.f16999a.getCommand().run((BaseActivity) view.getContext());
        }
    }

    /* renamed from: com.callapp.contacts.widget.tutorial.TutorialView$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialView$2.class */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17001a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[TutorialCommand.COMMAND_TYPE.values().length];
            f17001a = iArr;
            try {
                iArr[TutorialCommand.COMMAND_TYPE.INFORMATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17001a[TutorialCommand.COMMAND_TYPE.NOT_MANDATORY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17001a[TutorialCommand.COMMAND_TYPE.MANDATORY.ordinal()] = 3;
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
        this.f16995a = (TextView) findViewById(2131364402);
        this.f16996b = (TextView) findViewById(2131364401);
        this.e = (ImageView) findViewById(2131364398);
        this.f = findViewById(2131364396);
        this.f16997c = (TextView) findViewById(2131364397);
        this.g = (FrameLayout) findViewById(2131364399);
        this.f16998d = (TextView) findViewById(2131364400);
        this.h = findViewById(a.f.guideline);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean c() {
        return true;
    }

    public void a(T t, View.OnClickListener onClickListener, TutorialCommand.COMMAND_TYPE command_type) {
        this.i = t;
        this.j = onClickListener;
        int i = AnonymousClass2.f17001a[command_type.ordinal()];
        setNextButtonState(i != 1 ? i != 2 ? i != 3 ? null : t.getShouldBeDisplayed() : (t == null || (t.getCommand() != null && t.a())) ? _$$Lambda$TutorialView$ioc2d_dDWsuuspwsrcqYTT0LtUU.INSTANCE : _$$Lambda$TutorialView$PEyBXINIJxJZc5ToQu6NWcH79iA.INSTANCE : _$$Lambda$TutorialView$dhpp11jrQ2LizCwkIb2sg_Sd5ts.INSTANCE);
        this.f16995a.setText(t.getTitle());
        this.f16996b.setText(t.getSubtitle());
        this.e.setImageResource(t.getDrawableRes());
        if (t.isCta()) {
            this.f.setOnClickListener(new AnonymousClass1(t));
            this.f16997c.setText(t.getCtaText());
        } else {
            ((RelativeLayout.LayoutParams) this.h.getLayoutParams()).addRule(2, this.g.getId());
            this.f.setVisibility(8);
            ((RelativeLayout.LayoutParams) this.h.getLayoutParams()).addRule(2, this.g.getId());
        }
        if (Activities.getScreenHeight(1) <= 1280) {
            ((ViewGroup.MarginLayoutParams) this.f.getLayoutParams()).bottomMargin = getResources().getDimensionPixelOffset(2131165559);
            ((ViewGroup.MarginLayoutParams) this.g.getLayoutParams()).bottomMargin = getResources().getDimensionPixelOffset(2131165559);
        }
        if (t.getId() == 9) {
            AnalyticsManager.get().a(Constants.PERMISSIONS, "ViewPermissionToNotification", "TutorialCallAppPlus");
        }
    }

    public TutorialPageModel getData() {
        return this.i;
    }

    public void setNextButtonState(Predicate predicate) {
        boolean accept = predicate.accept();
        this.f16998d.setText(Activities.getString(2131887299));
        int i = 2131099784;
        i = accept ? 2131099784 : 2131099919;
        this.g.setOnClickListener(accept ? this.j : null);
        TutorialPageModel tutorialPageModel = this.i;
        if (tutorialPageModel == null || tutorialPageModel.getCommand() == null || !this.i.getCommand().getCommandType().equals(TutorialCommand.COMMAND_TYPE.MANDATORY)) {
            this.g.setEnabled(accept);
            this.g.setClickable(accept);
        } else {
            this.g.setEnabled(true);
            this.g.setClickable(true);
            this.g.setOnClickListener(this.j);
            if (accept) {
                i = 2131099919;
            }
        }
        this.f16998d.setTextColor(ThemeUtils.getColor(i));
    }
}
