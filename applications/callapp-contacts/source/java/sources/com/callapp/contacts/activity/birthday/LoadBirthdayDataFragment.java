package com.callapp.contacts.activity.birthday;

import android.content.Intent;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager.widget.ViewPager;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.birthday.PostBirthdayActivity;
import com.callapp.contacts.activity.fragments.BackgroundWorkerFragment;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.BirthdayManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.CirclePaginationContainer;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/LoadBirthdayDataFragment.class */
public class LoadBirthdayDataFragment extends BackgroundWorkerFragment<ContactBirthdayData> {

    /* renamed from: a */
    String f20425a;

    /* renamed from: b */
    String f20426b;

    /* renamed from: c */
    long f20427c;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x009d, code lost:
        if (r9.isEmpty() != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.callapp.contacts.activity.birthday.ContactBirthdayData getDataFromPhone() {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.birthday.LoadBirthdayDataFragment.getDataFromPhone():com.callapp.contacts.activity.birthday.ContactBirthdayData");
    }

    @Override // com.callapp.contacts.activity.fragments.BackgroundWorkerFragment
    /* renamed from: a */
    public final /* synthetic */ ContactBirthdayData mo30269a() {
        if (!StringUtils.m26045b((CharSequence) this.f20425a)) {
            if (!StringUtils.m26045b((CharSequence) this.f20426b)) {
                return null;
            }
            return getDataFromPhone();
        }
        new StringBuilder("facebookID:").append(this.f20425a);
        CLog.m27606a("type of loader:");
        String birthdayNameForSocialId = BirthdayManager.getBirthdayNameForSocialId(FacebookHelper.get().getApiConstantNetworkId(), this.f20425a);
        ArrayList<String> m29204l = FacebookHelper.get().m29204l(this.f20425a);
        ArrayList<String> arrayList = m29204l;
        if (CollectionUtils.m26076a(m29204l)) {
            "value=".concat(String.valueOf(m29204l));
            CLog.m27606a("photoUrls:");
            String m29202m = FacebookHelper.get().m29202m(this.f20425a);
            arrayList = m29204l;
            if (!StringUtils.m26059a((CharSequence) m29202m)) {
                arrayList = m29204l;
                if (m29204l == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(m29202m);
            }
        }
        return CollectionUtils.m26076a(arrayList) ? getDataFromPhone() : new ContactBirthdayData(birthdayNameForSocialId, arrayList, new JSONSocialNetworkID(this.f20425a, true), null);
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String[], java.lang.String[][]] */
    @Override // com.callapp.contacts.activity.fragments.BackgroundWorkerFragment
    /* renamed from: a */
    public final /* synthetic */ void mo30264a(ContactBirthdayData contactBirthdayData) {
        ContactBirthdayData contactBirthdayData2 = contactBirthdayData;
        FragmentActivity activity = getActivity();
        if (activity instanceof PostBirthdayActivity) {
            final PostBirthdayActivity postBirthdayActivity = (PostBirthdayActivity) activity;
            postBirthdayActivity.f20432d = true;
            if (postBirthdayActivity.f20431c) {
                return;
            }
            if (contactBirthdayData2 == null) {
                FeedbackManager.get().m28669a(Activities.getString(2131886830), (Integer) 17);
                AnalyticsManager.get().m28450a(Constants.BIRTHDAY, "Pubish Results data null");
                postBirthdayActivity.finish();
                return;
            }
            postBirthdayActivity.f20433e = (ViewPager) postBirthdayActivity.findViewById(2131363474);
            postBirthdayActivity.f20434f = (CirclePaginationContainer) postBirthdayActivity.findViewById(2131364521);
            postBirthdayActivity.f20436h = (ImageView) postBirthdayActivity.findViewById(2131362935);
            postBirthdayActivity.f20435g = (EditText) postBirthdayActivity.findViewById(2131362094);
            postBirthdayActivity.f20429a = contactBirthdayData2;
            ArrayList<String> displayPhotoUrls = postBirthdayActivity.f20429a.getDisplayPhotoUrls();
            postBirthdayActivity.f20430b = displayPhotoUrls == null || displayPhotoUrls.isEmpty();
            int size = postBirthdayActivity.f20430b ? 0 : displayPhotoUrls.size();
            if (postBirthdayActivity.f20430b) {
                ImageUtils.m27529a(postBirthdayActivity.f20436h, 2131230859, (ColorFilter) null);
            } else {
                ImageUtils.m27529a(postBirthdayActivity.f20436h, 2131230852, (ColorFilter) null);
                postBirthdayActivity.f20436h.setTag(2131230852);
                postBirthdayActivity.f20433e.setAdapter(new PostBirthdayActivity.ImagePagerAdapter(postBirthdayActivity.getSupportFragmentManager(), (String[]) displayPhotoUrls.toArray(new String[size])));
                postBirthdayActivity.f20433e.addOnPageChangeListener(new ViewPager.C2939h() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.2
                    @Override // androidx.viewpager.widget.ViewPager.C2939h, androidx.viewpager.widget.ViewPager.AbstractC2936e
                    public void onPageSelected(int i) {
                        postBirthdayActivity.f20434f.setCheckedPosition(i);
                    }
                });
            }
            postBirthdayActivity.findViewById(2131362611).setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
            View findViewById = postBirthdayActivity.findViewById(2131363465);
            final ArrayList<View> arrayList = new ArrayList();
            arrayList.add(findViewById.findViewById(2131363089));
            arrayList.add(findViewById.findViewById(2131363090));
            arrayList.add(findViewById.findViewById(2131363091));
            arrayList.add(findViewById.findViewById(2131363092));
            arrayList.add(findViewById.findViewById(2131363093));
            arrayList.add(findViewById.findViewById(2131363094));
            arrayList.add(findViewById.findViewById(2131363095));
            final ArrayList<View> arrayList2 = new ArrayList();
            arrayList2.add(findViewById.findViewById(2131362928));
            arrayList2.add(findViewById.findViewById(2131362929));
            arrayList2.add(findViewById.findViewById(2131362930));
            arrayList2.add(findViewById.findViewById(2131362931));
            arrayList2.add(findViewById.findViewById(2131362932));
            arrayList2.add(findViewById.findViewById(2131362933));
            arrayList2.add(findViewById.findViewById(2131362934));
            DefaultInterfaceImplUtils.ClickListener clickListener = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.4
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view) {
                    for (View view2 : arrayList) {
                        view2.setVisibility(4);
                    }
                    int indexOf = arrayList2.indexOf(view);
                    ((View) arrayList.get(indexOf)).setVisibility(0);
                    ImageUtils.m27529a(postBirthdayActivity.f20436h, PostBirthdayActivity.f20428j[indexOf], (ColorFilter) null);
                    postBirthdayActivity.f20436h.setTag(Integer.valueOf(PostBirthdayActivity.f20428j[indexOf]));
                }
            };
            if (!postBirthdayActivity.f20430b) {
                ((View) arrayList.get(0)).setVisibility(0);
                for (View view : arrayList) {
                    view.setBackgroundColor(ThemeUtils.getColor(2131099784));
                }
                for (View view2 : arrayList2) {
                    view2.setOnClickListener(clickListener);
                }
            } else {
                for (View view3 : arrayList2) {
                    ImageUtils.m27531a((ImageView) view3);
                }
            }
            postBirthdayActivity.setupPaginationContainer(size);
            postBirthdayActivity.findViewById(2131363832).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.5
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view4) {
                    AnalyticsManager.get().m28450a(Constants.BIRTHDAY, "Share birthday card");
                    if (!HttpUtils.m26985a()) {
                        FeedbackManager.m28675a(postBirthdayActivity);
                        return;
                    }
                    final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
                    simpleProgressDialog.setMessage(Activities.getString(2131887415));
                    PopupManager.get().m28209a(postBirthdayActivity, simpleProgressDialog);
                    new Task() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.5.1
                        {
                            C58335.this = this;
                        }

                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            String str;
                            StringBuilder sb = new StringBuilder(postBirthdayActivity.f20435g.getText().toString().trim());
                            String string = Activities.getString(2131886323);
                            if (StringUtils.m26059a(sb)) {
                                sb.append(string);
                            }
                            File m27533a = ImageUtils.m27533a(postBirthdayActivity.m31448b(), (String) null, (String) null);
                            if (m27533a != null) {
                                Uri m27518a = IoUtils.m27518a(postBirthdayActivity, m27533a);
                                Intent intent = new Intent("android.intent.action.SEND");
                                intent.putExtra("android.intent.extra.SUBJECT", string);
                                intent.putExtra("android.intent.extra.TITLE", string);
                                if (StringUtils.m26059a((CharSequence) postBirthdayActivity.f20429a.getDisplayName())) {
                                    str = "";
                                } else {
                                    str = postBirthdayActivity.f20429a.getDisplayName() + org.apache.commons.lang3.StringUtils.SPACE;
                                }
                                sb.append(org.apache.commons.lang3.StringUtils.SPACE);
                                sb.append(str);
                                sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
                                sb.append(Activities.getString(2131886180));
                                sb.append(org.apache.commons.lang3.StringUtils.SPACE);
                                sb.append(Activities.m27697a(2131886949, HttpUtils.getCallAppDomain()));
                                intent.putExtra("android.intent.extra.TEXT", sb.toString());
                                intent.setType("image/jpeg");
                                intent.putExtra("android.intent.extra.STREAM", m27518a);
                                Activities.m27685a(postBirthdayActivity, Intent.createChooser(intent, Activities.getString(2131887657)));
                            } else {
                                FeedbackManager.get().m28671a(Activities.getString(2131888108));
                            }
                            SimpleProgressDialog.m27939a(simpleProgressDialog);
                        }
                    }.execute();
                }
            });
            ImageView imageView = (ImageView) postBirthdayActivity.findViewById(2131362993);
            String[] stringArray = postBirthdayActivity.getResources().getStringArray(2130903040);
            String[] stringArray2 = postBirthdayActivity.getResources().getStringArray(2130903041);
            String[] stringArray3 = postBirthdayActivity.getResources().getStringArray(2130903042);
            String[] stringArray4 = postBirthdayActivity.getResources().getStringArray(2130903043);
            String[] stringArray5 = postBirthdayActivity.getResources().getStringArray(2130903044);
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100108), PorterDuff.Mode.SRC_IN));
            imageView.setOnClickListener(new PostBirthdayActivity.View$OnClickListenerC58293(stringArray, new String[]{stringArray2, stringArray3, stringArray4, stringArray5}));
            ((ScrollView) postBirthdayActivity.findViewById(2131362096)).fullScroll(130);
            postBirthdayActivity.f20435g.setFocusable(true);
            postBirthdayActivity.f20435g.setFocusableInTouchMode(true);
            postBirthdayActivity.f20435g.setHint(Activities.getString(2131886323));
            postBirthdayActivity.f20435g.setTextColor(ThemeUtils.getColor(2131100140));
            postBirthdayActivity.f20435g.setHintTextColor(ThemeUtils.getColor(2131099930));
            if (!StringUtils.m26045b((CharSequence) postBirthdayActivity.f20429a.getDisplayName())) {
                return;
            }
            TextView textView = (TextView) postBirthdayActivity.findViewById(2131362095);
            textView.setText(String.format("%s, ", StringUtils.m26020j(postBirthdayActivity.f20429a.getDisplayName().split(org.apache.commons.lang3.StringUtils.SPACE)[0])));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            textView.setVisibility(0);
        }
    }
}
