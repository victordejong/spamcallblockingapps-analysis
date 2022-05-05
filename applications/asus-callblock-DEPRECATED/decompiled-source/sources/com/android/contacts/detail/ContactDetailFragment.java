package com.android.contacts.detail;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Fragment;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.BaseColumns;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.af;
import com.android.contacts.b;
import com.android.contacts.editor.g;
import com.android.contacts.j;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.model.a.h;
import com.android.contacts.model.a.i;
import com.android.contacts.model.a.k;
import com.android.contacts.model.a.n;
import com.android.contacts.model.a.o;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.a;
import com.android.contacts.model.c;
import com.android.contacts.model.e;
import com.android.contacts.model.f;
import com.android.contacts.q;
import com.android.contacts.quickcontact.j;
import com.android.contacts.t;
import com.android.contacts.util.AccountsListAdapter;
import com.android.contacts.util.AsusBitmapMerge;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.ClipboardUtils;
import com.android.contacts.util.Constants;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DataStatus;
import com.android.contacts.util.DateUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.StructuredPostalUtils;
import com.android.contacts.util.TelecomUtil;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.privatecontacts.a.b;
import com.asus.privatecontacts.a.d;
import com.asus.privatecontacts.provider.a;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.R;
import com.google.a.b.ae;
import com.google.a.b.m;
import com.google.a.b.p;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment.class */
public class ContactDetailFragment extends Fragment implements AdapterView.OnItemClickListener, ContactDetailActivity.FragmentKeyListener, g.a {
    public static final String AUTHORITY = "blocklist";
    public static final Uri BLOCKLIST_CONTENT_URI = Uri.parse("content://blocklist/blocklist");
    private static String EXTRA_IS_PRIVATE = "extra_is_private";
    private static final String ID_FOR_SIPCALL = "sip_call_id";
    private static final String KEY_CONTACT_URI = "contactUri";
    private static final String KEY_LIST_STATE = "liststate";
    private static final String TAG = "ContactDetailFragment";
    private boolean isNeedToUpdatePreferSimIcon;
    private boolean isScrolling;
    private ViewAdapter mAdapter;
    private AlertDialog mAlertDialog;
    private ArrayList<ViewEntry> mAllEntries;
    private HashMap<String, Boolean> mAlreadyExecuteSimIconTaskHashTable;
    private ArrayList<DetailViewEntry> mBirthdayEvents;
    private c mContactData;
    private Context mContext;
    private ArrayList<DetailViewEntry> mEmailEntries;
    private View mEmptyView;
    private m<e> mEntities;
    private ArrayList<DetailViewEntry> mEventEntries;
    private View.OnDragListener mForwardDragToListView;
    private View.OnTouchListener mForwardTouchToListView;
    private ArrayList<DetailViewEntry> mGroupEntries;
    private boolean mHasPhone;
    private boolean mHasSip;
    private boolean mHasSms;
    private ArrayList<DetailViewEntry> mImEntries;
    private ArrayList<DetailViewEntry> mInactiveImEntries;
    private LayoutInflater mInflater;
    private boolean mIsPrivateContact;
    private final boolean mIsRCSVerizon;
    private boolean mIsUniqueEmail;
    private boolean mIsUniqueNumber;
    private Parcelable mListState;
    private ListView mListView;
    private Listener mListener;
    private Uri mLookupUri;
    private int mMinBirthday;
    private ArrayList<DetailViewEntry> mNicknameEntries;
    private ArrayList<DetailViewEntry> mNoteEntries;
    private final Map<a, List<DetailViewEntry>> mOtherEntriesMap;
    private ArrayList<DetailViewEntry> mPhoneEntries;
    private final ContactDetailPhotoSetter mPhotoSetter;
    private View mPhotoTouchOverlay;
    private ListPopupWindow mPopup;
    private InvitableAccountTypesAdapter mPopupAdapter;
    private AdapterView.OnItemClickListener mPopupItemListener;
    private ArrayList<DetailViewEntry> mPostalEntries;
    private final QuickFix[] mPotentialQuickFixes;
    private ArrayList<DetailViewEntry> mPreferSimEntries;
    private HashMap<String, Integer> mPreferSimHashTable;
    private Uri mPrimaryPhoneUri;
    private b mPrivateContact;
    private QuickFix mQuickFix;
    private Button mQuickFixButton;
    private ArrayList<DetailViewEntry> mRelationEntries;
    private boolean mShowStaticPhoto;
    private ArrayList<DetailViewEntry> mSipEntries;
    private ArrayList<DetailViewEntry> mSmsEntries;
    private ViewGroup mStaticPhotoContainer;
    private LinearLayout mTitleAccountIcons;
    private AbsListView.OnScrollListener mVerticalScrollListener;
    private View mView;
    private ViewEntryDimensions mViewEntryDimensions;
    private ArrayList<DetailViewEntry> mWebsiteEntries;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache.class */
    public static class AddConnectionViewCache {
        public final ImageView icon;
        public final TextView name;
        public final View primaryActionView;

