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

    /* renamed from: a  reason: collision with root package name */
    String f11194a;

    /* renamed from: b  reason: collision with root package name */
    String f11195b;

    /* renamed from: c  reason: collision with root package name */
    long f11196c;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x009d, code lost:
        if (r9.isEmpty() != false) goto L_0x00a0;
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
    public final /* synthetic */ ContactBirthdayData a() {
        if (StringUtils.b((CharSequence) this.f11194a)) {
            new StringBuilder("facebookID:").append(this.f11194a);
            CLog.a("type of loader:");
            String birthdayNameForSocialId = BirthdayManager.getBirthdayNameForSocialId(FacebookHelper.get().getApiConstantNetworkId(), this.f11194a);
            ArrayList<String> l = FacebookHelper.get().l(this.f11194a);
            ArrayList<String> arrayList = l;
            if (CollectionUtils.a(l)) {
                "value=".concat(String.valueOf(l));
                CLog.a("photoUrls:");
                String m = FacebookHelper.get().m(this.f11194a);
                arrayList = l;
                if (!StringUtils.a((CharSequence) m)) {
                    arrayList = l;
                    if (l == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(m);
                }
            }
            return CollectionUtils.a(arrayList) ? getDataFromPhone() : new ContactBirthdayData(birthdayNameForSocialId, arrayList, new JSONSocialNetworkID(this.f11194a, true), null);
        } else if (StringUtils.b((CharSequence) this.f11195b)) {
            return getDataFromPhone();
        } else {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String[], java.lang.String[][]] */
    @Override // com.callapp.contacts.activity.fragments.BackgroundWorkerFragment
    public final /* synthetic */ void a(ContactBirthdayData contactBirthdayData) {
        ContactBirthdayData contactBirthdayData2 = contactBirthdayData;
        FragmentActivity activity = getActivity();
        if (activity instanceof PostBirthdayActivity) {
            final PostBirthdayActivity postBirthdayActivity = (PostBirthdayActivity) activity;
            postBirthdayActivity.f11200d = true;
            if (postBirthdayActivity.f11199c) {
                return;
            }
            if (contactBirthdayData2 == null) {
                FeedbackManager.get().a(Activities.getString(2131886830), (Integer) 17);
                AnalyticsManager.get().a(Constants.BIRTHDAY, "Pubish Results data null");
                postBirthdayActivity.finish();
                return;
            }
            postBirthdayActivity.e = (ViewPager) postBirthdayActivity.findViewById(2131363474);
            postBirthdayActivity.f = (CirclePaginationContainer) postBirthdayActivity.findViewById(2131364521);
            postBirthdayActivity.h = (ImageView) postBirthdayActivity.findViewById(2131362935);
            postBirthdayActivity.g = (EditText) postBirthdayActivity.findViewById(2131362094);
            postBirthdayActivity.f11197a = contactBirthdayData2;
            ArrayList<String> displayPhotoUrls = postBirthdayActivity.f11197a.getDisplayPhotoUrls();
            postBirthdayActivity.f11198b = displayPhotoUrls == null || displayPhotoUrls.isEmpty();
            int size = postBirthdayActivity.f11198b ? 0 : displayPhotoUrls.size();
            if (postBirthdayActivity.f11198b) {
                ImageUtils.a(postBirthdayActivity.h, 2131230859, (ColorFilter) null);
            } else {
                ImageUtils.a(postBirthdayActivity.h, 2131230852, (ColorFilter) null);
                postBirthdayActivity.h.setTag(2131230852);
                postBirthdayActivity.e.setAdapter(new PostBirthdayActivity.ImagePagerAdapter(postBirthdayActivity.getSupportFragmentManager(), (String[]) displayPhotoUrls.toArray(new String[size])));
                postBirthdayActivity.e.addOnPageChangeListener(new ViewPager.h() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.2
                    @Override // androidx.viewpager.widget.ViewPager.h, androidx.viewpager.widget.ViewPager.e
                    public void onPageSelected(int i) {
                        postBirthdayActivity.f.setCheckedPosition(i);
                    }
                });
            }
            postBirthdayActivity.findViewById(2131362611).setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
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
                public final void a(View view) {
                    for (View view2 : arrayList) {
                        view2.setVisibility(4);
                    }
                    int indexOf = arrayList2.indexOf(view);
                    ((View) arrayList.get(indexOf)).setVisibility(0);
                    ImageUtils.a(postBirthdayActivity.h, PostBirthdayActivity.j[indexOf], (ColorFilter) null);
                    postBirthdayActivity.h.setTag(Integer.valueOf(PostBirthdayActivity.j[indexOf]));
                }
            };
            if (!postBirthdayActivity.f11198b) {
                ((View) arrayList.get(0)).setVisibility(0);
                for (View view : arrayList) {
                    view.setBackgroundColor(ThemeUtils.getColor(2131099784));
                }
                for (View view2 : arrayList2) {
                    view2.setOnClickListener(clickListener);
                }
            } else {
                for (View view3 : arrayList2) {
                    ImageUtils.a((ImageView) view3);
                }
            }
            postBirthdayActivity.setupPaginationContainer(size);
            postBirthdayActivity.findViewById(2131363832).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.5
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view4) {
                    AnalyticsManager.get().a(Constants.BIRTHDAY, "Share birthday card");
                    if (!HttpUtils.a()) {
                        FeedbackManager.a(postBirthdayActivity);
                        return;
                    }
                    final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
                    simpleProgressDialog.setMessage(Activities.getString(2131887415));
                    PopupManager.get().a(postBirthdayActivity, simpleProgressDialog);
                    new Task() { // from class: com.callapp.contacts.activity.birthday.PostBirthdayActivity.5.1
                        {
                            AnonymousClass5.this = this;
                        }

                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            String str;
                            StringBuilder sb = new StringBuilder(postBirthdayActivity.g.getText().toString().trim());
                            String string = Activities.getString(2131886323);
                            if (StringUtils.a(sb)) {
                                sb.append(string);
                            }
                            File a2 = ImageUtils.a(postBirthdayActivity.b(), (String) null, (String) null);
                            if (a2 != null) {
                                Uri a3 = IoUtils.a(postBirthdayActivity, a2);
                                Intent intent = new Intent("android.intent.action.SEND");
                                intent.putExtra("android.intent.extra.SUBJECT", string);
                                intent.putExtra("android.intent.extra.TITLE", string);
                                if (StringUtils.a((CharSequence) postBirthdayActivity.f11197a.getDisplayName())) {
                                    str = "";
                                } else {
                                    str = postBirthdayActivity.f11197a.getDisplayName() + org.apache.commons.lang3.StringUtils.SPACE;
                                }
                                sb.append(org.apache.commons.lang3.StringUtils.SPACE);
                                sb.append(str);
                                sb.append(org.apache.commons.lang3.StringUtils.LF);
                                sb.append(Activities.getString(2131886180));
                                sb.append(org.apache.commons.lang3.StringUtils.SPACE);
                                sb.append(Activities.a(2131886949, HttpUtils.getCallAppDomain()));
                                intent.putExtra("android.intent.extra.TEXT", sb.toString());
                                intent.setType("image/jpeg");
                                intent.putExtra("android.intent.extra.STREAM", a3);
                                Activities.a(postBirthdayActivity, Intent.createChooser(intent, Activities.getString(2131887657)));
                            } else {
                                FeedbackManager.get().a(Activities.getString(2131888108));
                            }
                            SimpleProgressDialog.a(simpleProgressDialog);
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
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100108), PorterDuff.Mode.SRC_IN));
            imageView.setOnClickListener(new PostBirthdayActivity.AnonymousClass3(stringArray, new String[]{stringArray2, stringArray3, stringArray4, stringArray5}));
            ((ScrollView) postBirthdayActivity.findViewById(2131362096)).fullScroll(130);
            postBirthdayActivity.g.setFocusable(true);
            postBirthdayActivity.g.setFocusableInTouchMode(true);
            postBirthdayActivity.g.setHint(Activities.getString(2131886323));
            postBirthdayActivity.g.setTextColor(ThemeUtils.getColor(2131100140));
            postBirthdayActivity.g.setHintTextColor(ThemeUtils.getColor(2131099930));
            if (StringUtils.b((CharSequence) postBirthdayActivity.f11197a.getDisplayName())) {
                TextView textView = (TextView) postBirthdayActivity.findViewById(2131362095);
                textView.setText(String.format("%s, ", StringUtils.j(postBirthdayActivity.f11197a.getDisplayName().split(org.apache.commons.lang3.StringUtils.SPACE)[0])));
                textView.setTextColor(ThemeUtils.getColor(2131100140));
                textView.setVisibility(0);
            }
        }
    }
}
