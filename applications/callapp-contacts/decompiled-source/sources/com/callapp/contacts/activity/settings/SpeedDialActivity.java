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

    /* renamed from: a  reason: collision with root package name */
    private List<SpeedDialData> f13756a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13757b = ThemeUtils.getColor(2131100108);

    /* renamed from: c  reason: collision with root package name */
    private final int f13758c = ThemeUtils.getColor(2131099891);

    /* renamed from: d  reason: collision with root package name */
    private final int f13759d = ThemeUtils.getColor(2131100140);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter.class */
    final class SpeedDialAdapter extends ArrayAdapter<SpeedDialData> {

        /* renamed from: a  reason: collision with root package name */
        final LayoutInflater f13763a;

        /* renamed from: b  reason: collision with root package name */
        final int f13764b = ThemeUtils.getColor(2131099784);

        /* renamed from: d  reason: collision with root package name */
        private final String f13766d = Activities.getString(2131887746);

        /* renamed from: com.callapp.contacts.activity.settings.SpeedDialActivity$SpeedDialAdapter$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1.class */
        class AnonymousClass1 extends Task {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SpeedDialViewHolder f13767a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ SpeedDialData f13768b;

            AnonymousClass1(SpeedDialViewHolder speedDialViewHolder, SpeedDialData speedDialData) {
                this.f13767a = speedDialViewHolder;
                this.f13768b = speedDialData;
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ContactLoader addDeviceIdAndPhotoLoaders = new ContactLoader().addFields(ContactField.deviceId, ContactField.photoUrl).addDeviceIdAndPhotoLoaders();
                addDeviceIdAndPhotoLoaders.setListener(new ContactDataChangeListener() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.1.1
                    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                    public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
                        final String thumbnailUrl = contactData.getThumbnailUrl();
                        if (StringUtils.b((CharSequence) thumbnailUrl)) {
                            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ProfilePictureView profilePictureView = AnonymousClass1.this.f13767a.f13784d;
                                    GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(thumbnailUrl).a(contactData.getPhotoDataSource());
                                    a2.g = contactData.getPhotoBGColor();
                                    a2.l = true;
                                    profilePictureView.a(a2);
                                }
                            });
                        }
                    }
                }, ContactFieldEnumSets.PHOTO_FIELDS);
                addDeviceIdAndPhotoLoaders.load(this.f13768b.f13780c);
            }
        }

        SpeedDialAdapter(Context context, int i, List<SpeedDialData> list) {
            super(context, i, list);
            this.f13763a = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(final int i, View view, ViewGroup viewGroup) {
            SpeedDialViewHolder speedDialViewHolder;
            final SpeedDialData item = getItem(i);
            if (view == null) {
                view = this.f13763a.inflate(2131558781, viewGroup, false);
                speedDialViewHolder = new SpeedDialViewHolder(view);
                view.setTag(speedDialViewHolder);
            } else {
                speedDialViewHolder = (SpeedDialViewHolder) view.getTag();
            }
            if (speedDialViewHolder.f13783c != null) {
                speedDialViewHolder.f13783c.cancel();
            }
            if (item != null) {
                speedDialViewHolder.f13782b.setText(String.valueOf(item.f13778a));
                speedDialViewHolder.f13784d.setText(StringUtils.r(item.getName()));
                if (StringUtils.a((CharSequence) item.f13780c)) {
                    ProfilePictureView profilePictureView = speedDialViewHolder.f13784d;
                    GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(2131231417).a(this.f13764b, PorterDuff.Mode.SRC_IN);
                    a2.l = true;
                    profilePictureView.a(a2);
                    speedDialViewHolder.f13784d.setBackgroundColor(SpeedDialActivity.this.f13758c);
                    speedDialViewHolder.e.setText(this.f13766d);
                    speedDialViewHolder.e.setTextColor(this.f13764b);
                    speedDialViewHolder.f.setVisibility(8);
                    speedDialViewHolder.g.setVisibility(8);
                } else {
                    speedDialViewHolder.f13783c = new AnonymousClass1(speedDialViewHolder, item).execute();
                    speedDialViewHolder.e.setText(StringUtils.j(item.f13779b));
                    speedDialViewHolder.e.setTextColor(SpeedDialActivity.this.f13759d);
                    speedDialViewHolder.f.setText(item.f13780c);
                    speedDialViewHolder.f.setVisibility(0);
                    speedDialViewHolder.g.setVisibility(0);
                }
            }
            speedDialViewHolder.g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.a(view2, 1);
                    SpeedDialData speedDialData = (SpeedDialData) SpeedDialActivity.this.f13756a.get(i);
                    if (speedDialData != null) {
                        speedDialData.setName("");
                        speedDialData.setPhoneNumber("");
                        SpeedDialAdapter.this.notifyDataSetChanged();
                    }
                }
            });
            speedDialViewHolder.f13781a.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.a(view2, 1);
                    Activities.a(view2.getContext(), ChooseSingleNumberFromContactsActivity.class, new ActivityResult() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.SpeedDialAdapter.3.1
                        @Override // com.callapp.contacts.manager.popup.ActivityResult
                        public void onActivityResult(Activity activity, int i2, int i3, Intent intent) {
                            if (i3 == -1 && item != null) {
                                int digit = item.getDigit();
                                Bundle extras = intent.getExtras();
                                Pair pair = new Pair(extras.getString(Constants.EXTRA_PHONE_NUMBER), extras.getString(ContactDetailsActivity.EXTRA_FULL_NAME));
                                if (!StringUtils.b((CharSequence) pair.first) || !StringUtils.b((CharSequence) pair.second)) {
                                    FeedbackManager.get().a(Activities.getString(2131887745), (Integer) null);
                                    return;
                                }
                                SpeedDialData speedDialData = new SpeedDialData(digit, (String) pair.second, (String) pair.first);
                                SpeedDialActivity.this.f13756a.set(SpeedDialActivity.this.f13756a.indexOf(speedDialData), speedDialData);
                                SpeedDialAdapter.this.notifyDataSetChanged();
                            }
                        }
                    });
                }
            });
            return view;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData.class */
    public static final class SpeedDialData {

        /* renamed from: a  reason: collision with root package name */
        private final int f13778a;

        /* renamed from: b  reason: collision with root package name */
        private String f13779b;

        /* renamed from: c  reason: collision with root package name */
        private String f13780c;

        public SpeedDialData(int i, String str, String str2) {
            this.f13778a = i;
            this.f13779b = str;
            this.f13780c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && (obj instanceof SpeedDialData) && this.f13778a == ((SpeedDialData) obj).f13778a;
        }

        public final int getDigit() {
            return this.f13778a;
        }

        public final String getName() {
            return this.f13779b;
        }

        public final String getPhoneNumber() {
            return this.f13780c;
        }

        public final int hashCode() {
            return this.f13778a + 31;
        }

        public final void setName(String str) {
            this.f13779b = str;
        }

        public final void setPhoneNumber(String str) {
            this.f13780c = str;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder.class */
    class SpeedDialViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f13781a;

        /* renamed from: b  reason: collision with root package name */
        TextView f13782b;

        /* renamed from: c  reason: collision with root package name */
        Task f13783c;

        /* renamed from: d  reason: collision with root package name */
        ProfilePictureView f13784d;
        TextView e;
        TextView f;
        ImageView g;

        SpeedDialViewHolder(View view) {
            this.f13781a = view.findViewById(2131363123);
            this.f13782b = (TextView) view.findViewById(2131362596);
            TextView textView = (TextView) view.findViewById(2131363348);
            this.e = textView;
            textView.setTextColor(SpeedDialActivity.this.f13759d);
            TextView textView2 = (TextView) view.findViewById(2131363400);
            this.f = textView2;
            textView2.setTextColor(SpeedDialActivity.this.f13757b);
            ImageView imageView = (ImageView) view.findViewById(2131362547);
            this.g = imageView;
            ImageUtils.a(imageView, 2131231632, new PorterDuffColorFilter(SpeedDialActivity.this.f13757b, PorterDuff.Mode.SRC_IN));
            this.f13784d = (ProfilePictureView) view.findViewById(2131363565);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0084 -> B:14:0x007a). Please submit an issue!!! */
    public static List<SpeedDialData> a(String[] strArr) {
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
                if (StringUtils.b((CharSequence) strArr[i4])) {
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

    public static void a(List<SpeedDialData> list) {
        if (list != null) {
            String[] strArr = new String[294];
            for (int i = 0; i < 98; i++) {
                SpeedDialData speedDialData = list.get(i);
                int i2 = i * 3;
                strArr[i2] = speedDialData.f13780c;
                strArr[i2 + 1] = speedDialData.f13779b;
                strArr[i2 + 2] = String.valueOf(speedDialData.f13778a);
            }
            Prefs.aE.set(strArr);
        }
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
        getSupportActionBar().a(true);
        new Task() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                String[] strArr = Prefs.aE.get();
                SpeedDialActivity.this.f13756a = SpeedDialActivity.a(strArr);
                SpeedDialActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.settings.SpeedDialActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SpeedDialActivity.this.getBaseListFunctions().setListAdapter(new SpeedDialAdapter(SpeedDialActivity.this, 2131363500, SpeedDialActivity.this.f13756a));
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
                SpeedDialActivity.a(SpeedDialActivity.this.f13756a);
            }
        }.execute();
        super.onPause();
    }
}