        public AddConnectionViewCache(View view) {
            this.name = (TextView) view.findViewById(2131296296);
            this.icon = (ImageView) view.findViewById(2131296295);
            this.primaryActionView = view.findViewById(2131297184);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry.class */
    public static class AddConnectionViewEntry extends ViewEntry {
        private final Drawable mIcon;
        private final CharSequence mLabel;
        private final View.OnClickListener mOnClickListener;

        private AddConnectionViewEntry(Context context, View.OnClickListener onClickListener) {
            super(4);
            this.mIcon = context.getResources().getDrawable(2131165873);
            this.mLabel = context.getString(2131755031);
            this.mOnClickListener = onClickListener;
            this.isEnabled = true;
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.ViewEntry
        public void click(View view, Listener listener) {
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(view);
            }
        }

        public Drawable getIcon() {
            return this.mIcon;
        }

        public CharSequence getLabel() {
            return this.mLabel;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix.class */
    private class AddToMyContactsQuickFix extends QuickFix {
        private AddToMyContactsQuickFix() {
            super();
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.QuickFix
        public void execute() {
            long defaultGroupId = ContactDetailFragment.this.getDefaultGroupId(ContactDetailFragment.this.mContactData.x);
            if (defaultGroupId != -1) {
                RawContactDeltaList a2 = ContactDetailFragment.this.mContactData.a();
                RawContactDelta rawContactDelta = a2.get(0);
                RawContactDelta.ValuesDelta b2 = f.b(rawContactDelta, rawContactDelta.a(com.android.contacts.model.a.a(ContactDetailFragment.this.mContext)).a("vnd.android.cursor.item/group_membership"));
                if (b2 != null) {
                    b2.a(defaultGroupId);
                }
                Intent a3 = ContactSaveService.a((Context) ContactDetailFragment.this.getActivity(), a2, BuildConfig.FLAVOR, false, (Class<? extends Activity>) ContactDetailFragment.this.getActivity().getClass(), "android.intent.action.VIEW", (Bundle) null);
                a3.putExtra("default_group", defaultGroupId);
                ContactDetailFragment.this.getActivity().startService(a3);
            }
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.QuickFix
        public String getTitle() {
            return ContactDetailFragment.this.isAdded() ? ContactDetailFragment.this.getString(2131755044) : BuildConfig.FLAVOR;
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.QuickFix
        public boolean isApplicable() {
            boolean z;
            boolean z2;
            if (ContactDetailFragment.this.mContactData == null || ContactDetailFragment.this.mContactData.e()) {
                z = false;
            } else if (ContactDetailFragment.this.mContactData.B) {
                z = false;
            } else if (ContactDetailFragment.this.mContactData.o.size() != 1) {
                z = false;
            } else {
                m<t> mVar = ContactDetailFragment.this.mContactData.x;
                if (mVar == null) {
                    z = false;
                } else {
                    long defaultGroupId = ContactDetailFragment.this.getDefaultGroupId(mVar);
                    if (defaultGroupId == -1) {
                        z = false;
                    } else {
                        e eVar = ContactDetailFragment.this.mContactData.o.get(0);
                        a g = eVar.g();
                        if (g == null || !g.d()) {
                            z = false;
                        } else {
                            Iterator it = p.a(eVar.h(), com.android.contacts.model.a.e.class).iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (Long.valueOf(((com.android.contacts.model.a.e) ((com.android.contacts.model.a.a) it.next())).k()).longValue() == defaultGroupId) {
                                        z2 = true;
                                        break;
                                    }
                                } else {
                                    z2 = false;
                                    break;
                                }
                            }
                            z = !z2;
                        }
                    }
                }
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$CategoryTitleViewCache.class */
    public static class CategoryTitleViewCache {
        public final TextView titleView;

        public CategoryTitleViewCache(View view) {
            this.titleView = (TextView) view.findViewById(R.id.title);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$CategoryTitleViewEntry.class */
    public static class CategoryTitleViewEntry extends ViewEntry {
        private final String mTitle;

        CategoryTitleViewEntry(Context context, int i) {
            super(6);
            this.mTitle = context.getResources().getString(i);
        }

        public String getTitle() {
            return this.mTitle;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$Columns.class */
    public interface Columns extends BaseColumns {
        public static final String CONTACTSID = "contactid";
        public static final String CONTACTSLOOKUP = "contactlookup";
        public static final String DISPLAYNAME = "displayname";
        public static final String ID = "_id";
        public static final String INCONTACTS = "incontacts";
        public static final String NUMBERTYPE = "numbertype";
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$ContextMenuIds.class */
    private interface ContextMenuIds {
        public static final int CLEAR_DEFAULT = 1;
        public static final int CLEAR_PREFER_SIM = 5;
        public static final int COPY_TEXT = 0;
        public static final int SET_DEFAULT = 2;
        public static final int SET_PREFER_SIM1 = 3;
        public static final int SET_PREFER_SIM2 = 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$DetailViewCache.class */
    public static class DetailViewCache {
        public final ImageView actionIcon;
        public final View actionsViewContainer;
        public final TextView data;
        public final ImageView presenceIcon;
        public final View primaryActionView;
        public final View primaryIndicator;
        public final ImageView secondaryActionButton;
        public final View secondaryActionDivider;
        public final View secondaryActionViewContainer;
        public final ImageView snapModeIcon;
        public final View snapViewContainer;
        public final TextView type;
        public ImageView videoCallIcon;
        public View videoViewContainer;
        public final ViewStub videoViewContainerStub;

        public DetailViewCache(View view, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
            this.type = (TextView) view.findViewById(2131297424);
            this.data = (TextView) view.findViewById(2131296630);
            this.primaryIndicator = view.findViewById(2131297186);
            this.presenceIcon = (ImageView) view.findViewById(2131297181);
            this.actionsViewContainer = view.findViewById(2131296288);
            this.actionsViewContainer.setOnClickListener(onClickListener);
            this.primaryActionView = view.findViewById(2131297184);
            this.secondaryActionViewContainer = view.findViewById(2131297263);
            this.secondaryActionViewContainer.setOnClickListener(onClickListener2);
            this.secondaryActionButton = (ImageView) view.findViewById(2131297258);
            this.secondaryActionDivider = view.findViewById(2131297519);
            this.actionIcon = (ImageView) view.findViewById(2131296278);
            this.snapViewContainer = view.findViewById(2131297323);
            this.snapModeIcon = (ImageView) view.findViewById(2131297322);
            this.videoViewContainerStub = (ViewStub) view.findViewById(2131297526);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$DetailViewEntry.class */
    public static class DetailViewEntry extends ViewEntry implements j.a<DetailViewEntry> {
        public String data;
        public Intent intent;
        public String kind;
        public String mimetype;
        public long rawContactId;
        public String typeString;
        public Uri uri;
        public int type = -1;
        public int maxLines = 1;
        public Context context = null;
        public boolean isPrimary = false;
        public int secondaryActionIcon = -1;
        public int secondaryActionDescription = -1;
        public Intent secondaryIntent = null;
        public ArrayList<Long> ids = new ArrayList<>();
        public int collapseCount = 0;
        public int presence = -1;
        public int chatCapability = 0;
        private boolean mIsInSubSection = false;
        public int secondtype = -1;
        public String dbBirthdayData = null;
        public boolean isBirthdayRemind = false;
        public Calendar remindDate = null;
        public int remindDateBefore = 0;
        public int remindHour = 0;
        public int remindMinute = 0;
        public a accountType = null;
        public boolean isSipcall = false;

        DetailViewEntry() {
            super(0);
            this.isEnabled = true;
        }

        public static DetailViewEntry creatFromPrivateContact(Context context, d dVar) {
            a.d next;
            DetailViewEntry detailViewEntry = new DetailViewEntry();
            detailViewEntry.id = dVar.c != null ? dVar.c.f2994a.getAsLong("_id").longValue() : -1L;
            detailViewEntry.context = context;
            detailViewEntry.uri = ContentUris.withAppendedId(a.b.f3062a, detailViewEntry.id);
            detailViewEntry.mimetype = dVar.b();
            com.android.contacts.model.a.b d = dVar.d();
            detailViewEntry.kind = (d.c == -1 || d.c == 0) ? BuildConfig.FLAVOR : dVar.f2995a.getString(d.c);
            detailViewEntry.data = dVar.e();
            String str = dVar.d().l;
            if (str != null && dVar.c.f2994a.containsKey(str)) {
                try {
                    detailViewEntry.type = dVar.c.f2994a.getAsInteger(dVar.d().l).intValue();
                    detailViewEntry.typeString = BuildConfig.FLAVOR;
                    Iterator<a.d> it = dVar.d().n.iterator();
                    do {
                        if (it.hasNext()) {
                            next = it.next();
                        }
                        break;
                    } while (next.f2006a != detailViewEntry.type);
                    if (next.e == null) {
                        detailViewEntry.typeString = context.getString(next.f2007b);
                    } else {
                        Log.d(ContactDetailFragment.TAG, "type.customColumn: " + next.e);
                        ContentValues a2 = dVar.a();
                        if (a2 != null) {
                            detailViewEntry.typeString = a2.getAsString(next.e);
                        } else {
                            detailViewEntry.typeString = context.getResources().getString(2131755759);
                        }
                    }
                    break;
                    break;
                } catch (Exception e) {
                    detailViewEntry.type = -1;
                }
                return detailViewEntry;
            }
            detailViewEntry.typeString = BuildConfig.FLAVOR;
            return detailViewEntry;
        }

        public static DetailViewEntry fromValues(Context context, com.android.contacts.model.a.a aVar, boolean z, long j) {
            a.d next;
            DetailViewEntry detailViewEntry = new DetailViewEntry();
            detailViewEntry.id = aVar.a();
            detailViewEntry.context = context;
            detailViewEntry.uri = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, detailViewEntry.id);
            if (z) {
                detailViewEntry.uri = detailViewEntry.uri.buildUpon().appendQueryParameter("directory", String.valueOf(j)).build();
            }
            detailViewEntry.mimetype = aVar.b();
            detailViewEntry.kind = aVar.j();
            detailViewEntry.data = aVar.h();
            if (aVar.f()) {
                try {
                    detailViewEntry.type = aVar.g();
                    detailViewEntry.typeString = BuildConfig.FLAVOR;
                    Iterator<a.d> it = aVar.e().n.iterator();
                    do {
                        if (it.hasNext()) {
                            next = it.next();
                        }
                        break;
                    } while (next.f2006a != detailViewEntry.type);
                    if (next.e == null) {
                        detailViewEntry.typeString = context.getString(next.f2007b);
                    } else {
                        detailViewEntry.typeString = aVar.f1994a.getAsString(next.e);
                    }
                    break;
                    break;
                } catch (Exception e) {
                    detailViewEntry.type = -1;
                }
                return detailViewEntry;
            }
            detailViewEntry.typeString = BuildConfig.FLAVOR;
            return detailViewEntry;
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.ViewEntry
        public void click(View view, Listener listener) {
            if (listener != null && this.intent != null) {
                listener.onItemClicked(this.intent);
                if (this.isSipcall) {
                    Intent intent = new Intent(this.context, SipCallCalllogService.class);
                    intent.putExtra(ContactDetailFragment.ID_FOR_SIPCALL, this.id);
                    this.context.startService(intent);
                }
            }
        }

        public boolean collapseWith(DetailViewEntry detailViewEntry) {
            boolean z = true;
            if (!shouldCollapseWith(detailViewEntry)) {
                z = false;
            } else {
                if (af.a(this.mimetype, this.type) > af.a(detailViewEntry.mimetype, detailViewEntry.type)) {
                    this.type = detailViewEntry.type;
                    this.kind = detailViewEntry.kind;
                    this.typeString = detailViewEntry.typeString;
                }
                this.maxLines = Math.max(this.maxLines, detailViewEntry.maxLines);
                if (ContactsContract.StatusUpdates.getPresencePrecedence(this.presence) < ContactsContract.StatusUpdates.getPresencePrecedence(detailViewEntry.presence)) {
                    this.presence = detailViewEntry.presence;
                }
                this.isPrimary = detailViewEntry.isPrimary ? true : this.isPrimary;
                this.ids.add(Long.valueOf(detailViewEntry.getId()));
                this.collapseCount++;
            }
            return z;
        }

        public boolean isInSubSection() {
            return this.mIsInSubSection;
        }

        public void setIsInSubSection(boolean z) {
            this.mIsInSubSection = z;
        }

        public void setPresence(int i) {
            this.presence = i;
        }

        public boolean shouldCollapseWith(DetailViewEntry detailViewEntry) {
            return detailViewEntry == null ? false : !q.a(this.mimetype, this.data, detailViewEntry.mimetype, detailViewEntry.data) ? false : (!TextUtils.equals(this.mimetype, detailViewEntry.mimetype) || !q.a(this.intent, detailViewEntry.intent) || !q.a(this.secondaryIntent, detailViewEntry.secondaryIntent)) ? false : !q.a(this.mimetype, this.data, this.type, detailViewEntry.mimetype, detailViewEntry.data, detailViewEntry.type) ? false : !PhoneCapabilityTester.isATTSku() || q.a(this.mimetype, this.data, this.type, this.typeString, detailViewEntry.mimetype, detailViewEntry.data, detailViewEntry.type, detailViewEntry.typeString);
        }

        public String toString() {
            String uri = this.uri != null ? this.uri.toString() : "(null)";
            StringBuilder sb = new StringBuilder();
            sb.append("== DetailViewEntry ==\n");
            sb.append("  type: " + this.type + "\n");
            sb.append("  kind: " + this.kind + "\n");
            sb.append("  typeString: " + this.typeString + "\n");
            sb.append("  data: " + this.data + "\n");
            sb.append("  uri: " + uri + "\n");
            sb.append("  maxLines: " + this.maxLines + "\n");
            sb.append("  mimetype: " + this.mimetype + "\n");
            sb.append("  isPrimary: " + (this.isPrimary ? "true" : "false") + "\n");
            sb.append("  secondaryActionIcon: " + this.secondaryActionIcon + "\n");
            sb.append("  secondaryActionDescription: " + this.secondaryActionDescription + "\n");
            if (this.intent == null) {
                sb.append("  intent: (null)\n");
            } else {
                sb.append("  intent: " + this.intent.toString() + "\n");
            }
            if (this.secondaryIntent == null) {
                sb.append("  secondaryIntent: (null)\n");
            } else {
                sb.append("  secondaryIntent: " + this.secondaryIntent.toString() + "\n");
            }
            sb.append("  ids: " + p.a(this.ids) + "\n");
            sb.append("  collapseCount: " + this.collapseCount + "\n");
            sb.append("  presence: " + this.presence + "\n");
            sb.append("  chatCapability: " + this.chatCapability + "\n");
            sb.append("  mIsInSubsection: " + (this.mIsInSubSection ? "true" : "false") + "\n");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$HeaderViewCache.class */
    public static class HeaderViewCache {
        public final int layoutResourceId;

        public HeaderViewCache(View view, int i) {
            this.layoutResourceId = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$HeaderViewEntry.class */
    public static class HeaderViewEntry extends ViewEntry {
        HeaderViewEntry() {
            super(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter.class */
    public static final class InvitableAccountTypesAdapter extends BaseAdapter {
        private final ArrayList<com.android.contacts.model.account.a> mAccountTypes;
        private final Context mContext;
        private final LayoutInflater mInflater;

        public InvitableAccountTypesAdapter(Context context, c cVar) {
            this.mContext = context;
            this.mInflater = LayoutInflater.from(context);
            m<com.android.contacts.model.account.a> mVar = cVar.r;
            this.mAccountTypes = new ArrayList<>(mVar.size());
            for (int i = 0; i < mVar.size(); i++) {
                this.mAccountTypes.add(mVar.get(i));
            }
            Collections.sort(this.mAccountTypes, new a.b(this.mContext));
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.mAccountTypes.size();
        }

        @Override // android.widget.Adapter
        public final com.android.contacts.model.account.a getItem(int i) {
            return this.mAccountTypes.get(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.mInflater.inflate(2131427331, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(16908308);
            TextView textView2 = (TextView) view.findViewById(16908309);
            ImageView imageView = (ImageView) view.findViewById(16908294);
            com.android.contacts.model.account.a aVar = this.mAccountTypes.get(i);
            CharSequence b2 = aVar.b(this.mContext);
            CharSequence a2 = aVar.a(this.mContext);
            if (TextUtils.isEmpty(b2)) {
                textView.setText(a2);
                textView2.setVisibility(8);
            } else {
                textView.setText(b2);
                textView2.setVisibility(0);
                textView2.setText(a2);
            }
            imageView.setImageDrawable(aVar.d(this.mContext));
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$KindTitleViewCache.class */
    public static class KindTitleViewCache {
        public final TextView titleView;

        public KindTitleViewCache(View view) {
            this.titleView = (TextView) view.findViewById(R.id.title);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry.class */
    public static class KindTitleViewEntry extends ViewEntry {
        private final String mTitle;

        KindTitleViewEntry(String str) {
            super(2);
            this.mTitle = str;
        }

        public String getTitle() {
            return this.mTitle;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$Listener.class */
    public interface Listener {
        void onCreateRawContactRequested(String str, ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet);

        void onCreateRawContactRequested(ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet);

        void onItemClicked(Intent intent);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix.class */
    private class MakeLocalCopyQuickFix extends QuickFix {
        private MakeLocalCopyQuickFix() {
            super();
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.QuickFix
        public void execute() {
            if (ContactDetailFragment.this.mListener != null) {
                switch (ContactDetailFragment.this.mContactData.w) {
                    case 1:
                        List<AccountWithDataSet> a2 = com.android.contacts.model.a.a(ContactDetailFragment.this.mContext).a(true);
                        if (a2.isEmpty()) {
                            ContactDetailFragment.this.createCopy(null);
                            return;
                        } else if (a2.size() == 1) {
                            ContactDetailFragment.this.createCopy(a2.get(0));
                            return;
                        } else {
                            g.a(ContactDetailFragment.this.getFragmentManager(), ContactDetailFragment.this, 2131755570, AccountsListAdapter.AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM, null);
                            return;
                        }
                    case 2:
                        List<AccountWithDataSet> a3 = com.android.contacts.model.a.a(ContactDetailFragment.this.mContext).a(true);
                        if (a3.isEmpty()) {
                            ContactDetailFragment.this.createCopy(null);
                            return;
                        } else if (a3.size() == 1) {
                            ContactDetailFragment.this.createCopy(a3.get(0));
                            return;
                        } else {
                            g.a(ContactDetailFragment.this.getFragmentManager(), ContactDetailFragment.this, 2131755570, AccountsListAdapter.AccountListFilter.ACCOUNTS_CONTACT_WRITABLE, null);
                            return;
                        }
                    default:
                        return;
                }
            }
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.QuickFix
        public String getTitle() {
            return ContactDetailFragment.this.getString(2131755817);
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.QuickFix
        public boolean isApplicable() {
            boolean z = false;
            if (ContactDetailFragment.this.mContactData != null) {
                if (!ContactDetailFragment.this.mContactData.e()) {
                    z = false;
                } else {
                    z = false;
                    if (ContactDetailFragment.this.mContactData.w != 0) {
                        z = true;
                    }
                }
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache.class */
    public static class NetworkTitleViewCache {
        public final ImageView icon;
        public final TextView name;

        public NetworkTitleViewCache(View view) {
            this.name = (TextView) view.findViewById(2131297108);
            this.icon = (ImageView) view.findViewById(2131297107);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry.class */
    public static class NetworkTitleViewEntry extends ViewEntry {
        private final Drawable mIcon;
        private final CharSequence mLabel;

        public NetworkTitleViewEntry(Context context, com.android.contacts.model.account.a aVar) {
            super(3);
            this.mIcon = aVar.d(context);
            this.mLabel = aVar.a(context);
            this.isEnabled = false;
        }

        public Drawable getIcon() {
            return this.mIcon;
        }

        public CharSequence getLabel() {
            return this.mLabel;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$PreferSimViewEntry.class */
    public static class PreferSimViewEntry extends DetailViewEntry {
        public long contactId;

        PreferSimViewEntry() {
        }

        public static PreferSimViewEntry fromValues(Context context, c cVar, long j) {
            PreferSimViewEntry preferSimViewEntry = new PreferSimViewEntry();
            ArrayList arrayList = new ArrayList();
            Intent intent = new Intent("intent.show.prefersim.dialog");
            preferSimViewEntry.mimetype = "com.asus.prefersim/prefersim";
            preferSimViewEntry.typeString = context.getResources().getString(2131755732);
            preferSimViewEntry.contactId = j;
            ContactDetailDisplayUtils.getContactPhoneNumberList(cVar, arrayList);
            intent.putExtra("EXTRA_PREFER_SIM_CONTACT_ID", j);
            intent.putExtra("EXTRA_PREFER_SIM_NUMBER_LIST", arrayList);
            preferSimViewEntry.intent = intent;
            return preferSimViewEntry;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$QuickFix.class */
    public static abstract class QuickFix {
        private QuickFix() {
        }

        public abstract void execute();

        public abstract String getTitle();

        public abstract boolean isApplicable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry.class */
    public static class SeparatorViewEntry extends ViewEntry {
        private boolean mIsInSubSection = false;

        SeparatorViewEntry() {
            super(5);
        }

        public boolean isInSubSection() {
            return this.mIsInSubSection;
        }

        public void setIsInSubSection(boolean z) {
            this.mIsInSubSection = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$SetSimIconTask.class */
    public class SetSimIconTask extends AsyncTask<String, Void, Integer> {
        private SetSimIconTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Integer doInBackground(String... strArr) {
            int a2 = com.asus.prefersim.c.a(ContactDetailFragment.this.mContext, strArr[0]);
            ContactDetailFragment.this.mPreferSimHashTable.put(strArr[0], Integer.valueOf(a2));
            return Integer.valueOf(a2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            if (ContactDetailFragment.this.isScrolling) {
                ContactDetailFragment.this.isNeedToUpdatePreferSimIcon = true;
                return;
            }
            ContactDetailFragment.this.mAdapter.notifyDataSetChanged();
            ContactDetailFragment.this.isNeedToUpdatePreferSimIcon = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$VideoSwitchViewCache.class */
    public static class VideoSwitchViewCache {
        public final Switch switchView;

        public VideoSwitchViewCache(View view) {
            this.switchView = (Switch) view.findViewById(2131297528);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$VideoSwitchViewEntry.class */
    public static class VideoSwitchViewEntry extends ViewEntry {
        private final String mSwitch;

        VideoSwitchViewEntry(Context context, int i) {
            super(7);
            this.mSwitch = context.getResources().getString(i);
        }

        public String getSwitchText() {
            return this.mSwitch;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$ViewAdapter.class */
    public final class ViewAdapter extends BaseAdapter {
        public static final int VIEW_TYPE_ADD_CONNECTION_ENTRY = 4;
        private static final int VIEW_TYPE_CATEGORY_TITLE_ENTRY = 6;
        private static final int VIEW_TYPE_COUNT = 8;
        public static final int VIEW_TYPE_DETAIL_ENTRY = 0;
        public static final int VIEW_TYPE_HEADER_ENTRY = 1;
        public static final int VIEW_TYPE_KIND_TITLE_ENTRY = 2;
        public static final int VIEW_TYPE_NETWORK_TITLE_ENTRY = 3;
        public static final int VIEW_TYPE_SEPARATOR_ENTRY = 5;
        private static final int VIEW_TYPE_VIDEO_SWITCH_ENTRY = 7;
        private final View.OnClickListener mPrimaryActionClickListener;
        private final View.OnClickListener mSecondaryActionClickListener;

        private ViewAdapter() {
            this.mPrimaryActionClickListener = new View.OnClickListener() { // from class: com.android.contacts.detail.ContactDetailFragment.ViewAdapter.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ViewEntry viewEntry;
                    if (ContactDetailFragment.this.mListener != null && (viewEntry = (ViewEntry) view.getTag()) != null) {
                        viewEntry.click(view, ContactDetailFragment.this.mListener);
                    }
                }
            };
            this.mSecondaryActionClickListener = new View.OnClickListener() { // from class: com.android.contacts.detail.ContactDetailFragment.ViewAdapter.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ViewEntry viewEntry;
                    Intent intent;
                    if (ContactDetailFragment.this.mListener != null && view != null && (viewEntry = (ViewEntry) view.getTag()) != null && (viewEntry instanceof DetailViewEntry) && (intent = ((DetailViewEntry) viewEntry).secondaryIntent) != null) {
                        ContactDetailFragment.this.mListener.onItemClicked(intent);
                    }
                }
            };
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x04e4  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x052f  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x053e  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0545  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x054e  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x01b0  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01d2  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x022f  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0253  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x027b  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0297  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x02b1  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void bindDetailView(int r8, android.view.View r9, com.android.contacts.detail.ContactDetailFragment.DetailViewEntry r10) {
            /*
                Method dump skipped, instructions count: 1440
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.detail.ContactDetailFragment.ViewAdapter.bindDetailView(int, android.view.View, com.android.contacts.detail.ContactDetailFragment$DetailViewEntry):void");
        }

        private View getAddConnectionEntryView(int i, View view, ViewGroup viewGroup) {
            AddConnectionViewCache addConnectionViewCache;
            AddConnectionViewEntry addConnectionViewEntry = (AddConnectionViewEntry) getItem(i);
            if (view != null) {
                addConnectionViewCache = (AddConnectionViewCache) view.getTag();
            } else {
                view = ContactDetailFragment.this.mInflater.inflate(2131427457, viewGroup, false);
                addConnectionViewCache = new AddConnectionViewCache(view);
                view.setTag(addConnectionViewCache);
            }
            addConnectionViewCache.name.setText(addConnectionViewEntry.getLabel());
            addConnectionViewCache.icon.setImageDrawable(addConnectionViewEntry.getIcon());
            addConnectionViewCache.primaryActionView.setOnClickListener(addConnectionViewEntry.mOnClickListener);
            return view;
        }

        private View getCategoryTitleEntryView(int i, View view, ViewGroup viewGroup) {
            View inflate;
            CategoryTitleViewCache categoryTitleViewCache;
            CategoryTitleViewEntry categoryTitleViewEntry = (CategoryTitleViewEntry) getItem(i);
            if (view != null) {
                categoryTitleViewCache = (CategoryTitleViewCache) view.getTag();
                inflate = view;
            } else {
                inflate = ContactDetailFragment.this.mInflater.inflate(2131427599, viewGroup, false);
                categoryTitleViewCache = new CategoryTitleViewCache(inflate);
                inflate.setTag(categoryTitleViewCache);
            }
            categoryTitleViewCache.titleView.setText(categoryTitleViewEntry.getTitle());
            return inflate;
        }

        private View getDetailEntryView(int i, View view, ViewGroup viewGroup) {
            DetailViewEntry detailViewEntry = (DetailViewEntry) getItem(i);
            if (view != null) {
                view.getTag();
            } else {
                view = ContactDetailFragment.this.mInflater.inflate(2131427463, viewGroup, false);
                view.setTag(new DetailViewCache(view, this.mPrimaryActionClickListener, this.mSecondaryActionClickListener));
            }
            bindDetailView(i, view, detailViewEntry);
            view.setBackgroundResource(2131034117);
            return view;
        }

        private View getHeaderEntryView(View view, ViewGroup viewGroup) {
            int i = ContactDetailFragment.this.mIsPrivateContact ? 2131427628 : 2131427498;
            if (view == null || ((HeaderViewCache) view.getTag()).layoutResourceId != i) {
                view = null;
            }
            View view2 = view;
            if (view == null) {
                view2 = ContactDetailFragment.this.mInflater.inflate(i, viewGroup, false);
                view2.setTag(new HeaderViewCache(view2, i));
            }
            return view2;
        }

        private View getKindTitleEntryView(int i, View view, ViewGroup viewGroup) {
            KindTitleViewCache kindTitleViewCache;
            KindTitleViewEntry kindTitleViewEntry = (KindTitleViewEntry) getItem(i);
            if (view != null) {
                kindTitleViewCache = (KindTitleViewCache) view.getTag();
            } else {
                view = ContactDetailFragment.this.mInflater.inflate(2131427601, viewGroup, false);
                kindTitleViewCache = new KindTitleViewCache(view);
                view.setTag(kindTitleViewCache);
            }
            kindTitleViewCache.titleView.setText(kindTitleViewEntry.getTitle());
            return view;
        }

        private View getNetworkTitleEntryView(int i, View view, ViewGroup viewGroup) {
            NetworkTitleViewCache networkTitleViewCache;
            NetworkTitleViewEntry networkTitleViewEntry = (NetworkTitleViewEntry) getItem(i);
            if (view != null) {
                networkTitleViewCache = (NetworkTitleViewCache) view.getTag();
            } else {
                view = ContactDetailFragment.this.mInflater.inflate(2131427466, viewGroup, false);
                networkTitleViewCache = new NetworkTitleViewCache(view);
                view.setTag(networkTitleViewCache);
            }
            networkTitleViewCache.name.setText(networkTitleViewEntry.getLabel());
            networkTitleViewCache.icon.setImageDrawable(networkTitleViewEntry.getIcon());
            return view;
        }

        private View getSeparatorEntryView(int i, View view, ViewGroup viewGroup) {
            SeparatorViewEntry separatorViewEntry = (SeparatorViewEntry) getItem(i);
            if (view == null) {
                view = ContactDetailFragment.this.mInflater.inflate(2131427467, viewGroup, false);
            }
            view.setPadding(separatorViewEntry.isInSubSection() ? ContactDetailFragment.this.mViewEntryDimensions.getWidePaddingLeft() : ContactDetailFragment.this.mViewEntryDimensions.getPaddingLeft(), 0, ContactDetailFragment.this.mViewEntryDimensions.getPaddingRight(), 0);
            return view;
        }

        private View getVideoSwitchEntryView(int i, View view, ViewGroup viewGroup) {
            VideoSwitchViewCache videoSwitchViewCache;
            VideoSwitchViewEntry videoSwitchViewEntry = (VideoSwitchViewEntry) getItem(i);
            if (view != null) {
                videoSwitchViewCache = (VideoSwitchViewCache) view.getTag();
            } else {
                view = ContactDetailFragment.this.mInflater.inflate(2131427468, viewGroup, false);
                videoSwitchViewCache = new VideoSwitchViewCache(view);
                view.setTag(videoSwitchViewCache);
            }
            videoSwitchViewCache.switchView.setText(videoSwitchViewEntry.getSwitchText());
            videoSwitchViewCache.switchView.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.contacts.detail.ContactDetailFragment.ViewAdapter.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (z) {
                        ViewAdapter.this.showVideoCallDialog(2131756452);
                    } else {
                        ViewAdapter.this.showVideoCallDialog(2131756451);
                    }
                }
            });
            return view;
        }

        private void setMaxLines(TextView textView, int i) {
            if (i == 1) {
                textView.setSingleLine(true);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                return;
            }
            textView.setSingleLine(false);
            textView.setMaxLines(i);
            textView.setEllipsize(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showVideoCallDialog(int i) {
            View inflate = ContactDetailFragment.this.getActivity().getLayoutInflater().inflate(2131427720, (ViewGroup) null);
            final CheckBox checkBox = (CheckBox) inflate.findViewById(2131296530);
            AlertDialog.Builder builder = new AlertDialog.Builder(ContactDetailFragment.this.mContext);
            ContactDetailFragment.this.mAlertDialog = builder.setMessage(i).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.detail.ContactDetailFragment.ViewAdapter.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    checkBox.isChecked();
                }
            }).setView(inflate).create();
            if (ContactDetailFragment.this.mAlertDialog != null && !ContactDetailFragment.this.mAlertDialog.isShowing()) {
                ContactDetailFragment.this.mAlertDialog.show();
            }
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return ContactDetailFragment.this.mAllEntries.size();
        }

        @Override // android.widget.Adapter
        public final ViewEntry getItem(int i) {
            return (ViewEntry) ContactDetailFragment.this.mAllEntries.get(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            ViewEntry viewEntry = (ViewEntry) ContactDetailFragment.this.mAllEntries.get(i);
            return viewEntry != null ? viewEntry.getId() : -1L;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            return ((ViewEntry) ContactDetailFragment.this.mAllEntries.get(i)).getViewType();
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View videoSwitchEntryView;
            switch (getItemViewType(i)) {
                case 0:
                    videoSwitchEntryView = getDetailEntryView(i, view, viewGroup);
                    break;
                case 1:
                    videoSwitchEntryView = getHeaderEntryView(view, viewGroup);
                    break;
                case 2:
                    videoSwitchEntryView = getKindTitleEntryView(i, view, viewGroup);
                    break;
                case 3:
                    videoSwitchEntryView = getNetworkTitleEntryView(i, view, viewGroup);
                    break;
                case 4:
                    videoSwitchEntryView = getAddConnectionEntryView(i, view, viewGroup);
                    break;
                case 5:
                    videoSwitchEntryView = getSeparatorEntryView(i, view, viewGroup);
                    break;
                case 6:
                    videoSwitchEntryView = getCategoryTitleEntryView(i, view, viewGroup);
                    break;
                case 7:
                    videoSwitchEntryView = getVideoSwitchEntryView(i, view, viewGroup);
                    break;
                default:
                    throw new IllegalStateException("Invalid view type ID " + getItemViewType(i));
            }
            return videoSwitchEntryView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 8;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            return getItem(i).isEnabled();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$ViewEntry.class */
    public static class ViewEntry {
        protected long id = -1;
        protected boolean isEnabled = false;
        private final int viewTypeForAdapter;

        ViewEntry(int i) {
            this.viewTypeForAdapter = i;
        }

        public void click(View view, Listener listener) {
        }

        long getId() {
            return this.id;
        }

        int getViewType() {
            return this.viewTypeForAdapter;
        }

        boolean isEnabled() {
            return this.isEnabled;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions.class */
    public static class ViewEntryDimensions {
        private final int mPaddingBottom;
        private final int mPaddingLeft;
        private final int mPaddingRight;
        private final int mPaddingTop;
        private final int mWidePaddingLeft;

        public ViewEntryDimensions(Resources resources) {
            this.mPaddingLeft = resources.getDimensionPixelSize(2131100043);
            this.mPaddingTop = resources.getDimensionPixelSize(2131100044);
            this.mWidePaddingLeft = this.mPaddingLeft + resources.getDimensionPixelSize(2131100042) + resources.getDimensionPixelSize(2131100047);
            this.mPaddingRight = this.mPaddingLeft;
            this.mPaddingBottom = this.mPaddingTop;
        }

        public int getPaddingBottom() {
            return this.mPaddingBottom;
        }

        public int getPaddingLeft() {
            return this.mPaddingLeft;
        }

        public int getPaddingRight() {
            return this.mPaddingRight;
        }

        public int getPaddingTop() {
            return this.mPaddingTop;
        }

        public int getWidePaddingLeft() {
            return this.mWidePaddingLeft;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragment$checkBlockTask.class */
    class checkBlockTask extends AsyncTask<String, Void, Boolean> {
        CheckBox blockButton;

        public checkBlockTask(CheckBox checkBox) {
            this.blockButton = checkBox;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Boolean doInBackground(String... strArr) {
            Throwable th;
            Cursor cursor;
            Cursor cursor2;
            boolean z;
            try {
                if (ContactDetailFragment.this.getActivity() == null || ContactDetailFragment.this.getActivity().getContentResolver() == null) {
                    cursor2 = null;
                } else {
                    cursor = ContactDetailFragment.this.getActivity().getContentResolver().query(Uri.parse("content://blocklist/blocklist"), null, "contactid=" + strArr[0], null, null);
                    cursor2 = cursor;
                    if (cursor != null) {
                        cursor2 = cursor;
                        try {
                            if (cursor.getCount() > 0) {
                                z = true;
                                if (cursor != null) {
                                    cursor.close();
                                    z = true;
                                }
                                return z;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
                if (cursor2 != null) {
                    cursor2.close();
                }
                z = false;
                return z;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((checkBlockTask) bool);
            if (this.blockButton != null) {
                this.blockButton.setChecked(bool.booleanValue());
            }
            this.blockButton = null;
        }
    }

    public ContactDetailFragment() {
        this.mPrimaryPhoneUri = null;
        this.mPhotoSetter = new ContactDetailPhotoSetter();
        this.mShowStaticPhoto = true;
        this.mTitleAccountIcons = null;
        this.mEntities = null;
        this.mMinBirthday = -1;
        this.mBirthdayEvents = new ArrayList<>();
        this.mAlertDialog = null;
        this.mIsRCSVerizon = PhoneCapabilityTester.isRCSVerizon();
        this.mPotentialQuickFixes = new QuickFix[]{new MakeLocalCopyQuickFix(), new AddToMyContactsQuickFix()};
        this.mPhoneEntries = new ArrayList<>();
        this.mSmsEntries = new ArrayList<>();
        this.mEmailEntries = new ArrayList<>();
        this.mPostalEntries = new ArrayList<>();
        this.mImEntries = new ArrayList<>();
        this.mNicknameEntries = new ArrayList<>();
        this.mGroupEntries = new ArrayList<>();
        this.mRelationEntries = new ArrayList<>();
        this.mNoteEntries = new ArrayList<>();
        this.mWebsiteEntries = new ArrayList<>();
        this.mSipEntries = new ArrayList<>();
        this.mEventEntries = new ArrayList<>();
        this.mPreferSimEntries = new ArrayList<>();
        this.mInactiveImEntries = new ArrayList<>();
        this.mOtherEntriesMap = new HashMap();
        this.mAllEntries = new ArrayList<>();
        this.mPreferSimHashTable = new HashMap<>();
        this.mAlreadyExecuteSimIconTaskHashTable = new HashMap<>();
        this.isNeedToUpdatePreferSimIcon = false;
        this.isScrolling = false;
        this.mForwardTouchToListView = new View.OnTouchListener() { // from class: com.android.contacts.detail.ContactDetailFragment.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                boolean z;
                if (ContactDetailFragment.this.mListView != null) {
                    ContactDetailFragment.this.mListView.dispatchTouchEvent(motionEvent);
                    z = true;
                } else {
                    z = false;
                }
                return z;
            }
        };
        this.mForwardDragToListView = new View.OnDragListener() { // from class: com.android.contacts.detail.ContactDetailFragment.2
            @Override // android.view.View.OnDragListener
            public boolean onDrag(View view, DragEvent dragEvent) {
                boolean z;
                if (ContactDetailFragment.this.mListView != null) {
                    ContactDetailFragment.this.mListView.dispatchDragEvent(dragEvent);
                    z = true;
                } else {
                    z = false;
                }
                return z;
            }
        };
        this.mIsPrivateContact = false;
    }

    public ContactDetailFragment(boolean z) {
        this.mPrimaryPhoneUri = null;
        this.mPhotoSetter = new ContactDetailPhotoSetter();
        this.mShowStaticPhoto = true;
        this.mTitleAccountIcons = null;
        this.mEntities = null;
        this.mMinBirthday = -1;
        this.mBirthdayEvents = new ArrayList<>();
        this.mAlertDialog = null;
        this.mIsRCSVerizon = PhoneCapabilityTester.isRCSVerizon();
        this.mPotentialQuickFixes = new QuickFix[]{new MakeLocalCopyQuickFix(), new AddToMyContactsQuickFix()};
        this.mPhoneEntries = new ArrayList<>();
        this.mSmsEntries = new ArrayList<>();
        this.mEmailEntries = new ArrayList<>();
        this.mPostalEntries = new ArrayList<>();
        this.mImEntries = new ArrayList<>();
        this.mNicknameEntries = new ArrayList<>();
        this.mGroupEntries = new ArrayList<>();
        this.mRelationEntries = new ArrayList<>();
        this.mNoteEntries = new ArrayList<>();
        this.mWebsiteEntries = new ArrayList<>();
        this.mSipEntries = new ArrayList<>();
        this.mEventEntries = new ArrayList<>();
        this.mPreferSimEntries = new ArrayList<>();
        this.mInactiveImEntries = new ArrayList<>();
        this.mOtherEntriesMap = new HashMap();
        this.mAllEntries = new ArrayList<>();
        this.mPreferSimHashTable = new HashMap<>();
        this.mAlreadyExecuteSimIconTaskHashTable = new HashMap<>();
        this.isNeedToUpdatePreferSimIcon = false;
        this.isScrolling = false;
        this.mForwardTouchToListView = new View.OnTouchListener() { // from class: com.android.contacts.detail.ContactDetailFragment.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                boolean z2;
                if (ContactDetailFragment.this.mListView != null) {
                    ContactDetailFragment.this.mListView.dispatchTouchEvent(motionEvent);
                    z2 = true;
                } else {
                    z2 = false;
                }
                return z2;
            }
        };
        this.mForwardDragToListView = new View.OnDragListener() { // from class: com.android.contacts.detail.ContactDetailFragment.2
            @Override // android.view.View.OnDragListener
            public boolean onDrag(View view, DragEvent dragEvent) {
                boolean z2;
                if (ContactDetailFragment.this.mListView != null) {
                    ContactDetailFragment.this.mListView.dispatchDragEvent(dragEvent);
                    z2 = true;
                } else {
                    z2 = false;
                }
                return z2;
            }
        };
        this.mIsPrivateContact = false;
        this.mIsPrivateContact = z;
    }

    private void AsusFlattenList(ArrayList<DetailViewEntry> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.mAllEntries.add(arrayList.get(i));
        }
    }

    private void UpdateBirthdayCake(ImageView imageView) {
        setMinBirthday(-1, imageView);
        if (this.mBirthdayEvents == null) {
            Log.v("Anthony", "ContactDetailFragment mBirthdayEvents == null");
        } else if (this.mBirthdayEvents.isEmpty()) {
            Log.v("Anthony", "ContactDetailFragment mBirthdayEvents.isEmpty()");
        } else {
            int i = -1;
            Calendar instance = Calendar.getInstance();
            instance.set(11, 0);
            instance.set(12, 0);
            instance.set(13, 0);
            instance.set(14, 0);
            for (int i2 = 0; i2 < this.mBirthdayEvents.size(); i2++) {
                Date parseDateAsus = DateUtils.parseDateAsus(this.mBirthdayEvents.get(i2).dbBirthdayData);
                i = i;
                if (parseDateAsus != null) {
                    Calendar instance2 = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
                    instance2.setTimeInMillis(parseDateAsus.getTime());
                    Calendar instance3 = Calendar.getInstance();
                    instance3.set(2, instance2.get(2));
                    instance3.set(5, instance2.get(5));
                    instance3.set(11, 0);
                    instance3.set(12, 0);
                    instance3.set(13, 0);
                    instance3.set(14, 0);
                    int timeInMillis = ((int) ((((instance3.getTimeInMillis() / 1000) / 60) / 60) / 24)) - ((int) ((((instance.getTimeInMillis() / 1000) / 60) / 60) / 24));
                    instance3.set(2, 1);
                    if (instance2.get(2) == 1 && instance3.getActualMaximum(5) == 28 && instance2.get(5) == 29) {
                        i = -1;
                    } else {
                        i = i;
                        if (timeInMillis >= 0) {
                            i = i;
                            if (timeInMillis <= com.android.contacts.c.a.f624a) {
                                if (i == -1) {
                                    i = timeInMillis;
                                } else {
                                    i = i;
                                    if (i > timeInMillis) {
                                        i = timeInMillis;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            this.mMinBirthday = i;
            setMinBirthday(this.mMinBirthday, imageView);
        }
    }

    private void addAccountIcon(LinearLayout linearLayout) {
        this.mEntities = this.mContactData.o;
        if (linearLayout != null) {
            int size = this.mEntities.size();
            int i = size;
            if (size > 7) {
                i = 7;
            }
            com.android.contacts.model.a a2 = com.android.contacts.model.a.a(getContextM());
            linearLayout.removeAllViews();
            int width = linearLayout.getWidth();
            boolean z = width > 0;
            int dimensionPixelOffset = this.mContext.getResources().getDimensionPixelOffset(2131099692);
            int dimensionPixelOffset2 = this.mContext.getResources().getDimensionPixelOffset(2131099691);
            for (int i2 = 0; i2 < i && (!z || width >= dimensionPixelOffset); i2++) {
                ContentValues contentValues = this.mEntities.get(i2).f2032b;
                com.android.contacts.model.account.a a3 = a2.a(contentValues.getAsString(SelectAccountActivity.ACCOUNT_TYPE), contentValues.getAsString(SelectAccountActivity.DATA_SET));
                ImageView imageView = new ImageView(getContextM());
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    imageView.setImageDrawable(a3.d(getContextM()));
                } else {
                    imageView.setImageDrawable(a3.a(getContextM(), contentValues.getAsString(SelectAccountActivity.ACCOUNT_NAME)));
                }
                imageView.setPadding(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
                imageView.setLayoutParams(new ViewGroup.LayoutParams(dimensionPixelOffset, dimensionPixelOffset));
                linearLayout.addView(imageView);
                width -= dimensionPixelOffset;
            }
            linearLayout.setVisibility(0);
        }
    }

    private void addNetworks() {
        String attribution = ContactDetailDisplayUtils.getAttribution(this.mContext, this.mContactData);
        boolean z = !TextUtils.isEmpty(attribution);
        int size = this.mOtherEntriesMap.keySet().size();
        int size2 = this.mContactData.r.size();
        if (!(!z && size == 0 && size2 == 0)) {
            String string = this.mContext.getString(2131755437);
            if (z) {
                DetailViewEntry detailViewEntry = new DetailViewEntry();
                detailViewEntry.kind = string;
                detailViewEntry.data = attribution;
                this.mAllEntries.add(detailViewEntry);
            }
            for (com.android.contacts.model.account.a aVar : this.mOtherEntriesMap.keySet()) {
                for (DetailViewEntry detailViewEntry2 : this.mOtherEntriesMap.get(aVar)) {
                    detailViewEntry2.accountType = aVar;
                    this.mAllEntries.add(detailViewEntry2);
                }
            }
            this.mOtherEntriesMap.clear();
            if (size2 > 0) {
                addMoreNetworks();
            }
        }
    }

    private void addPhoneticName() {
        String phoneticName = !this.mIsPrivateContact ? ContactDetailDisplayUtils.getPhoneticName(this.mContext, this.mContactData) : BuildConfig.FLAVOR;
        if (!TextUtils.isEmpty(phoneticName)) {
            String string = this.mContext.getString(2131755864);
            DetailViewEntry detailViewEntry = new DetailViewEntry();
            detailViewEntry.kind = string;
            detailViewEntry.data = phoneticName;
            this.mAllEntries.add(detailViewEntry);
        }
    }

    private void buildBirthdayEventEntrys(DetailViewEntry detailViewEntry, ContentValues contentValues) {
        Date parseDateAsus;
        detailViewEntry.secondtype = 3;
        detailViewEntry.isBirthdayRemind = String.valueOf(contentValues.getAsString("data7")).equals("1");
        Long asLong = contentValues.getAsLong("data8");
        if (asLong != null) {
            Calendar instance = Calendar.getInstance();
            instance.setTimeInMillis(asLong.longValue());
            detailViewEntry.remindDate = instance;
            Calendar calendar = detailViewEntry.remindDate;
            int i = calendar.get(11);
            int i2 = calendar.get(12);
            String str = detailViewEntry.dbBirthdayData;
            String str2 = str;
            if (str.length() > 10) {
                str2 = str.substring(0, 10);
            }
            Calendar instance2 = Calendar.getInstance();
            String[] split = str2.split("-");
            if (split.length == 4 || split.length == 3) {
                instance2.set(2012, Integer.parseInt(split[split.length - 2]) - 1, Integer.parseInt(split[split.length - 1]));
            }
            int i3 = Calendar.getInstance().get(1);
            instance2.set(1, i3 + 1);
            if (instance2.getTimeInMillis() < calendar.getTimeInMillis()) {
                instance2.set(1, i3 + 2);
            }
            detailViewEntry.remindDateBefore = daysOfTwo(calendar, instance2);
            detailViewEntry.remindHour = i;
            detailViewEntry.remindMinute = i2;
        } else if (!(detailViewEntry.dbBirthdayData == null || (parseDateAsus = DateUtils.parseDateAsus(detailViewEntry.dbBirthdayData)) == null)) {
            Calendar instance3 = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
            instance3.setTimeInMillis(parseDateAsus.getTime());
            int i4 = instance3.get(1);
            int i5 = instance3.get(2);
            int i6 = instance3.get(5);
            Calendar instance4 = Calendar.getInstance();
            instance4.set(1, i4);
            instance4.set(2, i5);
            instance4.set(5, i6);
            instance4.set(11, 8);
            instance4.set(12, 0);
            instance4.set(13, 0);
            instance4.set(14, 0);
            detailViewEntry.remindDate = instance4;
        }
        detailViewEntry.secondaryActionIcon = -1;
        detailViewEntry.secondaryActionDescription = 2131756056;
        detailViewEntry.secondaryIntent = new Intent();
        for (int i7 = 0; i7 < this.mBirthdayEvents.size(); i7++) {
            if (detailViewEntry.data.equals(this.mBirthdayEvents.get(i7).data)) {
                if (detailViewEntry.isPrimary || detailViewEntry.isBirthdayRemind) {
                    this.mBirthdayEvents.set(i7, detailViewEntry);
                    return;
                } else {
                    return;
                }
            }
        }
        this.mBirthdayEvents.add(detailViewEntry);
    }

    private void buildCustomEntries(DetailViewEntry detailViewEntry, d dVar) {
        com.android.contacts.model.account.a aVar = null;
        String str = null;
        detailViewEntry.intent = new Intent("android.intent.action.VIEW");
        detailViewEntry.intent.setDataAndType(detailViewEntry.uri, detailViewEntry.mimetype);
        detailViewEntry.data = dVar.e();
        if (!TextUtils.isEmpty(detailViewEntry.data)) {
            com.android.contacts.model.a a2 = com.android.contacts.model.a.a(dVar.f2995a);
            if (a2 != null) {
                String asString = dVar.f2996b != null ? dVar.f2996b.f2998a.getAsString(SelectAccountActivity.ACCOUNT_TYPE) : null;
                if (dVar.f2996b != null) {
                    str = dVar.f2996b.f2998a.getAsString(SelectAccountActivity.DATA_SET);
                }
                aVar = a2.a(asString, str);
            }
            if (this.mOtherEntriesMap.containsKey(aVar)) {
                this.mOtherEntriesMap.get(aVar).add(detailViewEntry);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(detailViewEntry);
            this.mOtherEntriesMap.put(aVar, arrayList);
        }
    }

    private void buildEmailEntries(DetailViewEntry detailViewEntry, d dVar, boolean z) {
        detailViewEntry.intent = new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_MAILTO, detailViewEntry.data, null));
        if (PhoneCapabilityTester.isATTSku()) {
            detailViewEntry.isPrimary = z || dVar.c();
        } else {
            detailViewEntry.isPrimary = z;
        }
        if (detailViewEntry.isPrimary) {
            this.mEmailEntries.add(0, detailViewEntry);
        } else {
            this.mEmailEntries.add(detailViewEntry);
        }
    }

    private final void buildEntries() {
        if (!(getActivity() == null || this.mContext == null)) {
            this.mHasPhone = PhoneCapabilityTester.isPhone(this.mContext);
            this.mHasSms = PhoneCapabilityTester.isSmsIntentRegistered(this.mContext);
            this.mHasSip = PhoneCapabilityTester.isSipPhone(this.mContext);
            this.mAllEntries.clear();
            this.mPrimaryPhoneUri = null;
            this.mBirthdayEvents.clear();
            if (this.mContactData != null) {
                String str = null;
                ArrayList<String> arrayList = new ArrayList<>();
                ae<e> b2 = this.mContactData.o.iterator();
                while (b2.hasNext()) {
                    e next = b2.next();
                    long longValue = next.b().longValue();
                    for (com.android.contacts.model.a.a aVar : next.h()) {
                        aVar.a(longValue);
                        if (aVar.b() != null) {
                            if (aVar instanceof com.android.contacts.model.a.e) {
                                Long valueOf = Long.valueOf(((com.android.contacts.model.a.e) aVar).k());
                                if (valueOf != null) {
                                    handleGroupMembership(arrayList, this.mContactData.x, valueOf.longValue());
                                }
                            } else {
                                com.android.contacts.model.a.b e = aVar.e();
                                if (e != null) {
                                    DetailViewEntry fromValues = DetailViewEntry.fromValues(this.mContext, aVar, this.mContactData.e(), this.mContactData.d);
                                    fromValues.maxLines = e.t;
                                    boolean z = !TextUtils.isEmpty(fromValues.data);
                                    boolean d = aVar.d();
                                    if (aVar instanceof o) {
                                        String str2 = fromValues.data;
                                        str = str2;
                                        if (!this.mPhoneEntries.isEmpty()) {
                                            int i = 0;
                                            while (true) {
                                                str = str2;
                                                if (i < this.mPhoneEntries.size()) {
                                                    if (this.mPhoneEntries.get(i).intent != null) {
                                                        this.mPhoneEntries.get(i).intent.putExtra("com.android.phone.AsusDialName", str2);
                                                    }
                                                    i++;
                                                }
                                            }
                                        }
                                    } else if (!(aVar instanceof k) || !z) {
                                        if ((aVar instanceof com.android.contacts.model.a.c) && z) {
                                            fromValues.intent = new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_MAILTO, fromValues.data, null));
                                            if (PhoneCapabilityTester.isATTSku()) {
                                                fromValues.isPrimary = d || aVar.c();
                                            } else {
                                                fromValues.isPrimary = d;
                                            }
                                            if (fromValues.isPrimary) {
                                                this.mEmailEntries.add(0, fromValues);
                                            } else {
                                                this.mEmailEntries.add(fromValues);
                                            }
                                            DataStatus dataStatus = this.mContactData.q.get(Long.valueOf(fromValues.id));
                                            if (dataStatus != null) {
                                                com.android.contacts.model.a.g a2 = com.android.contacts.model.a.g.a((com.android.contacts.model.a.c) aVar);
                                                DetailViewEntry fromValues2 = DetailViewEntry.fromValues(this.mContext, a2, this.mContactData.e(), this.mContactData.d);
                                                buildImActions(this.mContext, fromValues2, a2);
                                                fromValues2.setPresence(dataStatus.getPresence());
                                                fromValues2.maxLines = e.t;
                                                if (fromValues2.presence == 0) {
                                                    this.mInactiveImEntries.add(fromValues2);
                                                } else {
                                                    this.mImEntries.add(fromValues2);
                                                }
                                            }
                                        } else if ((aVar instanceof com.android.contacts.model.a.p) && z) {
                                            fromValues.intent = StructuredPostalUtils.getViewPostalAddressIntent(fromValues.data);
                                            fromValues.typeString += ' ' + this.mContext.getResources().getString(2131755958);
                                            this.mPostalEntries.add(fromValues);
                                        } else if (!(aVar instanceof com.android.contacts.model.a.g) || !z) {
                                            str = str;
                                            if (!(aVar instanceof com.android.contacts.model.a.j)) {
                                                if ((aVar instanceof h) && z) {
                                                    if (!(((this.mContactData.g > longValue ? 1 : (this.mContactData.g == longValue ? 0 : -1)) == 0) && this.mContactData.h == 35)) {
                                                        fromValues.uri = null;
                                                        this.mNicknameEntries.add(fromValues);
                                                    }
                                                } else if ((aVar instanceof i) && z) {
                                                    fromValues.uri = null;
                                                    this.mNoteEntries.add(fromValues);
                                                } else if ((aVar instanceof com.android.contacts.model.a.q) && z) {
                                                    fromValues.uri = null;
                                                    try {
                                                        fromValues.intent = new Intent("android.intent.action.VIEW", Uri.parse(new com.android.contacts.quickcontact.j(fromValues.data).toString()));
                                                    } catch (j.a e2) {
                                                        Log.e(TAG, "Couldn't parse website: " + fromValues.data);
                                                    }
                                                    this.mWebsiteEntries.add(fromValues);
                                                } else if ((aVar instanceof n) && z) {
                                                    fromValues.uri = null;
                                                    if (this.mHasSip) {
                                                        fromValues.intent = PhoneCapabilityTester.newDialNumberIntent(getContextM(), null, fromValues.data, -1);
                                                    } else {
                                                        fromValues.intent = null;
                                                    }
                                                    this.mSipEntries.add(fromValues);
                                                    fromValues.isSipcall = true;
                                                } else if ((aVar instanceof com.android.contacts.model.a.d) && z) {
                                                    fromValues.uri = null;
                                                    if (fromValues.type == 3) {
                                                        fromValues.dbBirthdayData = fromValues.data;
                                                        fromValues.data = DateUtils.formatDate(this.mContext, fromValues.data);
                                                        fromValues.isPrimary = d;
                                                        buildBirthdayEventEntrys(fromValues, aVar.f1994a);
                                                    } else {
                                                        fromValues.typeString += ' ' + this.mContext.getResources().getString(2131755617);
                                                        fromValues.data = DateUtils.formatDate(this.mContext, fromValues.data);
                                                        fromValues.uri = null;
                                                        this.mEventEntries.add(fromValues);
                                                    }
                                                } else if (!(aVar instanceof com.android.contacts.model.a.m) || !z) {
                                                    fromValues.intent = new Intent("android.intent.action.VIEW");
                                                    fromValues.intent.setDataAndType(fromValues.uri, fromValues.mimetype);
                                                    fromValues.data = aVar.h();
                                                    str = str;
                                                    if (!TextUtils.isEmpty(fromValues.data)) {
                                                        com.android.contacts.model.account.a g = aVar.f1995b == null ? null : aVar.f1995b.g();
                                                        if (this.mOtherEntriesMap.containsKey(g)) {
                                                            this.mOtherEntriesMap.get(g).add(fromValues);
                                                        } else {
                                                            ArrayList arrayList2 = new ArrayList();
                                                            arrayList2.add(fromValues);
                                                            this.mOtherEntriesMap.put(g, arrayList2);
                                                            str = str;
                                                        }
                                                    }
                                                } else {
                                                    fromValues.intent = new Intent("android.intent.action.SEARCH");
                                                    fromValues.intent.putExtra("query", fromValues.data);
                                                    fromValues.intent.setType("vnd.android.cursor.dir/contact");
                                                    this.mRelationEntries.add(fromValues);
                                                }
                                            }
                                        } else {
                                            buildImActions(this.mContext, fromValues, (com.android.contacts.model.a.g) aVar);
                                            DataStatus dataStatus2 = this.mContactData.q.get(Long.valueOf(fromValues.id));
                                            if (dataStatus2 != null) {
                                                fromValues.setPresence(dataStatus2.getPresence());
                                            } else {
                                                fromValues.setPresence(0);
                                            }
                                            if (fromValues.presence == 0) {
                                                this.mInactiveImEntries.add(fromValues);
                                            } else {
                                                this.mImEntries.add(fromValues);
                                            }
                                        }
                                    } else if (getActivity() != null) {
                                        fromValues.data = ((k) aVar).l();
                                        Intent newDialNumberIntent = this.mHasPhone ? PhoneCapabilityTester.newDialNumberIntent(getContextM(), null, fromValues.data, -1) : null;
                                        String str3 = fromValues.data;
                                        boolean b3 = new com.android.contacts.calllog.t(getActivity()).b(str3);
                                        Intent intent = this.mHasSms ? new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_SMSTO, str3, null)) : null;
                                        if (intent != null) {
                                            if (this.mIsPrivateContact) {
                                                intent.putExtra(EXTRA_IS_PRIVATE, true);
                                            } else {
                                                intent.putExtra(EXTRA_IS_PRIVATE, false);
                                            }
                                        }
                                        if (this.mHasPhone && this.mHasSms) {
                                            fromValues.intent = newDialNumberIntent;
                                            fromValues.secondaryIntent = intent;
                                            if (!b3) {
                                                fromValues.secondaryIntent.putExtra("CANSENDSMS", b3);
                                            }
                                            fromValues.secondaryActionIcon = 2131165345;
                                            fromValues.secondaryActionDescription = e.e;
                                        } else if (this.mHasPhone) {
                                            fromValues.intent = newDialNumberIntent;
                                        } else if (this.mHasSms) {
                                            fromValues.intent = intent;
                                            if (!b3) {
                                                fromValues.intent.putExtra("CANSENDSMS", b3);
                                            }
                                        } else {
                                            fromValues.intent = null;
                                        }
                                        if (fromValues.intent != null) {
                                            fromValues.intent.putExtra("com.android.phone.FromAsusDialer", true);
                                        }
                                        if (com.android.contacts.ipcall.b.b(getActivity())) {
                                            Log.d(TAG, "[ContactDetailFragment] enable ip call");
                                            fromValues.intent = new Intent("android.intent.action.DIAL", q.a(fromValues.data));
                                        }
                                        if (!(str == null || fromValues.intent == null)) {
                                            fromValues.intent.putExtra("com.android.phone.AsusDialName", str);
                                        }
                                        if (d) {
                                            this.mPrimaryPhoneUri = fromValues.uri;
                                        }
                                        if (PhoneCapabilityTester.isATTSku()) {
                                            fromValues.isPrimary = d || aVar.c();
                                        } else {
                                            fromValues.isPrimary = d;
                                        }
                                        if (fromValues.isPrimary) {
                                            this.mPhoneEntries.add(0, fromValues);
                                        } else {
                                            this.mPhoneEntries.add(fromValues);
                                        }
                                    } else {
                                        return;
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                }
                if (com.asus.prefersim.c.a(this.mContext) && this.mPhoneEntries.size() > 0) {
                    PreferSimViewEntry fromValues3 = PreferSimViewEntry.fromValues(this.mContext, this.mContactData, this.mContactData.f);
                    ArrayList arrayList3 = new ArrayList();
                    ContactDetailDisplayUtils.getContactPhoneNumberList(this.mContactData, arrayList3);
                    fromValues3.intent.putExtra("EXTRA_PREFER_SIM_NUMBER_LIST", arrayList3);
                    this.mPreferSimEntries.add(fromValues3);
                }
                if (!arrayList.isEmpty()) {
                    DetailViewEntry detailViewEntry = new DetailViewEntry();
                    Collections.sort(arrayList);
                    StringBuilder sb = new StringBuilder();
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (i2 != 0) {
                            sb.append(", ");
                        }
                        sb.append(arrayList.get(i2));
                    }
                    detailViewEntry.mimetype = "mimetype";
                    detailViewEntry.kind = this.mContext.getString(2131755682);
                    detailViewEntry.data = sb.toString();
                    this.mGroupEntries.add(detailViewEntry);
                }
            }
        }
    }

    private void buildEventEntries(DetailViewEntry detailViewEntry, boolean z) {
        detailViewEntry.uri = null;
        detailViewEntry.typeString += ' ' + this.mContext.getResources().getString(2131755617);
        detailViewEntry.data = DateUtils.formatDate(this.mContext, detailViewEntry.data);
        detailViewEntry.uri = null;
        this.mEventEntries.add(detailViewEntry);
    }

    public static void buildImActions(Context context, DetailViewEntry detailViewEntry, com.android.contacts.model.a.g gVar) {
        boolean z = gVar.d;
        if (z || gVar.m()) {
            String k = gVar.k();
            if (!TextUtils.isEmpty(k)) {
                int intValue = z ? 5 : gVar.l().intValue();
                if (intValue == 5) {
                    int o = gVar.o();
                    detailViewEntry.chatCapability = o;
                    detailViewEntry.typeString = ContactsContract.CommonDataKinds.Im.getProtocolLabel(context.getResources(), 5, null).toString();
                    if ((o & 4) != 0) {
                        detailViewEntry.intent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + k + "?message"));
                        detailViewEntry.secondaryIntent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + k + "?call"));
                    } else if ((o & 1) != 0) {
                        detailViewEntry.intent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + k + "?message"));
                        detailViewEntry.secondaryIntent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + k + "?call"));
                    } else {
                        detailViewEntry.intent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + k + "?message"));
                    }
                } else {
                    String n = gVar.n();
                    if (intValue != -1) {
                        n = q.a(intValue);
                    }
                    if (!TextUtils.isEmpty(n)) {
                        detailViewEntry.intent = new Intent("android.intent.action.SENDTO", new Uri.Builder().scheme(Constants.SCHEME_IMTO).authority(n.toLowerCase()).appendPath(k).build());
                    }
                }
            }
        }
    }

    private void buildImEntries(DetailViewEntry detailViewEntry, d dVar) {
        if (!Boolean.valueOf(dVar.a().getAsInteger("data5") != null).booleanValue()) {
            Log.i(TAG, "Protocol is not valid, return");
            return;
        }
        String asString = dVar.a().getAsString(CoverUtils.CoverData.COVER_URI);
        if (TextUtils.isEmpty(asString)) {
            Log.i(TAG, "data is empty, return");
            return;
        }
        int intValue = dVar.a().getAsInteger("data5").intValue();
        if (intValue == 5) {
            Integer asInteger = dVar.a().getAsInteger("chat_capability");
            int intValue2 = asInteger == null ? 0 : asInteger.intValue();
            detailViewEntry.chatCapability = intValue2;
            detailViewEntry.typeString = ContactsContract.CommonDataKinds.Im.getProtocolLabel(this.mContext.getResources(), 5, null).toString();
            if ((intValue2 & 4) != 0) {
                detailViewEntry.intent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + asString + "?message"));
                detailViewEntry.secondaryIntent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + asString + "?call"));
            } else if ((intValue2 & 1) != 0) {
                detailViewEntry.intent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + asString + "?message"));
                detailViewEntry.secondaryIntent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + asString + "?call"));
            } else {
                detailViewEntry.intent = new Intent("android.intent.action.SENDTO", Uri.parse("xmpp:" + asString + "?message"));
            }
        } else {
            String asString2 = dVar.a().getAsString("data6");
            if (intValue != -1) {
                asString2 = q.a(intValue);
            }
            if (!TextUtils.isEmpty(asString2)) {
                detailViewEntry.intent = new Intent("android.intent.action.SENDTO", new Uri.Builder().scheme(Constants.SCHEME_IMTO).authority(asString2.toLowerCase()).appendPath(asString).build());
            }
        }
        detailViewEntry.setPresence(0);
        if (detailViewEntry.presence == 0) {
            this.mInactiveImEntries.add(detailViewEntry);
        } else {
            this.mImEntries.add(detailViewEntry);
        }
    }

    private void buildPhoneEntries(DetailViewEntry detailViewEntry, d dVar, boolean z, String str) {
        Intent newDialNumberIntent = this.mHasPhone ? PhoneCapabilityTester.newDialNumberIntent(getActivity(), null, detailViewEntry.data, -1) : null;
        String str2 = detailViewEntry.data;
        boolean b2 = new com.android.contacts.calllog.t(getActivity()).b(str2);
        Intent intent = this.mHasSms ? new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_SMSTO, str2, null)) : null;
        if (this.mHasPhone && this.mHasSms) {
            detailViewEntry.intent = newDialNumberIntent;
            detailViewEntry.secondaryIntent = intent;
            if (!b2) {
                detailViewEntry.secondaryIntent.putExtra("CANSENDSMS", b2);
            }
            detailViewEntry.secondaryActionIcon = 2131165345;
            detailViewEntry.secondaryActionDescription = dVar.d().e;
        } else if (this.mHasPhone) {
            detailViewEntry.intent = newDialNumberIntent;
        } else if (this.mHasSms) {
            detailViewEntry.intent = intent;
            if (!b2) {
                detailViewEntry.intent.putExtra("CANSENDSMS", b2);
            }
        } else {
            detailViewEntry.intent = null;
        }
        if (detailViewEntry.intent != null) {
            detailViewEntry.intent.putExtra("com.android.phone.FromAsusDialer", true);
        }
        if (com.android.contacts.ipcall.b.b(getActivity())) {
            Log.d(TAG, "[ContactDetailFragment] enable ip call");
            detailViewEntry.intent = new Intent("android.intent.action.DIAL", q.a(detailViewEntry.data));
        }
        if (!(str == null || detailViewEntry.intent == null)) {
            detailViewEntry.intent.putExtra("com.android.phone.AsusDialName", str);
        }
        if (z) {
            this.mPrimaryPhoneUri = detailViewEntry.uri;
        }
        if (PhoneCapabilityTester.isATTSku()) {
            detailViewEntry.isPrimary = z || dVar.c();
        } else {
            detailViewEntry.isPrimary = z;
        }
        if (detailViewEntry.isPrimary) {
            this.mPhoneEntries.add(0, detailViewEntry);
        } else {
            this.mPhoneEntries.add(detailViewEntry);
        }
    }

    private void buildPostalEntries(DetailViewEntry detailViewEntry) {
        detailViewEntry.intent = StructuredPostalUtils.getViewPostalAddressIntent(detailViewEntry.data);
        detailViewEntry.typeString += ' ' + this.mContext.getResources().getString(2131755958);
        this.mPostalEntries.add(detailViewEntry);
    }

    private final void buildPrivateEntries() {
        this.mHasPhone = PhoneCapabilityTester.isPhone(getActivity());
        this.mHasSms = PhoneCapabilityTester.isSmsIntentRegistered(getActivity());
        this.mHasSip = PhoneCapabilityTester.isSipPhone(getActivity());
        this.mAllEntries.clear();
        this.mPrimaryPhoneUri = null;
        if (this.mPrivateContact != null) {
            handlePrivateDataList();
        }
    }

    private void buildRelationEntries(DetailViewEntry detailViewEntry) {
        detailViewEntry.intent = new Intent("android.intent.action.SEARCH");
        detailViewEntry.intent.putExtra("query", detailViewEntry.data);
        detailViewEntry.intent.setType("vnd.android.cursor.dir/contact");
        this.mRelationEntries.add(detailViewEntry);
    }

    private void buildSipEntries(DetailViewEntry detailViewEntry) {
        detailViewEntry.uri = null;
        if (this.mHasSip) {
            detailViewEntry.intent = PhoneCapabilityTester.newDialNumberIntent(getContextM(), null, detailViewEntry.data, -1);
        } else {
            detailViewEntry.intent = null;
        }
        this.mSipEntries.add(detailViewEntry);
    }

    private void buildStructuredName(DetailViewEntry detailViewEntry, String str) {
        String str2 = detailViewEntry.data;
        if (!this.mPhoneEntries.isEmpty()) {
            for (int i = 0; i < this.mPhoneEntries.size(); i++) {
                if (this.mPhoneEntries.get(i).intent != null) {
                    this.mPhoneEntries.get(i).intent.putExtra("com.android.phone.AsusDialName", str2);
                }
            }
        }
    }

    private void buildWebSiteEntries(DetailViewEntry detailViewEntry) {
        detailViewEntry.uri = null;
        try {
            detailViewEntry.intent = new Intent("android.intent.action.VIEW", Uri.parse(new com.android.contacts.quickcontact.j(detailViewEntry.data).toString()));
        } catch (j.a e) {
            Log.e(TAG, "Couldn't parse website: " + detailViewEntry.data);
        }
        this.mWebsiteEntries.add(detailViewEntry);
    }

    private void clearDefaultContactMethod(long j) {
        this.mContext.startService(ContactSaveService.c(this.mContext, j));
    }

    private void configureQuickFix() {
        this.mQuickFix = null;
        QuickFix[] quickFixArr = this.mPotentialQuickFixes;
        int length = quickFixArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            QuickFix quickFix = quickFixArr[i];
            if (quickFix.isApplicable()) {
                this.mQuickFix = quickFix;
                break;
            }
            i++;
        }
        if (this.mQuickFix == null) {
            this.mQuickFixButton.setVisibility(8);
            return;
        }
        this.mQuickFixButton.setVisibility(0);
        this.mQuickFixButton.setText(this.mQuickFix.getTitle());
    }

    private void copyToClipboard(int i) {
        DetailViewEntry detailViewEntry = (DetailViewEntry) this.mAllEntries.get(i);
        String str = detailViewEntry.data;
        if (!TextUtils.isEmpty(str)) {
            ClipboardUtils.copyText(getActivity(), detailViewEntry.typeString, str, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createCopy(AccountWithDataSet accountWithDataSet) {
        if (this.mListener != null) {
            Listener listener = this.mListener;
            String str = this.mContactData.k;
            c cVar = this.mContactData;
            if (cVar.o.size() != 1) {
                throw new IllegalStateException("Cannot extract content values from an aggregated contact");
            }
            e eVar = cVar.o.get(0);
            ArrayList<ContentValues> arrayList = new ArrayList<>();
            for (com.android.contacts.model.a.a aVar : eVar.h()) {
                arrayList.add(aVar.f1994a);
            }
            if (cVar.i == 0 && cVar.y != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("mimetype", "vnd.android.cursor.item/photo");
                contentValues.put("data15", cVar.y);
                arrayList.add(contentValues);
            }
            listener.onCreateRawContactRequested(str, arrayList, accountWithDataSet);
        }
    }

    private void dismissPopupIfShown() {
        if (this.mPopup != null && this.mPopup.isShowing()) {
            this.mPopup.dismiss();
        }
        this.mPopup = null;
    }

    private void flattenList(ArrayList<DetailViewEntry> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.mAllEntries.add(arrayList.get(i));
        }
        arrayList.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getDefaultGroupId(List<t> list) {
        r9 = -1;
        long j = -1;
        for (t tVar : list) {
            if (tVar.c) {
                if (j != -1) {
                    break;
                }
                j = tVar.f2170a;
            }
        }
        return j;
    }

    private void handleGroupMembership(ArrayList<String> arrayList, List<t> list, long j) {
        if (list != null) {
            for (t tVar : list) {
                if (tVar.f2170a == j) {
                    if (!(tVar.c || tVar.d)) {
                        String a2 = com.android.contacts.group.f.a(getContextM(), tVar.f2171b);
                        if (!(TextUtils.isEmpty(a2) || arrayList.contains(a2))) {
                            arrayList.add(a2);
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
        }
    }

    private boolean isSimCardContact() {
        boolean z;
        if (this.mContactData != null && !this.mContactData.e()) {
            ae<e> b2 = this.mContactData.o.iterator();
            while (true) {
                if (!b2.hasNext()) {
                    z = false;
                    break;
                }
                e next = b2.next();
                String d = next.d();
                String c = next.c();
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    if (b.a.c.equals(c)) {
                        z = true;
                        break;
                    }
                } else if (b.a.d.equals(d)) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    private void setDefaultContactMethod(long j) {
        this.mContext.startService(ContactSaveService.b(this.mContext, j));
    }

    private void setupFlattenedList() {
        this.mAllEntries.add(new HeaderViewEntry());
        if (this.mContactData != null && this.mContactData.B && this.mIsRCSVerizon) {
            this.mAllEntries.add(new CategoryTitleViewEntry(this.mContext, 2131755358));
            this.mAllEntries.add(new VideoSwitchViewEntry(this.mContext, 2131755359));
        }
        if (hasActions()) {
            this.mAllEntries.add(new CategoryTitleViewEntry(this.mContext, 2131755356));
        }
        flattenList(this.mPhoneEntries);
        flattenList(this.mEmailEntries);
        flattenList(this.mSipEntries);
        flattenList(this.mSmsEntries);
        if (!this.mIsPrivateContact) {
            addNetworks();
        }
        flattenList(this.mImEntries);
        if (hasInformations()) {
            this.mAllEntries.add(new CategoryTitleViewEntry(this.mContext, 2131755357));
        }
        flattenList(this.mInactiveImEntries);
        addPhoneticName();
        flattenList(this.mNicknameEntries);
        flattenList(this.mWebsiteEntries);
        flattenList(this.mPostalEntries);
        flattenList(this.mPreferSimEntries);
        flattenList(this.mEventEntries);
        if (!this.mIsPrivateContact) {
            AsusFlattenList(this.mBirthdayEvents);
            flattenList(this.mGroupEntries);
        }
        flattenList(this.mRelationEntries);
        flattenList(this.mNoteEntries);
    }

    public void addMoreNetworks() {
        this.mPopupAdapter = new InvitableAccountTypesAdapter(this.mContext, this.mContactData);
        this.mPopupItemListener = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.detail.ContactDetailFragment.4
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (ContactDetailFragment.this.mListener != null && ContactDetailFragment.this.mContactData != null) {
                    ContactDetailFragment.this.mListener.onItemClicked(q.a(ContactDetailFragment.this.mPopupAdapter.getItem(i), ContactDetailFragment.this.mContactData.f2023b));
                }
            }
        };
    }

    protected void bindData() {
        boolean z = true;
        if (this.mView != null) {
            if (isAdded()) {
                getActivity().invalidateOptionsMenu();
            }
            if (this.mContactData == null) {
                this.mView.setVisibility(4);
                if (this.mStaticPhotoContainer != null) {
                    this.mStaticPhotoContainer.setVisibility(8);
                }
                this.mAllEntries.clear();
                if (this.mAdapter != null) {
                    this.mAdapter.notifyDataSetChanged();
                    return;
                }
                return;
            }
            buildEntries();
            if (this.mStaticPhotoContainer != null) {
                if (this.mShowStaticPhoto) {
                    this.mStaticPhotoContainer.setVisibility(0);
                    ImageView imageView = (ImageView) this.mStaticPhotoContainer.findViewById(2131297153);
                    boolean z2 = this.mContactData.j != null;
                    View.OnClickListener onClickListener = this.mPhotoSetter.setupContactPhotoForClick(this.mContext, this.mContactData, imageView, z2);
                    if (this.mPhotoTouchOverlay != null) {
                        if (this.mContactData.g()) {
                            this.mPhotoTouchOverlay.setVisibility(8);
                        } else {
                            this.mPhotoTouchOverlay.setVisibility(0);
                            if (z2 || this.mContactData.f()) {
                                this.mPhotoTouchOverlay.setOnClickListener(onClickListener);
                            }
                        }
                        this.mPhotoTouchOverlay.setClickable(false);
                    }
                    UpdateBirthdayCake(imageView);
                } else {
                    this.mStaticPhotoContainer.setVisibility(8);
                }
            }
            com.android.contacts.j.a(this.mPhoneEntries);
            com.android.contacts.j.a(this.mSmsEntries);
            com.android.contacts.j.a(this.mEmailEntries);
            com.android.contacts.j.a(this.mPostalEntries);
            com.android.contacts.j.a(this.mImEntries);
            com.android.contacts.j.a(this.mEventEntries);
            com.android.contacts.j.a(this.mInactiveImEntries);
            this.mIsUniqueNumber = this.mPhoneEntries.size() == 1;
            if (this.mEmailEntries.size() != 1) {
                z = false;
            }
            this.mIsUniqueEmail = z;
            setupFlattenedList();
            if (this.mAdapter == null) {
                this.mAdapter = new ViewAdapter();
                this.mListView.setAdapter((ListAdapter) this.mAdapter);
            }
            if (this.mListState != null) {
                this.mListView.onRestoreInstanceState(this.mListState);
                this.mListState = null;
            }
            this.mAdapter.notifyDataSetChanged();
            this.mListView.setEmptyView(this.mEmptyView);
            configureQuickFix();
            if (this.mShowStaticPhoto) {
                addAccountIcon(this.mTitleAccountIcons);
            } else if (this.mTitleAccountIcons != null) {
                this.mTitleAccountIcons.setVisibility(8);
            }
            this.mView.setVisibility(0);
        }
    }

    protected void bindPrivateData() {
        boolean z = true;
        if (this.mView != null) {
            if (isAdded()) {
                getActivity().invalidateOptionsMenu();
            }
            if (this.mPrivateContact == null) {
                this.mView.setVisibility(4);
                this.mAllEntries.clear();
                if (this.mAdapter != null) {
                    this.mAdapter.notifyDataSetChanged();
                    return;
                }
                return;
            }
            buildPrivateEntries();
            com.android.contacts.j.a(this.mPhoneEntries);
            com.android.contacts.j.a(this.mSmsEntries);
            com.android.contacts.j.a(this.mEmailEntries);
            com.android.contacts.j.a(this.mPostalEntries);
            com.android.contacts.j.a(this.mImEntries);
            com.android.contacts.j.a(this.mEventEntries);
            com.android.contacts.j.a(this.mInactiveImEntries);
            this.mIsUniqueNumber = this.mPhoneEntries.size() == 1;
            if (this.mEmailEntries.size() != 1) {
                z = false;
            }
            this.mIsUniqueEmail = z;
            setupFlattenedList();
            if (this.mAdapter == null) {
                this.mAdapter = new ViewAdapter();
                this.mListView.setAdapter((ListAdapter) this.mAdapter);
            }
            if (this.mListState != null) {
                this.mListView.onRestoreInstanceState(this.mListState);
                this.mListState = null;
            }
            this.mAdapter.notifyDataSetChanged();
            this.mListView.setEmptyView(this.mEmptyView);
            this.mView.setVisibility(0);
        }
    }

    public void clearPreferSimHashMap() {
        this.mPreferSimHashTable.clear();
        this.mAlreadyExecuteSimIconTaskHashTable.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int daysOfTwo(java.util.Calendar r6, java.util.Calendar r7) {
        /*
            r5 = this;
            r0 = r7
            long r0 = r0.getTimeInMillis()
            r1 = r6
            long r1 = r1.getTimeInMillis()
            long r0 = r0 - r1
            r1 = 86400000(0x5265c00, double:4.2687272E-316)
            long r0 = r0 / r1
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002e
            r0 = r8
            r10 = r0
            r0 = r7
            r1 = 6
            int r0 = r0.get(r1)
            r1 = r6
            r2 = 6
            int r1 = r1.get(r2)
            if (r0 == r1) goto L_0x002e
            r0 = r8
            r1 = 1
            long r0 = r0 + r1
            r10 = r0
        L_0x002e:
            r0 = r10
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.detail.ContactDetailFragment.daysOfTwo(java.util.Calendar, java.util.Calendar):int");
    }

    protected c getContactData() {
        return this.mContactData;
    }

    protected Context getContextM() {
        return this.mContext;
    }

    public int getFirstListItemOffset() {
        return ContactDetailDisplayUtils.getFirstListItemOffset(this.mListView);
    }

    public boolean getIsNeedToUpdatePreferSimIcon() {
        return this.isNeedToUpdatePreferSimIcon;
    }

    protected int getLayout() {
        return this.mIsPrivateContact ? 2131427627 : 2131427461;
    }

    protected Listener getListener() {
        return this.mListener;
    }

    public Uri getUri() {
        return this.mLookupUri;
    }

    @Override // com.android.contacts.activities.ContactDetailActivity.FragmentKeyListener
    public boolean handleKeyDown(int i) {
        boolean z;
        switch (i) {
            case 5:
                if (!TelecomUtil.isInCall(this.mContext)) {
                    int selectedItemPosition = this.mListView.getSelectedItemPosition();
                    if (selectedItemPosition != -1) {
                        DetailViewEntry detailViewEntry = (DetailViewEntry) this.mAdapter.getItem(selectedItemPosition);
                        if (!(detailViewEntry == null || detailViewEntry.intent == null || detailViewEntry.intent.getAction() != "android.intent.action.CALL")) {
                            CallUtil.startDialActivity(this.mContext, detailViewEntry.intent);
                            z = true;
                            break;
                        }
                        z = false;
                        break;
                    } else {
                        if (this.mPrimaryPhoneUri != null) {
                            CallUtil.startDialActivity(this.mContext, CallUtil.getCallIntent(this.mPrimaryPhoneUri));
                            z = true;
                            break;
                        }
                        z = false;
                    }
                }
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    public void handlePrivateDataList() {
        if (this.mPrivateContact == null) {
            Log.e(TAG, ">>> handleDataList: mPrivateContact is null");
            return;
        }
        com.asus.privatecontacts.a.b bVar = this.mPrivateContact;
        if (bVar.f2991b == null) {
            bVar.f2991b = new ArrayList<>();
        }
        ArrayList<d> arrayList = bVar.f2991b;
        if (arrayList != null) {
            Iterator<d> it = arrayList.iterator();
            while (it.hasNext()) {
                d next = it.next();
                if (!(next.d() == null || next.b() == null)) {
                    DetailViewEntry creatFromPrivateContact = DetailViewEntry.creatFromPrivateContact(getActivity(), next);
                    boolean z = !TextUtils.isEmpty(creatFromPrivateContact.data);
                    boolean booleanValue = next.c != null ? next.c.f2994a.getAsBoolean("is_super_primary").booleanValue() : false;
                    Integer num = com.asus.privatecontacts.b.c.f3005b.get(creatFromPrivateContact.mimetype);
                    Integer num2 = num;
                    if (num == null) {
                        num2 = -1;
                    }
                    switch (num2.intValue()) {
                        case 0:
                            if (z) {
                                buildEmailEntries(creatFromPrivateContact, next, booleanValue);
                                break;
                            } else {
                                continue;
                            }
                        case 1:
                            if (z) {
                                buildEventEntries(creatFromPrivateContact, booleanValue);
                                break;
                            } else {
                                continue;
                            }
                        case 2:
                        case 8:
                            break;
                        case 3:
                        case 10:
                        default:
                            buildCustomEntries(creatFromPrivateContact, next);
                            continue;
                        case 4:
                            if (z) {
                                buildImEntries(creatFromPrivateContact, next);
                                break;
                            } else {
                                continue;
                            }
                        case 5:
                            if (z) {
                                buildStructuredName(creatFromPrivateContact, null);
                                break;
                            } else {
                                continue;
                            }
                        case 6:
                            if (z) {
                                creatFromPrivateContact.uri = null;
                                this.mNicknameEntries.add(creatFromPrivateContact);
                                break;
                            } else {
                                continue;
                            }
                        case 7:
                            if (z) {
                                creatFromPrivateContact.uri = null;
                                this.mNoteEntries.add(creatFromPrivateContact);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            if (z) {
                                buildPhoneEntries(creatFromPrivateContact, next, booleanValue, null);
                                break;
                            } else {
                                continue;
                            }
                        case 11:
                            if (z) {
                                buildPostalEntries(creatFromPrivateContact);
                                break;
                            } else {
                                continue;
                            }
                        case 12:
                            if (z) {
                                buildRelationEntries(creatFromPrivateContact);
                                break;
                            } else {
                                continue;
                            }
                        case 13:
                            if (z) {
                                buildSipEntries(creatFromPrivateContact);
                                break;
                            } else {
                                continue;
                            }
                        case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                            if (z) {
                                buildWebSiteEntries(creatFromPrivateContact);
                                break;
                            } else {
                                continue;
                            }
                    }
                }
            }
        }
    }

    public boolean hasActions() {
        boolean z;
        if (!this.mPhoneEntries.isEmpty()) {
            z = true;
        } else {
            z = true;
            if (this.mEmailEntries.isEmpty()) {
                z = true;
                if (this.mSipEntries.isEmpty()) {
                    z = true;
                    if (this.mSmsEntries.isEmpty()) {
                        z = true;
                        if (this.mImEntries.isEmpty()) {
                            z = true;
                            if (this.mOtherEntriesMap.keySet().size() == 0) {
                                z = false;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public boolean hasInformations() {
        return !this.mImEntries.isEmpty() ? true : !this.mInactiveImEntries.isEmpty() ? true : !TextUtils.isEmpty(this.mIsPrivateContact ? BuildConfig.FLAVOR : ContactDetailDisplayUtils.getPhoneticName(this.mContext, this.mContactData)) ? true : !this.mWebsiteEntries.isEmpty() ? true : !this.mPostalEntries.isEmpty() ? true : !this.mEventEntries.isEmpty() ? true : !this.mBirthdayEvents.isEmpty() ? true : !this.mGroupEntries.isEmpty() ? true : !this.mRelationEntries.isEmpty() ? true : !this.mNoteEntries.isEmpty() ? true : !this.mPreferSimEntries.isEmpty();
    }

    public boolean isContactLinkable() {
        boolean z = false;
        if (this.mContactData != null) {
            if (this.mContactData.e()) {
                z = false;
            } else {
                z = false;
                if (!isSimCardContact()) {
                    z = true;
                }
            }
        }
        return z;
    }

    protected boolean isDarkTheme() {
        return false;
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle) {
        createCopy(accountWithDataSet);
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountSelectorCancelled() {
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mContext = activity;
        this.mViewEntryDimensions = new ViewEntryDimensions(this.mContext.getResources());
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        try {
            AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
            switch (menuItem.getItemId()) {
                case 0:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "ContactDetail_LongPress", "ContactDetail_LongPress- Copy to clipboard", null, null);
                    }
                    copyToClipboard(adapterContextMenuInfo.position);
                    z = true;
                    break;
                case 1:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "ContactDetail_LongPress", "ContactDetail_LongPress- Clear primary number", null, null);
                    }
                    clearDefaultContactMethod(this.mListView.getItemIdAtPosition(adapterContextMenuInfo.position));
                    z = true;
                    break;
                case 2:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "ContactDetail_LongPress", "ContactDetail_LongPress- Set as primary number", null, null);
                    }
                    setDefaultContactMethod(this.mListView.getItemIdAtPosition(adapterContextMenuInfo.position));
                    z = true;
                    break;
                case 3:
                    DetailViewEntry detailViewEntry = (DetailViewEntry) this.mAllEntries.get(adapterContextMenuInfo.position);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "ContactDetail_LongPress", "ContactDetail_LongPress- Set SIM 1 as default SIM", null, null);
                    }
                    if (com.asus.prefersim.c.a(this.mContext, detailViewEntry.data, this.mContactData.f, 0)) {
                        Toast.makeText(this.mContext, getResources().getString(2131756106, getResources().getString(2131756130)), 0).show();
                        this.mPreferSimHashTable.put(detailViewEntry.data, 0);
                        this.mAdapter.notifyDataSetChanged();
                    } else {
                        Log.d(TAG, "set number prefer sim1 fail!");
                    }
                    z = true;
                    break;
                case 4:
                    DetailViewEntry detailViewEntry2 = (DetailViewEntry) this.mAllEntries.get(adapterContextMenuInfo.position);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "ContactDetail_LongPress", "ContactDetail_LongPress- Set SIM 2 as default SIM", null, null);
                    }
                    if (com.asus.prefersim.c.a(this.mContext, detailViewEntry2.data, this.mContactData.f, 1)) {
                        Toast.makeText(this.mContext, getResources().getString(2131756106, getResources().getString(2131756131)), 0).show();
                        this.mPreferSimHashTable.put(detailViewEntry2.data, 1);
                        this.mAdapter.notifyDataSetChanged();
                    } else {
                        Log.d(TAG, "set number prefer sim2 fail!");
                    }
                    z = true;
                    break;
                case 5:
                    DetailViewEntry detailViewEntry3 = (DetailViewEntry) this.mAllEntries.get(adapterContextMenuInfo.position);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "ContactDetail_LongPress", "ContactDetail_LongPress- Clear default SIM", null, null);
                    }
                    if (com.asus.prefersim.c.a(this.mContext, detailViewEntry3.data, this.mContactData.f)) {
                        Toast.makeText(this.mContext, getResources().getString(2131755388), 0).show();
                        this.mPreferSimHashTable.remove(detailViewEntry3.data);
                        this.mAlreadyExecuteSimIconTaskHashTable.remove(detailViewEntry3.data);
                        this.mAdapter.notifyDataSetChanged();
                    } else {
                        Log.d(TAG, "clear number prefer sim fail!");
                    }
                    z = true;
                    break;
                default:
                    Log.i(TAG, "Unknown menu option " + menuItem.getItemId());
                    z = false;
                    break;
            }
        } catch (ClassCastException e) {
            Log.e(TAG, "bad menuInfo", e);
            z = false;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.mLookupUri = (Uri) bundle.getParcelable(KEY_CONTACT_URI);
            this.mListState = bundle.getParcelable(KEY_LIST_STATE);
            this.mIsPrivateContact = bundle.getBoolean(EXTRA_IS_PRIVATE, false);
        }
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        DetailViewEntry detailViewEntry = (DetailViewEntry) this.mAllEntries.get(((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position);
        contextMenu.setHeaderTitle(detailViewEntry.data);
        contextMenu.add(0, 0, 0, getString(2131755473));
        if (!this.mContactData.e()) {
            String str = detailViewEntry.mimetype;
            boolean z = "vnd.android.cursor.item/phone_v2".equals(str) ? this.mIsUniqueNumber : "vnd.android.cursor.item/email_v2".equals(str) ? this.mIsUniqueEmail : true;
            if (detailViewEntry.isPrimary) {
                contextMenu.add(0, 1, 0, getString(2131755389));
            } else if (!z) {
                contextMenu.add(0, 2, 0, getString(2131756108));
            }
            if (com.asus.prefersim.c.a(this.mContext) && "vnd.android.cursor.item/phone_v2".equals(str)) {
                int a2 = com.asus.prefersim.c.a(this.mContext, detailViewEntry.data);
                if (a2 == 0) {
                    contextMenu.add(0, 4, 0, getString(2131756105, getString(2131756135)));
                    contextMenu.add(0, 5, 0, getString(2131755387));
                } else if (a2 == 1) {
                    contextMenu.add(0, 3, 0, getString(2131756105, getString(2131756134)));
                    contextMenu.add(0, 5, 0, getString(2131755387));
                } else {
                    contextMenu.add(0, 3, 0, getString(2131756105, getString(2131756134)));
                    contextMenu.add(0, 4, 0, getString(2131756105, getString(2131756135)));
                }
            }
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mView = layoutInflater.inflate(getLayout(), viewGroup, false);
        this.mView.setOnTouchListener(this.mForwardTouchToListView);
        this.mView.setOnDragListener(this.mForwardDragToListView);
        this.mInflater = layoutInflater;
        this.mStaticPhotoContainer = null;
        this.mPhotoTouchOverlay = this.mView.findViewById(2131297162);
        this.mListView = (ListView) this.mView.findViewById(16908298);
        this.mListView.setOnItemClickListener(this);
        this.mListView.setItemsCanFocus(true);
        this.mListView.setOnScrollListener(this.mVerticalScrollListener);
        this.mEmptyView = this.mView.findViewById(16908292);
        if (!this.mIsPrivateContact) {
            this.mQuickFixButton = (Button) this.mView.findViewById(2131296583);
            this.mQuickFixButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.detail.ContactDetailFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ContactDetailFragment.this.mQuickFix != null) {
                        ContactDetailFragment.this.mQuickFix.execute();
                    }
                }
            });
            this.mTitleAccountIcons = (LinearLayout) this.mView.findViewById(2131296667);
        }
        this.mListView.setVerticalScrollBarEnabled(false);
        this.mView.setVisibility(4);
        if (this.mContactData != null) {
            bindData();
        }
        if (this.mPrivateContact != null) {
            bindPrivateData();
        }
        return this.mView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ViewEntry item;
        if (this.mListener != null && (item = this.mAdapter.getItem(i)) != null) {
            item.click(view, this.mListener);
        }
    }

    @Override // android.app.Fragment
    public void onPause() {
        dismissPopupIfShown();
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(KEY_CONTACT_URI, this.mLookupUri);
        if (this.mListView != null) {
            bundle.putParcelable(KEY_LIST_STATE, this.mListView.onSaveInstanceState());
        }
        bundle.putBoolean(EXTRA_IS_PRIVATE, this.mIsPrivateContact);
    }

    @Override // android.app.Fragment
    public void onStop() {
        if (this.mIsRCSVerizon && this.mAlertDialog != null) {
            this.mAlertDialog.dismiss();
        }
        super.onStop();
    }

    public void requestToMoveToOffset(int i, int i2) {
        ContactDetailDisplayUtils.requestToMoveToOffset(this.mListView, i, i2);
    }

    public void resetAdapter() {
        if (this.mListView != null) {
            this.mListView.setAdapter((ListAdapter) this.mAdapter);
        }
    }

    public void setData(Uri uri, c cVar) {
        this.mLookupUri = uri;
        this.mContactData = cVar;
        bindData();
    }

    public void setIsNeedToUpdatePreferSimIcon(boolean z) {
        this.isNeedToUpdatePreferSimIcon = z;
    }

    public void setIsScrolling(boolean z) {
        this.isScrolling = z;
    }

    public void setItemBackGround(View view, int i) {
        view.setBackgroundResource(2131034116);
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    public void setMinBirthday(int i, ImageView imageView) {
        if (i != -1) {
            if ((i == 0 ? 'x' : (char) 65535) != 65535) {
                Bitmap decodeResource = BitmapFactory.decodeResource(getContextM().getResources(), 2131165304);
                Bitmap bitmap = ((BitmapDrawable) imageView.getDrawable()).getBitmap();
                int width = imageView.getWidth();
                int height = imageView.getHeight();
                int dimensionPixelOffset = this.mContext.getResources().getDimensionPixelOffset(2131099699);
                int i2 = width;
                if (width == 0) {
                    i2 = this.mContext.getResources().getDimensionPixelOffset(2131099726);
                }
                int i3 = height;
                if (height == 0) {
                    i3 = this.mContext.getResources().getDimensionPixelOffset(2131099726);
                }
                ImageView imageView2 = new ImageView(getContextM());
                imageView2.layout(0, 0, i2, i3);
                imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imageView2.setBackgroundDrawable(null);
                imageView2.setImageBitmap(bitmap);
                imageView2.setDrawingCacheEnabled(true);
                imageView.setImageBitmap(AsusBitmapMerge.createBitmap(imageView2.getDrawingCache(), decodeResource, i2, i3, dimensionPixelOffset, 0));
            }
        }
    }

    public void setPrivateData(com.asus.privatecontacts.a.b bVar) {
        this.mPrivateContact = bVar;
        bindPrivateData();
    }

    public void setShowStaticPhoto(boolean z) {
        this.mShowStaticPhoto = z;
    }

    public void setVerticalScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.mVerticalScrollListener = onScrollListener;
    }

    public void showEmptyState() {
        setData(null, null);
    }

    public void showPopupListWindow() {
        Dialog dialog = new Dialog(this.mContext);
        dialog.setContentView(2131427340);
        ListView listView = (ListView) dialog.findViewById(2131296995);
        dialog.setTitle(this.mContext.getResources().getString(2131755031));
        dialog.setCancelable(true);
        listView.setAdapter((ListAdapter) this.mPopupAdapter);
        listView.setOnItemClickListener(this.mPopupItemListener);
        dialog.show();
    }

    public void updateAdapter() {
        com.asus.snapcall.c.c();
        this.mAdapter.notifyDataSetChanged();
    }
}
