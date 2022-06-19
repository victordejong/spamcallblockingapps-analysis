package com.callapp.contacts.activity.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseListActivity;
import com.callapp.contacts.activity.chooseContact.ChooseSingleNumberFromContactsActivity;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SpeedDialActivity.class */
public class SpeedDialActivity extends BaseListActivity {

    /* renamed from: a */
    private List<SpeedDialData> f24285a;

    /* renamed from: b */
    private final int f24286b = ThemeUtils.getColor(2131100108);

    /* renamed from: c */
    private final int f24287c = ThemeUtils.getColor(2131099891);

    /* renamed from: d */
    private final int f24288d = ThemeUtils.getColor(2131100140);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter.class */
    public final class SpeedDialAdapter extends ArrayAdapter<SpeedDialData> {

        /* renamed from: a */
        final LayoutInflater f24292a;

        /* renamed from: b */
        final int f24293b = ThemeUtils.getColor(2131099784);

        /* renamed from: d */
        private final String f24295d = Activities.getString(2131887746);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.settings.SpeedDialActivity$SpeedDialAdapter$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1.class */
        public class C70151 extends Task {

            /* renamed from: a */
            final /* synthetic */ SpeedDialViewHolder f24296a;

            /* renamed from: b */
            final /* synthetic */ SpeedDialData f24297b;

