package com.callapp.contacts.widget.sticky;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.google.android.material.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyCallAppPremiumView.class */
public class StickyCallAppPremiumView extends BaseStickyView {

    /* renamed from: a  reason: collision with root package name */
    private TextView f16940a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f16941b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16942c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f16943d;
    private ImageView e;
    private Guideline f;
    private final float g;
    private final float h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.widget.sticky.StickyCallAppPremiumView$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyCallAppPremiumView$2.class */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16947a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[PremiumGroup.values().length];
            f16947a = iArr;
            try {
                iArr[PremiumGroup.CALLAPP_PLUS_SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16947a[PremiumGroup.CALLAPP_PLUS_BIG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup.class */
    public enum PremiumGroup {
        CALL_RECORDING_SMALL(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166015)),
        CALLAPP_PLUS_SMALL(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166015)),
        CALLAPP_PLUS_BIG(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166014));
        
        private final int id;

        PremiumGroup(int i) {
            this.id = i;
        }

        public final int getValue() {
            return this.id;
        }
    }

    public StickyCallAppPremiumView(Context context) {
        this(context, null);
    }

    public StickyCallAppPremiumView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StickyCallAppPremiumView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = getResources().getDimension(2131166013);
        this.h = getResources().getDimension(2131166016);
        LayoutInflater.from(context).inflate(getLayout(), (ViewGroup) this, true);
        this.f16940a = (TextView) findViewById(2131363984);
        this.f16941b = (TextView) findViewById(2131363983);
        this.f16943d = (ImageView) findViewById(2131363982);
        this.e = (ImageView) findViewById(2131363980);
        this.f16942c = (TextView) findViewById(2131363981);
        this.f = (Guideline) findViewById(a.f.guideline);
        this.f16942c = (TextView) findViewById(2131363981);
        setBackgroundResource(2131232212);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpaceMargin(int i) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f.getLayoutParams();
        layoutParams.f1589a = i;
        this.f.setLayoutParams(layoutParams);
    }

    @Override // com.callapp.contacts.widget.sticky.BaseStickyView
    protected int getLayout() {
        return 2131558845;
    }

    public void setPremiumGroup(final PremiumGroup premiumGroup) {
        int i = AnonymousClass2.f16947a[premiumGroup.ordinal()];
        final StickyPremiumViewData stickyPremiumViewData = i != 1 ? i != 2 ? null : new StickyPremiumViewData(Activities.getString(2131886476), Activities.getString(2131886470), Activities.getString(2131886471), 2131230842, 0) : new StickyPremiumViewData(Activities.getString(2131886473), Activities.getString(2131886472), Activities.getString(2131886471), 2131231577, 2131230841);
        ImageUtils.a(this.f16943d, stickyPremiumViewData.getImage());
        ImageUtils.a(this.e, stickyPremiumViewData.getBadge());
        this.f16942c.setText(stickyPremiumViewData.getButtonText());
        this.f.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.widget.sticky.StickyCallAppPremiumView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int i2;
                Resources resources;
                StickyCallAppPremiumView.this.f.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (premiumGroup.getValue() == StickyCallAppPremiumView.this.g) {
                    resources = StickyCallAppPremiumView.this.getResources();
                    i2 = 2131166014;
                } else {
                    resources = StickyCallAppPremiumView.this.getResources();
                    i2 = 2131166015;
                }
                StickyCallAppPremiumView.this.setSpaceMargin(resources.getDimensionPixelOffset(i2));
                StickyCallAppPremiumView.this.f16940a.setText(stickyPremiumViewData.getTitle());
                StickyCallAppPremiumView.this.f16941b.setText(stickyPremiumViewData.getSubtitle());
            }
        });
        getLayoutParams().height = premiumGroup.getValue();
        requestLayout();
    }
}
