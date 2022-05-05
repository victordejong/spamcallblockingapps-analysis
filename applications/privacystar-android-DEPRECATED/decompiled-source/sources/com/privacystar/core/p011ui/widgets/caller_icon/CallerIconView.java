package com.privacystar.core.p011ui.widgets.caller_icon;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.util.caller.CallerManagerImpl;
import com.privacystar.core.p011ui.util.caller.CallerPresenter;
import com.privacystar.core.util.FeatureUtil;
import de.hdodenhof.circleimageview.CircleImageView;
import io.realm.Realm;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.widgets.caller_icon.CallerIconView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/caller_icon/CallerIconView.class */
public class CallerIconView extends RelativeLayout {
    private Caller caller;
    private Context context;
    private CallerIconSize iconSize;
    private boolean listIconEnabled;

    /* renamed from: com.privacystar.core.ui.widgets.caller_icon.CallerIconView$CallerIconSize */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/caller_icon/CallerIconView$CallerIconSize.class */
    public enum CallerIconSize {
        REGULAR(40, 18),
        LARGE(60, 24);
        
        private int iconSize;
        private int psBugSize;

        CallerIconSize(int i, int i2) {
            this.iconSize = i;
            this.psBugSize = i2;
        }

        public int getIconSize() {
            return this.iconSize;
        }

        public int getPsBugSize() {
            return this.psBugSize;
        }
    }

    public CallerIconView(Context context) {
        this(context, null);
    }

