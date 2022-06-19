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
import androidx.fragment.app.AbstractC1119q;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
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

    /* renamed from: j */
    private static final int[] f20428j = {2131230852, 2131230853, 2131230854, 2131230855, 2131230856, 2131230857, 2131230858};

    /* renamed from: a */
    ContactBirthdayData f20429a;

    /* renamed from: b */
    boolean f20430b;

    /* renamed from: e */
    ViewPager f20433e;

    /* renamed from: f */
    CirclePaginationContainer f20434f;

    /* renamed from: g */
    EditText f20435g;

    /* renamed from: h */
    ImageView f20436h;

    /* renamed from: l */
    private boolean f20438l;

    /* renamed from: c */
    boolean f20431c = false;

    /* renamed from: d */
    boolean f20432d = false;

    /* renamed from: k */
    private Runnable f20437k = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.birthday.PostBirthdayActivity$3 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/PostBirthdayActivity$3.class */
    public class View$OnClickListenerC58293 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ String[] f20443a;

        /* renamed from: b */
        final /* synthetic */ String[][] f20444b;

        public View$OnClickListenerC58293(String[] strArr, String[][] strArr2) {
            PostBirthdayActivity.this = r4;
            this.f20443a = strArr;
            this.f20444b = strArr2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PopupManager.get().m28209a(PostBirthdayActivity.this, new DialogSelectSingleChoice(Activities.getString(2131886324), this.f20443a, 0, new DialogSelectSingleChoiceBase.SingleChoiceListenerImpel() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.3.1
                @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
                /* renamed from: b */
                public final void mo26631b(int i) {
                    if (i < View$OnClickListenerC58293.this.f20444b.length) {
                        final String[] strArr = View$OnClickListenerC58293.this.f20444b[i];
                        ArrayList arrayList = new ArrayList();
                        int i2 = 0;
                        for (String str : strArr) {
                            arrayList.add(new AdapterText.ItemText(str, i2));
                            i2++;
                        }
                        final DialogList dialogList = new DialogList(Activities.m27697a(2131886325, View$OnClickListenerC58293.this.f20443a[i]), true);
                        AdapterText adapterText = new AdapterText(PostBirthdayActivity.this, 2131558571, arrayList);
                        adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.3.1.1
                            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                            public void onRowClicked(int i3) {
                                PostBirthdayActivity.this.f20435g.setText(strArr[i3]);
                                dialogList.dismiss();
                            }
                        });
                        dialogList.setAdapter(adapterText);
                        dialogList.setBackgroundColor(ThemeUtils.getColor(2131099686));
                        PopupManager.get().m28209a(PostBirthdayActivity.this, dialogList);
                    }
                }
            }));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/PostBirthdayActivity$ImagePagerAdapter.class */
    public static class ImagePagerAdapter extends AbstractC1119q {

        /* renamed from: a */
        private final int f20456a;

        /* renamed from: b */
        private final String[] f20457b;

        public ImagePagerAdapter(FragmentManager fragmentManager, String[] strArr) {
            super(fragmentManager);
            this.f20457b = strArr;
            this.f20456a = strArr.length;
        }

        @Override // androidx.viewpager.widget.AbstractC2941a
        public int getCount() {
            return this.f20456a;
        }

        @Override // androidx.fragment.app.AbstractC1119q
        public Fragment getItem(int i) {
            return ImageFragment.m30262a(this.f20457b[i]);
        }
    }

    /* renamed from: b */
    public Bitmap m31448b() {
        int i;
        if (!this.f20430b) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f20429a.getDisplayPhotoUrls().get(this.f20433e.getCurrentItem()));
            glideRequestBuilder.f28239e = this;
            Bitmap bitmap = glideRequestBuilder.m27023a(this.f20438l ? DataSource.facebook : null).getBitmap();
            try {
                int width = bitmap.getWidth();
                Integer num = (Integer) this.f20436h.getTag();
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
                CLog.m27602a("addGreetingOverlay exception", e);
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
        SocialNetworksSearchUtil.m29233a(i, i2, intent);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoadBirthdayDataFragment loadBirthdayDataFragment = new LoadBirthdayDataFragment();
            getSupportFragmentManager().m43765a().m43537a(loadBirthdayDataFragment, "LOADING_FRAGMENT_TAG").mo43536b();
            loadBirthdayDataFragment.f23022e = true;
            getSupportFragmentManager().m43732b();
        }
        View findViewById = findViewById(2131363510);
        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
        layoutParams.height = Activities.getScreenWidth(1);
        layoutParams.width = layoutParams.height;
        findViewById.setLayoutParams(layoutParams);
        LayerDrawable layerDrawable = (LayerDrawable) ((ImageView) findViewById(2131362928)).getBackground();
        if (layerDrawable != null) {
            layerDrawable.findDrawableByLayerId(2131362544).setColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099890), PorterDuff.Mode.XOR);
        }
        onNewIntent(getIntent());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        CallAppApplication.get().m31861c(this.f20437k);
        this.f20437k = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent == null) {
            finish();
            return;
        }
        this.f20438l = intent.hasExtra("FB_ID_EXTRA");
        if (!intent.hasExtra("PHONE_EXTRA") && !this.f20438l) {
            finish();
            return;
        }
        this.f20437k = new Runnable() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.1
            @Override // java.lang.Runnable
            public void run() {
                if (!PostBirthdayActivity.this.f20432d) {
                    PostBirthdayActivity.this.f20431c = true;
                    if (!Activities.m27696a((Activity) PostBirthdayActivity.this)) {
                        return;
                    }
                    PopupManager.get().m28209a(PostBirthdayActivity.this, new DialogSimpleMessage(null, "Internet issues - please try again in a few minutes", Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.1.1
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                        }
                    }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.1.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        /* renamed from: a */
                        public final void mo26209a(DialogPopup dialogPopup) {
                            Activity activity = dialogPopup.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        /* renamed from: b */
                        public final void mo26208b(DialogPopup dialogPopup) {
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                        public void onShow(DialogInterface dialogInterface) {
                        }
                    }));
                }
            }
        };
        CallAppApplication.get().m31869a(this.f20437k, 10000L);
        final LoadBirthdayDataFragment loadBirthdayDataFragment = (LoadBirthdayDataFragment) getSupportFragmentManager().m43740a("LOADING_FRAGMENT_TAG");
        String stringExtra = intent.getStringExtra("FB_ID_EXTRA");
        String stringExtra2 = intent.getStringExtra("PHONE_EXTRA");
        long longExtra = intent.getLongExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, 0L);
        loadBirthdayDataFragment.f20425a = stringExtra;
        loadBirthdayDataFragment.f20426b = stringExtra2;
        loadBirthdayDataFragment.f20427c = longExtra;
        synchronized (loadBirthdayDataFragment.f23023f) {
            if (!loadBirthdayDataFragment.f23024g) {
                loadBirthdayDataFragment.f23024g = true;
                FragmentActivity activity = loadBirthdayDataFragment.getActivity();
                if (loadBirthdayDataFragment.f23022e && Activities.m27696a((Activity) activity)) {
                    loadBirthdayDataFragment.m30268a((Context) activity);
                }
                new Task() { // from class: com.callapp.contacts.activity.fragments.BackgroundWorkerFragment.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        try {
                            BackgroundWorkerFragment backgroundWorkerFragment = BackgroundWorkerFragment.this;
                            BackgroundWorkerFragment.m30266a(backgroundWorkerFragment, backgroundWorkerFragment.mo30269a());
                            BackgroundWorkerFragment.this.f23024g = false;
                            if (!Activities.m27696a((Activity) BackgroundWorkerFragment.this.getActivity())) {
                                return;
                            }
                            BackgroundWorkerFragment.this.m30263b();
                        } catch (Throwable th) {
                            if (Activities.m27696a((Activity) BackgroundWorkerFragment.this.getActivity())) {
                                BackgroundWorkerFragment.this.m30263b();
                            }
                            throw th;
                        }
                    }
                }.execute();
            }
        }
    }

    public void setupPaginationContainer(int i) {
        if (i <= 1) {
            this.f20434f.setVisibility(8);
            return;
        }
        this.f20434f.setCheckedColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100074));
        this.f20434f.setUncheckedColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100075));
        this.f20434f.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
        this.f20434f.mo26690a(i);
        this.f20434f.setCheckedPosition(this.f20433e.getCurrentItem());
    }
}
