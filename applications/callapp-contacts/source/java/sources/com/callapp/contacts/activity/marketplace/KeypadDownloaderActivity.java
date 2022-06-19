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

    /* renamed from: e */
    boolean f23398e;

    /* renamed from: f */
    private String f23399f;

    /* renamed from: g */
    private KeypadPreviewFragment f23400g;

    /* renamed from: h */
    private Uri f23401h;

    /* renamed from: j */
    private View f23402j;

    /* renamed from: k */
    private ChooseImageSourceDialogListener f23403k;

    /* renamed from: a */
    public static Intent m30099a(Activity activity, String str) {
        Intent intent = new Intent(activity, KeypadDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    /* renamed from: a */
    public static void m30098a(Activity activity, String str, Class cls, String str2) {
        Intent m30099a = m30099a(activity, str);
        m30099a.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        if (cls != null) {
            m30099a.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        m30099a.putExtra(Payload.SOURCE, str2);
        activity.startActivity(m30099a);
    }

    /* renamed from: a */
    static /* synthetic */ void m30097a(KeypadDownloaderActivity keypadDownloaderActivity) {
        AnalyticsManager.get().mo28444a(Constants.USER_CORRECTED_INFO, "Click on add image", (String) null, 0.0d, Payload.SOURCE, keypadDownloaderActivity.f23269d);
        ChooseImageSourceDialog chooseImageSourceDialog = new ChooseImageSourceDialog(ChooseImageSourceDialog.ImageSourceType.IMAGE);
        if (keypadDownloaderActivity.f23403k == null) {
            keypadDownloaderActivity.f23403k = new ChooseImageSourceDialogListener(keypadDownloaderActivity, keypadDownloaderActivity.getFileUri(), Constants.STORE);
        }
        chooseImageSourceDialog.setListener(keypadDownloaderActivity.f23403k);
        PopupManager.get().m28209a(keypadDownloaderActivity, chooseImageSourceDialog);
    }

    /* renamed from: d */
    private void m30095d() {
        if (this.f23266a == 0 || !((JSONStoreItemKeypad) this.f23266a).isPurchased()) {
            return;
        }
        if (!((JSONStoreItemKeypad) this.f23266a).isCustomizable()) {
            if (!StringUtils.m26059a((CharSequence) Prefs.f26401dS.get())) {
                return;
            }
            getProgressCardView().setRightButtonText(Activities.getString(2131888124));
            getProgressCardView().m26669a(false);
        } else if (!StringUtils.m26045b((CharSequence) Prefs.f26398dP.get())) {
            getProgressCardView().m26669a(false);
            getProgressCardView().m26668b(false);
        } else {
            getProgressCardView().m26668b(true);
            boolean m26042b = StringUtils.m26042b(Prefs.f26398dP.get(), Prefs.f26401dS.get());
            getProgressCardView().setRightButtonText(Activities.getString(m26042b ? 2131887027 : 2131886255));
            getProgressCardView().m26669a(m26042b);
        }
    }

    private Uri getFileUri() {
        if (this.f23401h == null) {
            this.f23401h = IoUtils.m27518a(this, new File(IoUtils.m27501c("CallAppMedia"), "callAppCustomKeypad"));
        }
        return this.f23401h;
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    protected final /* synthetic */ JSONStoreItemKeypad mo29999a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getKeypad();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    public final void mo30002a(int i) {
        super.mo30002a(i);
        if (this.f23266a != 0) {
            if (this.f23400g != null) {
                if (((JSONStoreItemKeypad) this.f23266a).isCustomizable()) {
                    View m27302b = ViewUtils.m27302b(findViewById(2131361989));
                    this.f23402j = m27302b;
                    if (m27302b != null) {
                        View findViewById = m27302b.findViewById(2131361980);
                        ViewUtils.m27299b(findViewById, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
                        TextView textView = (TextView) this.f23402j.findViewById(2131361979);
                        ImageView imageView = (ImageView) this.f23402j.findViewById(2131363526);
                        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN));
                        if (this.f23398e) {
                            imageView.setImageResource(2131231417);
                            textView.setVisibility(0);
                            textView.setText(Activities.getString(2131886207));
                        } else {
                            imageView.setImageResource(2131231865);
                            textView.setVisibility(8);
                        }
                        findViewById.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadDownloaderActivity.1
                            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                            /* renamed from: a */
                            public final void mo26371a(View view) {
                                KeypadDownloaderActivity.m30097a(KeypadDownloaderActivity.this);
                            }
                        });
                    }
                    if (((JSONStoreItemKeypad) this.f23266a).getCustomUrl() != null) {
                        String customUrl = ((JSONStoreItemKeypad) this.f23266a).getCustomUrl();
                        this.f23399f = customUrl;
                        this.f23400g.m30093a(customUrl, String.valueOf(Prefs.f26399dQ.get()));
                    } else {
                        this.f23400g.setKeypadImageUrl(((JSONStoreItemKeypad) this.f23266a).getImageUrl());
                        FeedbackManager.get().m28669a(Activities.getString(2131886499), (Integer) 17);
                    }
                } else {
                    this.f23400g.setKeypadImageUrl(((JSONStoreItemKeypad) this.f23266a).getImageUrl());
                }
            }
            m30095d();
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return new DownloaderCardViewHandler.DownloaderCardEvents<JSONStoreItemKeypad>() { // from class: com.callapp.contacts.activity.marketplace.KeypadDownloaderActivity.2
            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: a */
            public /* synthetic */ void mo30015a(JSONStoreItemKeypad jSONStoreItemKeypad, ProgressCardView progressCardView) {
                DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreItemKeypad, progressCardView);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: a */
            public final /* synthetic */ boolean mo30016a(JSONStoreItemKeypad jSONStoreItemKeypad) {
                return (Prefs.f26345cP.get().booleanValue() || !jSONStoreItemKeypad.isCustomizable()) && mo30013c();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: b */
            public /* synthetic */ void mo30014b(JSONStoreItemKeypad jSONStoreItemKeypad) {
                DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$b(this, jSONStoreItemKeypad);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: c */
            public /* synthetic */ boolean mo30013c() {
                return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: c */
            public final /* synthetic */ String[] mo30012c(JSONStoreItemKeypad jSONStoreItemKeypad) {
                String imageUrl = jSONStoreItemKeypad.getImageUrl();
                ArrayList arrayList = new ArrayList();
                arrayList.add(imageUrl);
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: d */
            public final /* synthetic */ void mo30011d(JSONStoreItemKeypad jSONStoreItemKeypad) {
                JSONStoreItemKeypad jSONStoreItemKeypad2 = jSONStoreItemKeypad;
                if (jSONStoreItemKeypad2.needDefaultDialer() && !PhoneManager.get().isDefaultSystemPhoneApp()) {
                    PopupManager.get().m28209a(KeypadDownloaderActivity.this, new DefaultDialerDialogPopup(Activities.getString(2131887087), Activities.getString(2131887086), 2131232033));
                    return;
                }
                if (!jSONStoreItemKeypad2.isCustomizable()) {
                    Prefs.f26399dQ.set(null);
                    Prefs.f26398dP.set(null);
                    Prefs.f26401dS.set(jSONStoreItemKeypad2.getUrl());
                } else if (StringUtils.m26045b((CharSequence) KeypadDownloaderActivity.this.f23399f)) {
                    Prefs.f26401dS.set(KeypadDownloaderActivity.this.f23399f);
                }
                Prefs.f26575gh.set(Boolean.FALSE);
                Prefs.f26397dO.set(jSONStoreItemKeypad2.getSku());
                KeypadDownloaderActivity.this.m30153o_();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: e */
            public final void mo30010e() {
                FeedbackManager.get().m28670a("Download button clicked", 80);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: f */
            public final void mo30009f() {
                FeedbackManager.get().m28670a("Download finished", 80);
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: g */
            public final void mo30008g() {
                Prefs.f26397dO.set(null);
                Prefs.f26401dS.set(null);
                Prefs.f26398dP.set(null);
                Prefs.f26399dQ.set(null);
                FeedbackManager.get().m28669a(Activities.m27697a(2131887637, Activities.getString(2131887085)), (Integer) null);
                KeypadDownloaderActivity.this.m30153o_();
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
            /* renamed from: h */
            public final boolean mo30007h() {
                return Prefs.f26401dS.isNotNull();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: i */
            public final void mo30006i() {
                KeypadDownloaderActivity.this.m30153o_();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public boolean isLightTheme() {
                return ((ThemeState) Prefs.f26417di.get()).isLightTheme();
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            public boolean isSkuInUse() {
                return StringUtils.m26042b(Prefs.f26397dO.get(), ((JSONStoreItemKeypad) KeypadDownloaderActivity.this.f23266a).getSku());
            }

            @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
            /* renamed from: j */
            public /* synthetic */ void mo30005j() {
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
        Uri m30348a;
        Uri data;
        ChooseImageSourceDialogListener chooseImageSourceDialogListener;
        super.onActivityResult(i, i2, intent);
        if (i2 == -100 && (chooseImageSourceDialogListener = this.f23403k) != null) {
            chooseImageSourceDialogListener.m30339a();
        }
        if (i == 15000) {
            if (i2 != -1) {
                return;
            }
            CallAppCropActivity.m30349a(this, new CallAppCropActivity.ImageCropBuilder().setImagePathUri(getFileUri()).setSavePathUri(getFileUri()));
        } else if (i != 20000) {
            if (i != 25000 || i2 != -1 || (data = intent.getData()) == null) {
                return;
            }
            CallAppCropActivity.m30349a(this, new CallAppCropActivity.ImageCropBuilder().setIsFromGallery(true).setImagePathUri(data).setSavePathUri(getFileUri()));
        } else {
            if (i2 == 1000 && (m30348a = CallAppCropActivity.m30348a(intent)) != null) {
                String uri = m30348a.toString();
                this.f23399f = uri;
                if (StringUtils.m26045b((CharSequence) uri)) {
                    Prefs.f26398dP.set(this.f23399f);
                    Prefs.f26399dQ.set(new Date());
                    GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f23400g.getKeypadImageView(), this.f23399f, this);
                    glideRequestBuilder.f28252r = String.valueOf(Prefs.f26399dQ.get());
                    glideRequestBuilder.f28251q = true;
                    glideRequestBuilder.m27013d();
                }
            }
            m30095d();
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            this.f23269d = intent.getStringExtra(Payload.SOURCE);
        }
        this.f23398e = Prefs.f26398dP.isNull();
        this.f23400g = (KeypadPreviewFragment) getSupportFragmentManager().m43719c(2131363144);
        AnalyticsManager.get().mo28441b(Constants.KEYPAD_DOWNLOAD_ACTIVITY);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().mo28444a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.KEYPAD_DOWNLOAD_ACTIVITY, 0.0d, Payload.SOURCE, this.f23269d);
        super.onDestroy();
    }
}
