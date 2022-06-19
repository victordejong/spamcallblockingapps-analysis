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
import com.google.android.material.C14376a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyCallAppPremiumView.class */
public class StickyCallAppPremiumView extends BaseStickyView {

    /* renamed from: a */
    private TextView f29450a;

    /* renamed from: b */
    private TextView f29451b;

    /* renamed from: c */
    private TextView f29452c;

    /* renamed from: d */
    private ImageView f29453d;

    /* renamed from: e */
    private ImageView f29454e;

    /* renamed from: f */
    private Guideline f29455f;

    /* renamed from: g */
    private final float f29456g;

    /* renamed from: h */
    private final float f29457h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.widget.sticky.StickyCallAppPremiumView$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyCallAppPremiumView$2.class */
    public static /* synthetic */ class C81852 {

        /* renamed from: a */
        static final /* synthetic */ int[] f29461a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[PremiumGroup.values().length];
            f29461a = iArr;
            try {
                iArr[PremiumGroup.CALLAPP_PLUS_SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f29461a[PremiumGroup.CALLAPP_PLUS_BIG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup.class */
    public enum PremiumGroup {
        CALL_RECORDING_SMALL(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166015)),
        CALLAPP_PLUS_SMALL(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166015)),
        CALLAPP_PLUS_BIG(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166014));
        

        /* renamed from: id */
        private final int f29462id;

        PremiumGroup(int i) {
            this.f29462id = i;
        }

        public final int getValue() {
            return this.f29462id;
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
        this.f29456g = getResources().getDimension(2131166013);
        this.f29457h = getResources().getDimension(2131166016);
        LayoutInflater.from(context).inflate(getLayout(), (ViewGroup) this, true);
        this.f29450a = (TextView) findViewById(2131363984);
        this.f29451b = (TextView) findViewById(2131363983);
        this.f29453d = (ImageView) findViewById(2131363982);
        this.f29454e = (ImageView) findViewById(2131363980);
        this.f29452c = (TextView) findViewById(2131363981);
        this.f29455f = (Guideline) findViewById(C14376a.C14382f.guideline);
        this.f29452c = (TextView) findViewById(2131363981);
        setBackgroundResource(2131232212);
    }

    public void setSpaceMargin(int i) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f29455f.getLayoutParams();
        layoutParams.f2960a = i;
        this.f29455f.setLayoutParams(layoutParams);
    }

    @Override // com.callapp.contacts.widget.sticky.BaseStickyView
    protected int getLayout() {
        return 2131558845;
    }

    public void setPremiumGroup(final PremiumGroup premiumGroup) {
        int i = C81852.f29461a[premiumGroup.ordinal()];
        StickyPremiumViewData stickyPremiumViewData = i != 1 ? i != 2 ? null : new StickyPremiumViewData(Activities.getString(2131886476), Activities.getString(2131886470), Activities.getString(2131886471), 2131230842, 0) : new StickyPremiumViewData(Activities.getString(2131886473), Activities.getString(2131886472), Activities.getString(2131886471), 2131231577, 2131230841);
        ImageUtils.m27530a(this.f29453d, stickyPremiumViewData.getImage());
        ImageUtils.m27530a(this.f29454e, stickyPremiumViewData.getBadge());
        this.f29452c.setText(stickyPremiumViewData.getButtonText());
        final StickyPremiumViewData stickyPremiumViewData2 = stickyPremiumViewData;
        this.f29455f.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.widget.sticky.StickyCallAppPremiumView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int i2;
                Resources resources;
                StickyCallAppPremiumView.this.f29455f.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (premiumGroup.getValue() == StickyCallAppPremiumView.this.f29456g) {
                    resources = StickyCallAppPremiumView.this.getResources();
                    i2 = 2131166014;
                } else {
                    resources = StickyCallAppPremiumView.this.getResources();
                    i2 = 2131166015;
                }
                StickyCallAppPremiumView.this.setSpaceMargin(resources.getDimensionPixelOffset(i2));
                StickyCallAppPremiumView.this.f29450a.setText(stickyPremiumViewData2.getTitle());
                StickyCallAppPremiumView.this.f29451b.setText(stickyPremiumViewData2.getSubtitle());
            }
        });
        getLayoutParams().height = premiumGroup.getValue();
        requestLayout();
    }
}
