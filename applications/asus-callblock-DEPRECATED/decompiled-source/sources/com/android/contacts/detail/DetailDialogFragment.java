package com.android.contacts.detail;

import android.app.DialogFragment;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.android.contacts.detail.ContactDetailFragment;
import com.android.contacts.model.a.a;
import com.android.contacts.model.a.b;
import com.android.contacts.model.a.d;
import com.android.contacts.model.a.f;
import com.android.contacts.model.a.g;
import com.android.contacts.model.a.h;
import com.android.contacts.model.a.i;
import com.android.contacts.model.a.j;
import com.android.contacts.model.a.k;
import com.android.contacts.model.a.m;
import com.android.contacts.model.a.n;
import com.android.contacts.model.a.o;
import com.android.contacts.model.a.p;
import com.android.contacts.model.a.q;
import com.android.contacts.model.c;
import com.android.contacts.model.e;
import com.android.contacts.util.DateUtils;
import com.asus.updatesdk.BuildConfig;
import com.google.a.b.ae;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/DetailDialogFragment.class */
public class DetailDialogFragment extends DialogFragment {
    private static final int FILTER_FROM_CONTACT_BROWSE = 1;
    private static final String LOADER_ARG_CONTACT_URI = "contactUri";
    private static final int LOADER_DETAILS = 1;
    public static final String TAG = DetailDialogFragment.class.getSimpleName();
    private ArrayList<Entry> mData = new ArrayList<>();
    private Uri mUri;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/DetailDialogFragment$DetailAdapter.class */
    private class DetailAdapter extends BaseAdapter {
        private c mContact;
        private boolean mHasHeader = false;
        private List<ContactDetailFragment.DetailViewEntry> mDetailViewEntries = new ArrayList();

        public DetailAdapter(c cVar) {
            this.mContact = cVar;
            buildEntries();
        }

        private void buildEntries() {
            if (this.mContact == null || this.mContact.o == null) {
                Log.d(DetailDialogFragment.TAG, "buildEntries mContact == null");
                return;
            }
            ae<e> b2 = this.mContact.o.iterator();
            while (true) {
                if (!b2.hasNext()) {
                    break;
                }
                e next = b2.next();
                if (next.b().equals(Long.valueOf(this.mContact.g))) {
                    buildRwContacts(next);
                    break;
                }
            }
            ae<e> b3 = this.mContact.o.iterator();
            while (b3.hasNext()) {
                e next2 = b3.next();
                if (!next2.b().equals(Long.valueOf(this.mContact.g))) {
                    for (a aVar : next2.h()) {
                        if (o.class.isInstance(aVar)) {
                            o oVar = (o) aVar;
                            Entry entry = new Entry();
                            com.android.contacts.model.account.a g = next2.g();
                            entry.kind = BuildConfig.FLAVOR;
                            entry.typeString = (String) g.a(DetailDialogFragment.this.getActivity());
                            entry.data = oVar.k();
                            entry.isName = true;
                            if (!this.mHasHeader) {
                                entry.isHeader = true;
                                this.mHasHeader = true;
                            }
                            DetailDialogFragment.this.mData.add(entry);
                        }
                    }
                    buildRwContacts(next2);
                }
            }
        }

        private void buildRwContacts(e eVar) {
            b e;
            for (a aVar : eVar.h()) {
                aVar.a(eVar.b().longValue());
                if (!(aVar.b() == null || (aVar instanceof o) || (e = aVar.e()) == null)) {
                    ContactDetailFragment.DetailViewEntry fromValues = ContactDetailFragment.DetailViewEntry.fromValues(DetailDialogFragment.this.getActivity(), aVar, this.mContact.e(), this.mContact.d);
                    fromValues.maxLines = e.t;
                    boolean z = !TextUtils.isEmpty(fromValues.data);
                    if (aVar instanceof d) {
                        fromValues.data = DateUtils.formatDate(DetailDialogFragment.this.getActivity(), fromValues.data);
                    }
                    if (isItemNeedShow(aVar)) {
                        Entry entry = new Entry();
                        entry.kind = aVar.j();
                        entry.typeString = fromValues.typeString;
                        entry.data = fromValues.data;
                        if (z) {
                            DetailDialogFragment.this.mData.add(entry);
                        }
                    }
                }
            }
        }

        private boolean isItemNeedShow(a aVar) {
            return (aVar instanceof com.android.contacts.model.a.c) || (aVar instanceof d) || (aVar instanceof com.android.contacts.model.a.e) || (aVar instanceof f) || (aVar instanceof g) || (aVar instanceof h) || (aVar instanceof i) || (aVar instanceof j) || (aVar instanceof k) || (aVar instanceof m) || (aVar instanceof n) || (aVar instanceof o) || (aVar instanceof p) || (aVar instanceof q);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return DetailDialogFragment.this.mData.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate;
            Entry entry = (Entry) DetailDialogFragment.this.mData.get(i);
            if (entry.isName) {
                inflate = View.inflate(DetailDialogFragment.this.getActivity(), 2131427361, null);
                inflate.findViewById(2131296928).setVisibility(entry.isHeader ? 0 : 8);
            } else {
                inflate = View.inflate(DetailDialogFragment.this.getActivity(), 2131427360, null);
            }
            TextView textView = (TextView) inflate.findViewById(2131297424);
            TextView textView2 = (TextView) inflate.findViewById(2131297517);
            View findViewById = inflate.findViewById(2131296532);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            textView.setText(entry.kind + ((TextUtils.isEmpty(entry.kind) || TextUtils.isEmpty(entry.typeString)) ? BuildConfig.FLAVOR : " - ") + entry.typeString);
            textView2.setText(entry.data);
            inflate.setClickable(false);
            inflate.setFocusable(false);
            return inflate;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/DetailDialogFragment$Entry.class */
    public class Entry {
        public String data;
        public boolean isHeader;
        public boolean isName;
        public String kind;
        public String typeString;

        private Entry() {
            this.kind = BuildConfig.FLAVOR;
            this.typeString = BuildConfig.FLAVOR;
            this.data = BuildConfig.FLAVOR;
            this.isName = false;
            this.isHeader = false;
        }
    }

    public static DetailDialogFragment newInstance(Uri uri) {
        DetailDialogFragment detailDialogFragment = new DetailDialogFragment();
        detailDialogFragment.mUri = uri;
        return detailDialogFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // android.app.DialogFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Dialog onCreateDialog(android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.detail.DetailDialogFragment.onCreateDialog(android.os.Bundle):android.app.Dialog");
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("lookup", this.mUri);
    }
}
