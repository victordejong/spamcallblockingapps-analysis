package com.callapp.contacts.activity.marketplace;

import android.app.Activity;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.crop.CallAppCropActivity;
import com.callapp.contacts.activity.crop.ChooseImageSourceDialogListener;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemKeypad;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.popup.ChooseImageSourceDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/KeypadDownloaderActivity.class */
public class KeypadDownloaderActivity extends BaseDownloaderActivity<JSONStoreItemKeypad> {
    boolean e;
    private String f;
    private KeypadPreviewFragment g;
    private Uri h;
    private View j;
    private ChooseImageSourceDialogListener k;

    public static Intent a(Activity activity, String str) {
        Intent intent = new Intent(activity, KeypadDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    public static void a(Activity activity, String str, Class cls, String str2) {
        Intent a2 = a(activity, str);
        a2.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        if (cls != null) {
            a2.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        a2.putExtra(Payload.SOURCE, str2);
        activity.startActivity(a2);
    }

    static /* synthetic */ void a(KeypadDownloaderActivity keypadDownloaderActivity) {
        AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, "Click on add image", (String) null, 0.0d, Payload.SOURCE, keypadDownloaderActivity.f13043d);
        ChooseImageSourceDialog chooseImageSourceDialog = new ChooseImageSourceDialog(ChooseImageSourceDialog.ImageSourceType.IMAGE);
        if (keypadDownloaderActivity.k == null) {
            keypadDownloaderActivity.k = new ChooseImageSourceDialogListener(keypadDownloaderActivity, keypadDownloaderActivity.getFileUri(), Constants.STORE);
        }
        chooseImageSourceDialog.setListener(keypadDownloaderActivity.k);
        PopupManager.get().a(keypadDownloaderActivity, chooseImageSourceDialog);
    }

    private void d() {
        if (this.f13040a != 0 && ((JSONStoreItemKeypad) this.f13040a).isPurchased()) {
            if (((JSONStoreItemKeypad) this.f13040a).isCustomizable()) {
                if (StringUtils.b((CharSequence) Prefs.dP.get())) {
                    getProgressCardView().b(true);
                    boolean b2 = StringUtils.b(Prefs.dP.get(), Prefs.dS.get());
                    getProgressCardView().setRightButtonText(Activities.getString(b2 ? 2131887027 : 2131886255));
                    getProgressCardView().a(b2);
                    return;
                }
                getProgressCardView().a(false);
                getProgressCardView().b(false);
            } else if (StringUtils.a((CharSequence) Prefs.dS.get())) {
                getProgressCardView().setRightButtonText(Activities.getString(2131888124));
                getProgressCardView().a(false);
            }
        }
    }

    private Uri getFileUri() {
        if (this.h == null) {
            this.h = IoUtils.a(this, new File(IoUtils.c("CallAppMedia"), "callAppCustomKeypad"));
        }
        return this.h;
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    protected final /* synthetic */ JSONStoreItemKeypad a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getKeypad();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    protected final void a(int i) {
        super.a(i);
        if (this.f13040a != 0) {
            if (this.g != null) {
                if (((JSONStoreItemKeypad) this.f13040a).isCustomizable()) {
                    View b2 = ViewUtils.b(findViewById(2131361989));
                    this.j = b2;
                    if (b2 != null) {
                        View findViewById = b2.findViewById(2131361980);
                        ViewUtils.b(findViewById, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
                        TextView textView = (TextView) this.j.findViewById(2131361979);
                        ImageView imageView = (ImageView) this.j.findViewById(2131363526);
                        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN));
                        if (this.e) {
                            imageView.setImageResource(2131231417);
                            textView.setVisibility(0);
                            textView.setText(Activities.getString(2131886207));
                        } else {
                            imageView.setImageResource(2131231865);
                            textView.setVisibility(8);
                        }
                        findViewById.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadDownloaderActivity.1
                            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                            public final void a(View view) {
                                KeypadDownloaderActivity.a(KeypadDownloaderActivity.this);
                            }
                        });
                    }
                    if (((JSONStoreItemKeypad) this.f13040a).getCustomUrl() != null) {
                        String customUrl = ((JSONStoreItemKeypad) this.f13040a).getCustomUrl();
                        this.f = customUrl;
                        this.g.a(customUrl, String.valueOf(Prefs.dQ.get()));
                    } else {
                        this.g.setKeypadImageUrl(((JSONStoreItemKeypad) this.f13040a).getImageUrl());
                        FeedbackManager.get().a(Activities.getString(2131886499), (Integer) 17);
                    }
                } else {
                    this.g.setKeypadImageUrl(((JSONStoreItemKeypad) this.f13040a).getImageUrl());
                }
            }
            d();
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return new DownloaderCardViewHandler.DownloaderCardEvents<JSONStoreItemKeypad>() { // from class: com.callapp.contacts.activity.marketplace.KeypadDownloaderActivity.2
            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ void a(JSONStoreItemKeypad jSONStoreItemKeypad, ProgressCardView progressCardView) {
                DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreItemKeypad, progressCardView);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final /* synthetic */ boolean a(JSONStoreItemKeypad jSONStoreItemKeypad) {
                return (Prefs.cP.get().booleanValue() || !jSONStoreItemKeypad.isCustomizable()) && c();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ void b(JSONStoreItemKeypad jSONStoreItemKeypad) {
                DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$b(this, jSONStoreItemKeypad);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ boolean c() {
                return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final /* synthetic */ String[] c(JSONStoreItemKeypad jSONStoreItemKeypad) {
                String imageUrl = jSONStoreItemKeypad.getImageUrl();
                ArrayList arrayList = new ArrayList();
                arrayList.add(imageUrl);
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final /* synthetic */ void d(JSONStoreItemKeypad jSONStoreItemKeypad) {
                JSONStoreItemKeypad jSONStoreItemKeypad2 = jSONStoreItemKeypad;
                if (!jSONStoreItemKeypad2.needDefaultDialer() || PhoneManager.get().isDefaultSystemPhoneApp()) {
                    if (!jSONStoreItemKeypad2.isCustomizable()) {
                        Prefs.dQ.set(null);
                        Prefs.dP.set(null);
                        Prefs.dS.set(jSONStoreItemKeypad2.getUrl());
                    } else if (StringUtils.b((CharSequence) KeypadDownloaderActivity.this.f)) {
                        Prefs.dS.set(KeypadDownloaderActivity.this.f);
                    }
                    Prefs.gh.set(Boolean.FALSE);
                    Prefs.dO.set(jSONStoreItemKeypad2.getSku());
                    KeypadDownloaderActivity.this.o_();
                    return;
                }
                PopupManager.get().a(KeypadDownloaderActivity.this, new DefaultDialerDialogPopup(Activities.getString(2131887087), Activities.getString(2131887086), 2131232033));
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final void e() {
                FeedbackManager.get().a("Download button clicked", 80);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final void f() {
                FeedbackManager.get().a("Download finished", 80);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final void g() {
                Prefs.dO.set(null);
                Prefs.dS.set(null);
                Prefs.dP.set(null);
                Prefs.dQ.set(null);
                FeedbackManager.get().a(Activities.a(2131887637, Activities.getString(2131887085)), (Integer) null);
                KeypadDownloaderActivity.this.o_();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public int getItemType() {
                return DownloaderCardViewHandler.StoreItemType.KEYPAD.ordinal();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ String getLeftButtonPrefixText() {
                return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getLeftButtonPrefixText(this);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public Promotion.ProductType getPromotionType() {
                return Promotion.ProductType.KEYPAD;
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ BooleanPref getPurchasePref() {
                return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getPurchasePref(this);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final boolean h() {
                return Prefs.dS.isNotNull();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public final void i() {
                KeypadDownloaderActivity.this.o_();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public boolean isLightTheme() {
                return ((ThemeState) Prefs.di.get()).isLightTheme();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public boolean isSkuInUse() {
                return StringUtils.b(Prefs.dO.get(), ((JSONStoreItemKeypad) KeypadDownloaderActivity.this.f13040a).getSku());
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public /* synthetic */ void j() {
                DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
            }
        };
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558452;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri a2;
        Uri data;
        ChooseImageSourceDialogListener chooseImageSourceDialogListener;
        super.onActivityResult(i, i2, intent);
        if (i2 == -100 && (chooseImageSourceDialogListener = this.k) != null) {
            chooseImageSourceDialogListener.a();
        }
        if (i != 15000) {
            if (i == 20000) {
                if (i2 == 1000 && (a2 = CallAppCropActivity.a(intent)) != null) {
                    String uri = a2.toString();
                    this.f = uri;
                    if (StringUtils.b((CharSequence) uri)) {
                        Prefs.dP.set(this.f);
                        Prefs.dQ.set(new Date());
                        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.g.getKeypadImageView(), this.f, this);
                        glideRequestBuilder.r = String.valueOf(Prefs.dQ.get());
                        glideRequestBuilder.q = true;
                        glideRequestBuilder.d();
                    }
                }
                d();
            } else if (i == 25000 && i2 == -1 && (data = intent.getData()) != null) {
                CallAppCropActivity.a(this, new CallAppCropActivity.ImageCropBuilder().setIsFromGallery(true).setImagePathUri(data).setSavePathUri(getFileUri()));
            }
        } else if (i2 == -1) {
            CallAppCropActivity.a(this, new CallAppCropActivity.ImageCropBuilder().setImagePathUri(getFileUri()).setSavePathUri(getFileUri()));
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!(intent == null || intent.getExtras() == null)) {
            this.f13043d = intent.getStringExtra(Payload.SOURCE);
        }
        this.e = Prefs.dP.isNull();
        this.g = (KeypadPreviewFragment) getSupportFragmentManager().c(2131363144);
        AnalyticsManager.get().b(Constants.KEYPAD_DOWNLOAD_ACTIVITY);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.KEYPAD_DOWNLOAD_ACTIVITY, 0.0d, Payload.SOURCE, this.f13043d);
        super.onDestroy();
    }
}
