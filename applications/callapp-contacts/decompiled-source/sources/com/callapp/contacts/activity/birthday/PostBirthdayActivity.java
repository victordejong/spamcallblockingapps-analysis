package com.callapp.contacts.activity.birthday;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.q;
import androidx.viewpager.widget.ViewPager;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.activity.fragments.ImageFragment;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoice;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.CirclePaginationContainer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/PostBirthdayActivity.class */
public class PostBirthdayActivity extends BaseNoTitleActivity {
    private static final int[] j = {2131230852, 2131230853, 2131230854, 2131230855, 2131230856, 2131230857, 2131230858};

    /* renamed from: a  reason: collision with root package name */
    ContactBirthdayData f11197a;

    /* renamed from: b  reason: collision with root package name */
    boolean f11198b;
    ViewPager e;
    CirclePaginationContainer f;
    EditText g;
    ImageView h;
    private boolean l;

    /* renamed from: c  reason: collision with root package name */
    boolean f11199c = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f11200d = false;
    private Runnable k = null;

    /* renamed from: com.callapp.contacts.activity.birthday.PostBirthdayActivity$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/PostBirthdayActivity$3.class */
    class AnonymousClass3 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f11205a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String[][] f11206b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass3(String[] strArr, String[][] strArr2) {
            this.f11205a = strArr;
            this.f11206b = strArr2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PopupManager.get().a(PostBirthdayActivity.this, new DialogSelectSingleChoice(Activities.getString(2131886324), this.f11205a, 0, new DialogSelectSingleChoiceBase.SingleChoiceListenerImpel() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.3.1
                @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
                public final void b(int i) {
                    if (i < AnonymousClass3.this.f11206b.length) {
                        final String[] strArr = AnonymousClass3.this.f11206b[i];
                        ArrayList arrayList = new ArrayList();
                        int i2 = 0;
                        for (String str : strArr) {
                            arrayList.add(new AdapterText.ItemText(str, i2));
                            i2++;
                        }
                        final DialogList dialogList = new DialogList(Activities.a(2131886325, AnonymousClass3.this.f11205a[i]), true);
                        AdapterText adapterText = new AdapterText(PostBirthdayActivity.this, 2131558571, arrayList);
                        adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.3.1.1
                            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                            public void onRowClicked(int i3) {
                                PostBirthdayActivity.this.g.setText(strArr[i3]);
                                dialogList.dismiss();
                            }
                        });
                        dialogList.setAdapter(adapterText);
                        dialogList.setBackgroundColor(ThemeUtils.getColor(2131099686));
                        PopupManager.get().a(PostBirthdayActivity.this, dialogList);
                    }
                }
            }));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter.class */
    public static class ImagePagerAdapter extends q {

        /* renamed from: a  reason: collision with root package name */
        private final int f11218a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f11219b;

        public ImagePagerAdapter(FragmentManager fragmentManager, String[] strArr) {
            super(fragmentManager);
            this.f11219b = strArr;
            this.f11218a = strArr.length;
        }

        @Override // androidx.viewpager.widget.a
        public int getCount() {
            return this.f11218a;
        }

        @Override // androidx.fragment.app.q
        public Fragment getItem(int i) {
            return ImageFragment.a(this.f11219b[i]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap b() {
        int i;
        if (!this.f11198b) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f11197a.getDisplayPhotoUrls().get(this.e.getCurrentItem()));
            glideRequestBuilder.e = this;
            Bitmap bitmap = glideRequestBuilder.a(this.l ? DataSource.facebook : null).getBitmap();
            try {
                int width = bitmap.getWidth();
                Integer num = (Integer) this.h.getTag();
                if (num == null) {
                    return null;
                }
                Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), num.intValue());
                if (decodeResource != null) {
                    Canvas canvas = new Canvas(bitmap);
                    int width2 = decodeResource.getWidth();
                    int height = decodeResource.getHeight();
                    float f = width;
                    float f2 = width2;
                    float f3 = (f * 0.98f) / f2;
                    int i2 = (int) (f2 * f3);
                    int i3 = (int) (height * f3);
                    RectF rectF = new RectF((width - i2) / 2, BitmapDescriptorFactory.HUE_RED, i2 + i, i3);
                    Paint paint = new Paint();
                    paint.setAntiAlias(true);
                    paint.setFilterBitmap(true);
                    paint.setDither(true);
                    canvas.drawBitmap(decodeResource, (Rect) null, rectF, paint);
                    return bitmap;
                }
            } catch (Exception e) {
                CLog.a("addGreetingOverlay exception", e);
                return null;
            }
        }
        return BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131230859);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558463;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        SocialNetworksSearchUtil.a(i, i2, intent);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoadBirthdayDataFragment loadBirthdayDataFragment = new LoadBirthdayDataFragment();
            getSupportFragmentManager().a().a(loadBirthdayDataFragment, "LOADING_FRAGMENT_TAG").b();
            loadBirthdayDataFragment.e = true;
            getSupportFragmentManager().b();
        }
        View findViewById = findViewById(2131363510);
        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
        layoutParams.height = Activities.getScreenWidth(1);
        layoutParams.width = layoutParams.height;
        findViewById.setLayoutParams(layoutParams);
        LayerDrawable layerDrawable = (LayerDrawable) ((ImageView) findViewById(2131362928)).getBackground();
        if (layerDrawable != null) {
            layerDrawable.findDrawableByLayerId(2131362544).setColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099890), PorterDuff.Mode.XOR);
        }
        onNewIntent(getIntent());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        CallAppApplication.get().c(this.k);
        this.k = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent == null) {
            finish();
            return;
        }
        this.l = intent.hasExtra("FB_ID_EXTRA");
        if (intent.hasExtra("PHONE_EXTRA") || this.l) {
            this.k = new Runnable() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!PostBirthdayActivity.this.f11200d) {
                        PostBirthdayActivity.this.f11199c = true;
                        if (Activities.a((Activity) PostBirthdayActivity.this)) {
                            PopupManager.get().a(PostBirthdayActivity.this, new DialogSimpleMessage(null, "Internet issues - please try again in a few minutes", Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.1.1
                                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                                public void onClickListener(Activity activity) {
                                }
                            }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.1.2
                                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                                public final void a(DialogPopup dialogPopup) {
                                    Activity activity = dialogPopup.getActivity();
                                    if (activity != null) {
                                        activity.finish();
                                    }
                                }

                                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                                public final void b(DialogPopup dialogPopup) {
                                }

                                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                                public void onShow(DialogInterface dialogInterface) {
                                }
                            }));
                        }
                    }
                }
            };
            CallAppApplication.get().a(this.k, 10000L);
            final LoadBirthdayDataFragment loadBirthdayDataFragment = (LoadBirthdayDataFragment) getSupportFragmentManager().a("LOADING_FRAGMENT_TAG");
            String stringExtra = intent.getStringExtra("FB_ID_EXTRA");
            String stringExtra2 = intent.getStringExtra("PHONE_EXTRA");
            long longExtra = intent.getLongExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, 0L);
            loadBirthdayDataFragment.f11194a = stringExtra;
            loadBirthdayDataFragment.f11195b = stringExtra2;
            loadBirthdayDataFragment.f11196c = longExtra;
            synchronized (loadBirthdayDataFragment.f) {
                if (!loadBirthdayDataFragment.g) {
                    loadBirthdayDataFragment.g = true;
                    FragmentActivity activity = loadBirthdayDataFragment.getActivity();
                    if (loadBirthdayDataFragment.e && Activities.a((Activity) activity)) {
                        loadBirthdayDataFragment.a((Context) activity);
                    }
                    new Task() { // from class: com.callapp.contacts.activity.fragments.BackgroundWorkerFragment.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            try {
                                BackgroundWorkerFragment backgroundWorkerFragment = BackgroundWorkerFragment.this;
                                BackgroundWorkerFragment.a(backgroundWorkerFragment, backgroundWorkerFragment.a());
                                BackgroundWorkerFragment.this.g = false;
                                if (Activities.a((Activity) BackgroundWorkerFragment.this.getActivity())) {
                                    BackgroundWorkerFragment.this.b();
                                }
                            } catch (Throwable th) {
                                if (Activities.a((Activity) BackgroundWorkerFragment.this.getActivity())) {
                                    BackgroundWorkerFragment.this.b();
                                }
                                throw th;
                            }
                        }
                    }.execute();
                }
            }
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setupPaginationContainer(int i) {
        if (i > 1) {
            this.f.setCheckedColor(ThemeUtils.a(CallAppApplication.get(), 2131100074));
            this.f.setUncheckedColor(ThemeUtils.a(CallAppApplication.get(), 2131100075));
            this.f.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
            this.f.a(i);
            this.f.setCheckedPosition(this.e.getCurrentItem());
            return;
        }
        this.f.setVisibility(8);
    }
}