    public CallerIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.listIconEnabled = true;
        LayoutInflater.from(context).inflate(C1566R.C1571layout.caller_icon_view, (ViewGroup) this, true);
        this.context = context;
    }

    private void applyContactImage(CircleImageView circleImageView, Caller caller) {
        if (caller.getContactPicture() != null) {
            circleImageView.setImageBitmap(caller.getContactPicture());
        } else {
            Timber.m25w("Error binding contact image from caller. Image does not exist.", new Object[0]);
        }
    }

    private void setupLayout(Realm realm) {
        ImageView imageView = (ImageView) findViewById(C1566R.C1569id.caller_icon_contact_icon);
        CircleImageView circleImageView = (CircleImageView) findViewById(C1566R.C1569id.caller_icon_contact_image_regular);
        CircleImageView circleImageView2 = (CircleImageView) findViewById(C1566R.C1569id.caller_icon_contact_image_large);
        ImageView imageView2 = (ImageView) findViewById(C1566R.C1569id.caller_icon_contact_icon_secondary);
        ImageView imageView3 = (ImageView) findViewById(C1566R.C1569id.caller_icon_contact_icon_secondary_background);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(C1566R.C1569id.caller_icon_contact_icon_secondary_rl);
        FrameLayout frameLayout = (FrameLayout) findViewById(C1566R.C1569id.caller_icon_contact_icon_text_fl);
        TextView textView = (TextView) findViewById(C1566R.C1569id.caller_icon_contact_icon_text);
        int categoryDrawable = CallerPresenter.getCategoryDrawable(this.caller);
        boolean isOffender = this.caller.isOffender(true);
        int applyDimension = (int) TypedValue.applyDimension(1, this.iconSize.getIconSize(), getResources().getDisplayMetrics());
        int applyDimension2 = (int) TypedValue.applyDimension(1, this.iconSize.getPsBugSize(), getResources().getDisplayMetrics());
        int applyDimension3 = (int) TypedValue.applyDimension(1, this.iconSize.getPsBugSize() - 4.0f, getResources().getDisplayMetrics());
        int applyDimension4 = (int) TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
        imageView.setMaxHeight(applyDimension);
        imageView.setMaxWidth(applyDimension);
        imageView3.setMaxHeight(applyDimension2);
        imageView3.setMaxWidth(applyDimension2);
        imageView2.setMaxHeight(applyDimension3);
        imageView2.setMaxWidth(applyDimension3);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(applyDimension, applyDimension));
        imageView3.setLayoutParams(new RelativeLayout.LayoutParams(applyDimension2, applyDimension2));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(applyDimension3, applyDimension3);
        layoutParams.setMargins(applyDimension4, applyDimension4, applyDimension4, applyDimension4);
        imageView2.setLayoutParams(layoutParams);
        imageView.getParent().requestLayout();
        frameLayout.setVisibility(8);
        if (!(!isOffender) || !this.caller.hasContactPicture()) {
            if (!this.caller.hasContactName() || !this.caller.hasInitial()) {
                imageView.setImageResource(categoryDrawable);
            } else {
                imageView.setImageResource(C1566R.C1568drawable.circle);
                textView.setTextSize(2, this.iconSize == CallerIconSize.REGULAR ? 24.0f : 36.0f);
                textView.setText(this.caller.getInitial());
                frameLayout.setVisibility(0);
            }
            circleImageView.setVisibility(8);
            circleImageView2.setVisibility(8);
            imageView.setVisibility(0);
        } else {
            if (this.iconSize == CallerIconSize.REGULAR) {
                applyContactImage(circleImageView, this.caller);
                circleImageView.setVisibility(0);
                circleImageView2.setVisibility(8);
            } else {
                applyContactImage(circleImageView2, this.caller);
                circleImageView.setVisibility(8);
                circleImageView2.setVisibility(0);
            }
            imageView.setVisibility(8);
        }
        if (!CallerManagerImpl.INSTANCE.shouldShowCallerIconBadge()) {
            relativeLayout.setVisibility(4);
        } else if (shouldShowApprovedIcon(this.caller)) {
            imageView2.setImageResource(C1566R.C1568drawable.ic_approved_bug);
            imageView2.setColorFilter((ColorFilter) null);
            relativeLayout.setVisibility(0);
        } else if (shouldShowBlockIcon(realm, this.caller)) {
            imageView2.setImageResource(C1566R.C1568drawable.ic_block_black_24dp);
            imageView2.setColorFilter(PSApplication.context().getResources().getColor(C1566R.color.ps3_red_300), PorterDuff.Mode.SRC_ATOP);
            relativeLayout.setVisibility(0);
        } else if (!this.caller.hasPsData() || !this.caller.canShowOffenderData()) {
            relativeLayout.setVisibility(4);
        } else {
            imageView2.setImageResource(C1566R.C1568drawable.caller_icon_badge);
            imageView2.setColorFilter((ColorFilter) null);
            relativeLayout.setVisibility(0);
        }
    }

    private boolean shouldShowApprovedIcon(Caller caller) {
        return this.context.getResources().getBoolean(C1566R.bool.approved_list_enabled) && this.listIconEnabled && LicenseFeatureRealm.isFeatureAvailable(Feature.APPROVE_LIST) && caller.inApprovedList();
    }

    private boolean shouldShowBlockIcon(@NonNull Realm realm, Caller caller) {
        if (!this.listIconEnabled) {
            return false;
        }
        if (this.context.getResources().getBoolean(C1566R.bool.approved_list_enabled) && LicenseFeatureRealm.isFeatureAvailable(Feature.APPROVE_LIST) && caller.inApprovedList()) {
            return false;
        }
        if (caller.isBlockedDueToType(true)) {
            return true;
        }
        if (!LicenseFeatureRealm.isFeatureAvailable(Feature.UNKNOWN_BLOCKING) || !caller.isBlockedDueToUnknown()) {
            return (LicenseFeatureRealm.isFeatureAvailable(Feature.CALL_BLOCKING) && caller.inBlockList()) || FeatureUtil.isManuallyBlockedAndScam(realm, caller);
        }
        return true;
    }

    public void setContent(Caller caller) {
        setContent(caller, CallerIconSize.REGULAR);
    }

    public void setContent(Caller caller, CallerIconSize callerIconSize) {
        setContent(caller, callerIconSize, true);
    }

    public void setContent(Caller caller, CallerIconSize callerIconSize, boolean z) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            setContent(caller, callerIconSize, z, defaultInstance);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    public void setContent(Caller caller, CallerIconSize callerIconSize, boolean z, @NonNull Realm realm) {
        this.caller = caller;
        this.iconSize = callerIconSize;
        this.listIconEnabled = z;
        setupLayout(realm);
    }
}
