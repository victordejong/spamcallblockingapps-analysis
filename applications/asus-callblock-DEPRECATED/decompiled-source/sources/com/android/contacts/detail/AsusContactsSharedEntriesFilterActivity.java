package com.android.contacts.detail;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.detail.ContactDetailFragment;
import com.android.contacts.detail.ContactLoaderFragment;
import com.android.contacts.model.a.a;
import com.android.contacts.model.a.b;
import com.android.contacts.model.a.o;
import com.android.contacts.model.c;
import com.android.contacts.model.e;
import com.android.vcard.VCardConstants;
import com.asus.updatesdk.BuildConfig;
import com.google.a.b.ae;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/AsusContactsSharedEntriesFilterActivity.class */
public class AsusContactsSharedEntriesFilterActivity extends Activity {
    public static final String TAG = AsusContactsSharedEntriesFilterActivity.class.getSimpleName();
    private ViewAdapter mAdapter;
    private Button mCancelButton;
    private c mContact;
    private List<ContactDetailFragment.DetailViewEntry> mDetailViewEntries;
    private List<List<String>> mFilters;
    private ListView mListView;
    private ContactLoaderFragment mLoaderFragment;
    private Set<Integer> mSelectedItems;
    private MenuItem mShareItem;
    private Button mSharedButton;
    private CharsetEncoder mAsciiEncoder = Charset.forName("US-ASCII").newEncoder();
    private boolean mIsLoadFinished = false;
    private boolean mIsRestart = false;
    private final ContactLoaderFragment.ContactLoaderFragmentListener mLoaderFragmentListener = new ContactLoaderFragment.ContactLoaderFragmentListener() { // from class: com.android.contacts.detail.AsusContactsSharedEntriesFilterActivity.2
        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onContactNotFound() {
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onDeleteRequested(Uri uri) {
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onDetailsLoaded(c cVar) {
            boolean z = true;
            if (AsusContactsSharedEntriesFilterActivity.this.mIsRestart) {
                AsusContactsSharedEntriesFilterActivity.this.mIsRestart = false;
                return;
            }
            AsusContactsSharedEntriesFilterActivity.this.mContact = cVar;
            if (AsusContactsSharedEntriesFilterActivity.this.mContact == null) {
                AsusContactsSharedEntriesFilterActivity.this.finish();
                return;
            }
            if (AsusContactsSharedEntriesFilterActivity.this.getActionBar() != null) {
                AsusContactsSharedEntriesFilterActivity.this.getActionBar().setTitle(AsusContactsSharedEntriesFilterActivity.this.mContact.k);
                AsusContactsSharedEntriesFilterActivity.this.mCancelButton.setVisibility(8);
                AsusContactsSharedEntriesFilterActivity.this.mSharedButton.setVisibility(8);
            } else {
                AsusContactsSharedEntriesFilterActivity.this.setTitle(AsusContactsSharedEntriesFilterActivity.this.mContact.k);
            }
            AsusContactsSharedEntriesFilterActivity.this.mDetailViewEntries = new ArrayList();
            AsusContactsSharedEntriesFilterActivity.this.buildEntries();
            AsusContactsSharedEntriesFilterActivity.this.mIsLoadFinished = true;
            if (AsusContactsSharedEntriesFilterActivity.this.mShareItem != null) {
                MenuItem menuItem = AsusContactsSharedEntriesFilterActivity.this.mShareItem;
                if (!AsusContactsSharedEntriesFilterActivity.this.mIsLoadFinished || AsusContactsSharedEntriesFilterActivity.this.mSelectedItems.size() <= 0) {
                    z = false;
                }
                menuItem.setEnabled(z);
            }
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onEditRequested(Uri uri) {
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onLinkRequested(long j) {
        }
    };
    private AdapterView.OnItemClickListener mSelectedListener = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.detail.AsusContactsSharedEntriesFilterActivity.3
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (AsusContactsSharedEntriesFilterActivity.this.mSelectedItems.contains(Integer.valueOf(i))) {
                AsusContactsSharedEntriesFilterActivity.this.mSelectedItems.remove(Integer.valueOf(i));
            } else {
                AsusContactsSharedEntriesFilterActivity.this.mSelectedItems.add(Integer.valueOf(i));
            }
            AsusContactsSharedEntriesFilterActivity.this.mAdapter.notifyDataSetChanged();
            if (AsusContactsSharedEntriesFilterActivity.this.mShareItem != null) {
                AsusContactsSharedEntriesFilterActivity.this.mShareItem.setEnabled(AsusContactsSharedEntriesFilterActivity.this.mSelectedItems.size() > 0);
            }
        }
    };
    private View.OnClickListener mSharedListener = new View.OnClickListener() { // from class: com.android.contacts.detail.AsusContactsSharedEntriesFilterActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AsusContactsSharedEntriesFilterActivity.this.share();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/AsusContactsSharedEntriesFilterActivity$ViewAdapter.class */
    public final class ViewAdapter extends BaseAdapter {
        private ViewAdapter() {
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return AsusContactsSharedEntriesFilterActivity.this.mDetailViewEntries == null ? 0 : AsusContactsSharedEntriesFilterActivity.this.mDetailViewEntries.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            try {
                AsusContactsSharedEntriesFilterActivity.this.mDetailViewEntries.get(i);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            ContactDetailFragment.DetailViewEntry detailViewEntry = (ContactDetailFragment.DetailViewEntry) AsusContactsSharedEntriesFilterActivity.this.mDetailViewEntries.get(i);
            View inflate = View.inflate(AsusContactsSharedEntriesFilterActivity.this, 2131427360, null);
            TextView textView = (TextView) inflate.findViewById(2131297424);
            TextView textView2 = (TextView) inflate.findViewById(2131297517);
            ((CheckBox) inflate.findViewById(2131296532)).setChecked(AsusContactsSharedEntriesFilterActivity.this.mSelectedItems.contains(Integer.valueOf(i)));
            textView.setText(detailViewEntry.kind + (TextUtils.isEmpty(detailViewEntry.typeString) ? BuildConfig.FLAVOR : " - " + detailViewEntry.typeString));
            textView2.setText(detailViewEntry.data);
            return inflate;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildEntries() {
        b e;
        if (this.mContact == null) {
            finish();
            return;
        }
        ae<e> b2 = this.mContact.o.iterator();
        Integer num = 0;
        while (b2.hasNext()) {
            e next = b2.next();
            long longValue = next.b().longValue();
            Iterator<a> it = next.h().iterator();
            while (true) {
                num = num;
                if (it.hasNext()) {
                    a next2 = it.next();
                    next2.a(longValue);
                    if (!(next2.b() == null || (next2 instanceof o) || (e = next2.e()) == null)) {
                        ContactDetailFragment.DetailViewEntry fromValues = ContactDetailFragment.DetailViewEntry.fromValues(getApplicationContext(), next2, this.mContact.e(), this.mContact.d);
                        fromValues.maxLines = e.t;
                        if (!TextUtils.isEmpty(fromValues.data)) {
                            this.mDetailViewEntries.add(fromValues);
                            this.mSelectedItems.add(num);
                            num = Integer.valueOf(num.intValue() + 1);
                        }
                    }
                }
            }
        }
        this.mAdapter = new ViewAdapter();
        this.mListView.setAdapter((ListAdapter) this.mAdapter);
        this.mListView.setOnItemClickListener(this.mSelectedListener);
    }

    private String encodeQuotedPrintable(String str) {
        String sb;
        if (str == null || !str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
            int i = 0;
            int i2 = 0;
            while (i2 < bytes.length) {
                sb2.append(String.format("=%02X", Byte.valueOf(bytes[i2])));
                int i3 = i2 + 1;
                int i4 = i + 3;
                i = i4;
                i2 = i3;
                if (i4 >= 67) {
                    sb2.append("=\r\n");
                    i = 0;
                    i2 = i3;
                }
            }
            sb = sb2.toString();
        } else {
            sb = BuildConfig.FLAVOR;
        }
        return sb;
    }

    private List<String> getMappedPhonePropertyName(int i) {
        ArrayList arrayList = new ArrayList();
        switch (i) {
            case 1:
                arrayList.add(VCardConstants.PARAM_TYPE_HOME);
                break;
            case 2:
                arrayList.add(VCardConstants.PARAM_TYPE_CELL);
                break;
            case 3:
                arrayList.add(VCardConstants.PARAM_TYPE_WORK);
                break;
            case 4:
                arrayList.add(VCardConstants.PARAM_TYPE_WORK);
                arrayList.add(VCardConstants.PARAM_TYPE_FAX);
                break;
            case 5:
                arrayList.add(VCardConstants.PARAM_TYPE_HOME);
                arrayList.add(VCardConstants.PARAM_TYPE_FAX);
                break;
            case 6:
                arrayList.add(VCardConstants.PARAM_TYPE_PAGER);
                break;
            case 7:
                arrayList.add(VCardConstants.PARAM_TYPE_VOICE);
                break;
            case 9:
                arrayList.add(VCardConstants.PARAM_TYPE_CAR);
                break;
            case 10:
                arrayList.add(VCardConstants.PARAM_TYPE_WORK);
                break;
            case 11:
                arrayList.add(VCardConstants.PARAM_TYPE_ISDN);
                break;
            case 13:
                arrayList.add(VCardConstants.PARAM_TYPE_FAX);
                break;
            case 15:
                arrayList.add(VCardConstants.PARAM_TYPE_TLX);
                break;
            case 17:
                arrayList.add(VCardConstants.PARAM_TYPE_WORK);
                arrayList.add(VCardConstants.PARAM_TYPE_CELL);
                break;
            case 18:
                arrayList.add(VCardConstants.PARAM_TYPE_WORK);
                arrayList.add(VCardConstants.PARAM_TYPE_PAGER);
                break;
            case 20:
                arrayList.add(VCardConstants.PARAM_TYPE_MSG);
                break;
        }
        return arrayList;
    }

    private List<String> getMappedPostalPropertyName(Integer num) {
        ArrayList arrayList = new ArrayList();
        switch (num.intValue()) {
            case 1:
                arrayList.add(VCardConstants.PARAM_TYPE_HOME);
                break;
            case 2:
                arrayList.add(VCardConstants.PARAM_TYPE_WORK);
                break;
        }
        return arrayList;
    }

    private boolean isPureAscii(String str) {
        return this.mAsciiEncoder.canEncode(str);
    }

    private String normalizeString(String str) {
        if (!isPureAscii(str)) {
            str = encodeQuotedPrintable(str);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0328 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0335 A[Catch: IOException -> 0x035c, TRY_ENTER, TryCatch #9 {IOException -> 0x035c, blocks: (B:75:0x0328, B:78:0x0335), top: B:105:0x0328 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x0355 -> B:66:0x02c8). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void share() {
        /*
            Method dump skipped, instructions count: 931
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.detail.AsusContactsSharedEntriesFilterActivity.share():void");
    }

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        if (ContactLoaderFragment.class.isInstance(fragment)) {
            this.mIsLoadFinished = false;
            this.mLoaderFragment = (ContactLoaderFragment) fragment;
            this.mLoaderFragment.setListener(this.mLoaderFragmentListener);
            this.mLoaderFragment.loadUri(getIntent().getData());
            this.mLoaderFragment.setHasOptionMenu(false);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() == null || getIntent().getData() == null) {
            finish();
            return;
        }
        if (getResources().getBoolean(2130968593)) {
            setRequestedOrientation(4);
        } else {
            setRequestedOrientation(1);
        }
        setContentView(2131427367);
        this.mListView = (ListView) findViewById(2131297001);
        this.mCancelButton = (Button) findViewById(2131296518);
        this.mSharedButton = (Button) findViewById(2131297286);
        this.mListView.setSelector(17170445);
        this.mCancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.detail.AsusContactsSharedEntriesFilterActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AsusContactsSharedEntriesFilterActivity.this.finish();
            }
        });
        this.mSharedButton.setOnClickListener(this.mSharedListener);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayOptions(12, 14);
            actionBar.setTitle(BuildConfig.FLAVOR);
        }
        this.mSelectedItems = new HashSet();
        this.mFilters = new ArrayList();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.clear();
        if (getActionBar() != null) {
            getMenuInflater().inflate(2131492902, menu);
            this.mShareItem = menu.findItem(2131297064);
            MenuItem findItem = menu.findItem(2131297041);
            if (findItem != null) {
                com.android.contacts.skin.a.a(this, findItem);
            }
        }
        if (this.mShareItem == null) {
            return true;
        }
        this.mShareItem.setEnabled(Boolean.valueOf(this.mIsLoadFinished && this.mSelectedItems.size() > 0).booleanValue());
        com.android.contacts.skin.a.a(this, this.mShareItem);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
            case 2131297041:
                finish();
                return true;
            case 2131297064:
                share();
                return true;
            default:
                return true;
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        this.mIsRestart = true;
    }
}