            C70151(SpeedDialViewHolder speedDialViewHolder, SpeedDialData speedDialData) {
                SpeedDialAdapter.this = r4;
                this.f24296a = speedDialViewHolder;
                this.f24297b = speedDialData;
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ContactLoader addDeviceIdAndPhotoLoaders = new ContactLoader().addFields(ContactField.deviceId, ContactField.photoUrl).addDeviceIdAndPhotoLoaders();
                addDeviceIdAndPhotoLoaders.setListener(new ContactDataChangeListener() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.1.1
                    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                    public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
                        final String thumbnailUrl = contactData.getThumbnailUrl();
                        if (StringUtils.m26045b((CharSequence) thumbnailUrl)) {
                            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ProfilePictureView profilePictureView = C70151.this.f24296a.f24313d;
                                    GlideUtils.GlideRequestBuilder m27023a = new GlideUtils.GlideRequestBuilder(thumbnailUrl).m27023a(contactData.getPhotoDataSource());
                                    m27023a.f28241g = contactData.getPhotoBGColor();
                                    m27023a.f28246l = true;
                                    profilePictureView.m26684a(m27023a);
                                }
                            });
                        }
                    }
                }, ContactFieldEnumSets.PHOTO_FIELDS);
                addDeviceIdAndPhotoLoaders.load(this.f24297b.f24309c);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        SpeedDialAdapter(Context context, int i, List<SpeedDialData> list) {
            super(context, i, list);
            SpeedDialActivity.this = r6;
            this.f24292a = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(final int i, View view, ViewGroup viewGroup) {
            SpeedDialViewHolder speedDialViewHolder;
            final SpeedDialData item = getItem(i);
            if (view == null) {
                view = this.f24292a.inflate(2131558781, viewGroup, false);
                speedDialViewHolder = new SpeedDialViewHolder(view);
                view.setTag(speedDialViewHolder);
            } else {
                speedDialViewHolder = (SpeedDialViewHolder) view.getTag();
            }
            if (speedDialViewHolder.f24312c != null) {
                speedDialViewHolder.f24312c.cancel();
            }
            if (item != null) {
                speedDialViewHolder.f24311b.setText(String.valueOf(item.f24307a));
                speedDialViewHolder.f24313d.setText(StringUtils.m26010r(item.getName()));
                if (StringUtils.m26059a((CharSequence) item.f24309c)) {
                    ProfilePictureView profilePictureView = speedDialViewHolder.f24313d;
                    GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder(2131231417).m27025a(this.f24293b, PorterDuff.Mode.SRC_IN);
                    m27025a.f28246l = true;
                    profilePictureView.m26684a(m27025a);
                    speedDialViewHolder.f24313d.setBackgroundColor(SpeedDialActivity.this.f24287c);
                    speedDialViewHolder.f24314e.setText(this.f24295d);
                    speedDialViewHolder.f24314e.setTextColor(this.f24293b);
                    speedDialViewHolder.f24315f.setVisibility(8);
                    speedDialViewHolder.f24316g.setVisibility(8);
                } else {
                    speedDialViewHolder.f24312c = new C70151(speedDialViewHolder, item).execute();
                    speedDialViewHolder.f24314e.setText(StringUtils.m26020j(item.f24308b));
                    speedDialViewHolder.f24314e.setTextColor(SpeedDialActivity.this.f24288d);
                    speedDialViewHolder.f24315f.setText(item.f24309c);
                    speedDialViewHolder.f24315f.setVisibility(0);
                    speedDialViewHolder.f24316g.setVisibility(0);
                }
            }
            speedDialViewHolder.f24316g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.m27630a(view2, 1);
                    SpeedDialData speedDialData = (SpeedDialData) SpeedDialActivity.this.f24285a.get(i);
                    if (speedDialData != null) {
                        speedDialData.setName("");
                        speedDialData.setPhoneNumber("");
                        SpeedDialAdapter.this.notifyDataSetChanged();
                    }
                }
            });
            speedDialViewHolder.f24310a.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.m27630a(view2, 1);
                    Activities.m27680a(view2.getContext(), ChooseSingleNumberFromContactsActivity.class, new ActivityResult() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.3.1
                        @Override // com.callapp.contacts.manager.popup.ActivityResult
                        public void onActivityResult(Activity activity, int i2, int i3, Intent intent) {
                            if (i3 != -1 || item == null) {
                                return;
                            }
                            int digit = item.getDigit();
                            Bundle extras = intent.getExtras();
                            Pair pair = new Pair(extras.getString(Constants.EXTRA_PHONE_NUMBER), extras.getString(ContactDetailsActivity.EXTRA_FULL_NAME));
                            if (!StringUtils.m26045b((CharSequence) pair.first) || !StringUtils.m26045b((CharSequence) pair.second)) {
                                FeedbackManager.get().m28669a(Activities.getString(2131887745), (Integer) null);
                                return;
                            }
                            SpeedDialData speedDialData = new SpeedDialData(digit, (String) pair.second, (String) pair.first);
                            SpeedDialActivity.this.f24285a.set(SpeedDialActivity.this.f24285a.indexOf(speedDialData), speedDialData);
                            SpeedDialAdapter.this.notifyDataSetChanged();
                        }
                    });
                }
            });
            return view;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData.class */
    public static final class SpeedDialData {

        /* renamed from: a */
        private final int f24307a;

        /* renamed from: b */
        private String f24308b;

        /* renamed from: c */
        private String f24309c;

        public SpeedDialData(int i, String str, String str2) {
            this.f24307a = i;
            this.f24308b = str;
            this.f24309c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && (obj instanceof SpeedDialData) && this.f24307a == ((SpeedDialData) obj).f24307a;
        }

        public final int getDigit() {
            return this.f24307a;
        }

        public final String getName() {
            return this.f24308b;
        }

        public final String getPhoneNumber() {
            return this.f24309c;
        }

        public final int hashCode() {
            return this.f24307a + 31;
        }

        public final void setName(String str) {
            this.f24308b = str;
        }

        public final void setPhoneNumber(String str) {
            this.f24309c = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder.class */
    public class SpeedDialViewHolder {

        /* renamed from: a */
        View f24310a;

        /* renamed from: b */
        TextView f24311b;

        /* renamed from: c */
        Task f24312c;

        /* renamed from: d */
        ProfilePictureView f24313d;

        /* renamed from: e */
        TextView f24314e;

        /* renamed from: f */
        TextView f24315f;

        /* renamed from: g */
        ImageView f24316g;

        SpeedDialViewHolder(View view) {
            SpeedDialActivity.this = r8;
            this.f24310a = view.findViewById(2131363123);
            this.f24311b = (TextView) view.findViewById(2131362596);
            TextView textView = (TextView) view.findViewById(2131363348);
            this.f24314e = textView;
            textView.setTextColor(r8.f24288d);
            TextView textView2 = (TextView) view.findViewById(2131363400);
            this.f24315f = textView2;
            textView2.setTextColor(r8.f24286b);
            ImageView imageView = (ImageView) view.findViewById(2131362547);
            this.f24316g = imageView;
            ImageUtils.m27529a(imageView, 2131231632, new PorterDuffColorFilter(r8.f24286b, PorterDuff.Mode.SRC_IN));
            this.f24313d = (ProfilePictureView) view.findViewById(2131363565);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0084 -> B:14:0x007a). Please submit an issue!!! */
    /* renamed from: a */
    public static List<SpeedDialData> m29591a(String[] strArr) {
        ArrayList arrayList;
        if (strArr == null) {
            ArrayList arrayList2 = new ArrayList(98);
            int i = 2;
            while (true) {
                arrayList = arrayList2;
                if (i > 99) {
                    break;
                }
                arrayList2.add(new SpeedDialData(i, "", ""));
                i++;
            }
        } else {
            ArrayList arrayList3 = new ArrayList();
            for (int i2 = 0; i2 < 98; i2++) {
                int i3 = i2 * 3;
                int i4 = i3 + 2;
                if (StringUtils.m26045b((CharSequence) strArr[i4])) {
                    try {
                        arrayList3.add(new SpeedDialData(Integer.parseInt(strArr[i4]), strArr[i3 + 1], strArr[i3]));
                    } catch (NumberFormatException e) {
                    }
                }
            }
            arrayList = arrayList3;
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m29592a(List<SpeedDialData> list) {
        if (list == null) {
            return;
        }
        String[] strArr = new String[294];
        for (int i = 0; i < 98; i++) {
            SpeedDialData speedDialData = list.get(i);
            int i2 = i * 3;
            strArr[i2] = speedDialData.f24309c;
            strArr[i2 + 1] = speedDialData.f24308b;
            strArr[i2 + 2] = String.valueOf(speedDialData.f24307a);
        }
        Prefs.f26228aE.set(strArr);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558469;
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(Activities.getString(2131887744));
        getSupportActionBar().mo46237a(true);
        new Task() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                String[] strArr = Prefs.f26228aE.get();
                SpeedDialActivity.this.f24285a = SpeedDialActivity.m29591a(strArr);
                SpeedDialActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SpeedDialActivity.this.getBaseListFunctions().setListAdapter(new SpeedDialAdapter(SpeedDialActivity.this, 2131363500, SpeedDialActivity.this.f24285a));
                    }
                });
            }
        }.execute();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        new Task() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                SpeedDialActivity.m29592a(SpeedDialActivity.this.f24285a);
            }
        }.execute();
        super.onPause();
    }
}
