package com.android.contacts.editor;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.group.f;
import com.android.contacts.interactions.e;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.google.a.a.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/GroupMembershipView.class */
public class GroupMembershipView extends LinearLayout implements View.OnClickListener, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static List<Long> f1141a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public static List<Long> f1142b = new ArrayList();
    private boolean c = true;
    private RawContactDelta d;
    private Cursor e;
    private String f;
    private String g;
    private String h;
    private TextView i;
    private a<b> j;
    private long k;
    private long l;
    private ListPopupWindow m;
    private com.android.contacts.model.a.b n;
    private boolean o;
    private boolean p;
    private boolean q;
    private String r;
    private int s;
    private int t;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/GroupMembershipView$a.class */
    public final class a<T> extends ArrayAdapter<T> {
        public a(Context context) {
            super(context, 2131427579);
        }

        private boolean a(int i) {
            return (!(getItem(i) instanceof b) || ((b) getItem(i)).c) ? i != getCount() - 1 : false;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            return a(i) ? 0 : 1;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            CheckedTextView checkedTextView = (CheckedTextView) super.getView(i, view, viewGroup);
            if (!a(i)) {
                checkedTextView.setCheckMarkDrawable((Drawable) null);
            }
            return checkedTextView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/GroupMembershipView$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final long f1145a;

        /* renamed from: b  reason: collision with root package name */
        boolean f1146b;
        boolean c = true;
        private final String d;

        public b(long j, String str, boolean z) {
            this.f1145a = j;
            this.d = str;
            this.f1146b = z;
        }

        public final String toString() {
            return this.d;
        }
    }

    public GroupMembershipView(Context context) {
        super(context);
    }

    public GroupMembershipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a() {
        if (this.e == null || this.e.isClosed() || this.g == null || this.f == null) {
            setVisibility(8);
            return;
        }
        this.l = 0L;
        this.k = 0L;
        StringBuilder sb = new StringBuilder();
        this.e.moveToPosition(-1);
        while (this.e.moveToNext()) {
            if (PhoneCapabilityTester.IsAsusDevice()) {
                String string = this.e.getString(1);
                if (!f.b(string) && b(this.e.getLong(0)) && !TextUtils.isEmpty(string)) {
                    if (sb.length() != 0) {
                        sb.append(", ");
                    }
                    sb.append(f.a(getContext(), string));
                }
            } else {
                String string2 = this.e.getString(0);
                String string3 = this.e.getString(1);
                String string4 = this.e.getString(2);
                if (string2.equals(this.f) && string3.equals(this.g) && c.a(string4, this.h)) {
                    long j = this.e.getLong(3);
                    if (!this.e.isNull(6) && this.e.getInt(6) != 0) {
                        this.l = j;
                    } else if (!this.e.isNull(5) && this.e.getInt(5) != 0) {
                        this.k = j;
                    }
                    if (!(j == this.l || j == this.k || !b(j))) {
                        String string5 = this.e.getString(4);
                        if (!TextUtils.isEmpty(string5)) {
                            if (sb.length() != 0) {
                                sb.append(", ");
                            }
                            sb.append(string5);
                        }
                    }
                }
            }
        }
        if (this.i == null) {
            this.i = (TextView) findViewById(2131296902);
            this.i.setOnClickListener(this);
        }
        this.i.setEnabled(isEnabled());
        if (sb.length() == 0) {
            this.i.setText(this.r);
            this.i.setTextColor(this.t);
        } else {
            this.i.setText(sb);
            this.i.setTextColor(this.s);
        }
        setVisibility(0);
        if (!this.o) {
            this.p = this.k != 0 && !b(this.k);
            this.o = true;
        }
    }

    private boolean a(long j) {
        boolean z;
        int count = this.j.getCount();
        int i = 0;
        while (true) {
            if (i >= count) {
                z = false;
                break;
            }
            b item = this.j.getItem(i);
            if (j == item.f1145a) {
                z = item.f1146b;
                break;
            }
            i++;
        }
        return z;
    }

    private boolean b(long j) {
        boolean z;
        if (j != this.k || !this.d.f1987a.n()) {
            ArrayList<RawContactDelta.ValuesDelta> a2 = this.d.a("vnd.android.cursor.item/group_membership", false);
            if (a2 != null) {
                Iterator<RawContactDelta.ValuesDelta> it = a2.iterator();
                while (it.hasNext()) {
                    RawContactDelta.ValuesDelta next = it.next();
                    if (!next.j()) {
                        Long u = PhoneCapabilityTester.IsAsusDevice() ? next.u() : next.q();
                        if (u != null && u.longValue() == j) {
                            z = true;
                            break;
                        }
                    }
                }
            }
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x016c, code lost:
        if (r16 != false) goto L_0x016f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0174, code lost:
        if (r0 >= com.android.contacts.group.f.a()) goto L_0x0177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0179, code lost:
        if (r0 != false) goto L_0x01cc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x017c, code lost:
        r0 = r8.d.a("vnd.android.cursor.item/group_membership", false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x018a, code lost:
        if (r0 == null) goto L_0x01ec;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x018d, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x019b, code lost:
        if (r0.hasNext() == false) goto L_0x01ec;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x019e, code lost:
        r0 = r0.next();
        r0 = r0.u();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01b3, code lost:
        if (r0 == null) goto L_0x0194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01bd, code lost:
        if (r0.longValue() != r0) goto L_0x0194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01c0, code lost:
        r14 = r0.j();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01c9, code lost:
        if (r14 == false) goto L_0x01f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01cc, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01cf, code lost:
        r0.c = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01ec, code lost:
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01f2, code lost:
        r14 = false;
     */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r9) {
        /*
            Method dump skipped, instructions count: 810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.editor.GroupMembershipView.onClick(android.view.View):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.m != null) {
            this.m.dismiss();
            this.m = null;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        Resources resources = getContext().getResources();
        this.s = resources.getColor(2131034392);
        this.t = resources.getColor(2131034400);
        this.r = getContext().getString(2131755676);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListView listView = (ListView) adapterView;
        int count = this.j.getCount();
        if (listView.isItemChecked(count - 1)) {
            listView.setItemChecked(count - 1, false);
            if (this.m != null) {
                this.m.dismiss();
                this.m = null;
            }
            e.a(((Activity) getContext()).getFragmentManager(), this.g, this.f, this.h, new e.a() { // from class: com.android.contacts.editor.GroupMembershipView.1
                @Override // com.android.contacts.interactions.e.a
                public final void a() {
                    GroupMembershipView.this.q = true;
                }
            });
            return;
        }
        for (int i2 = 0; i2 < count; i2++) {
            this.j.getItem(i2).f1146b = listView.isItemChecked(i2);
        }
        ArrayList<RawContactDelta.ValuesDelta> a2 = this.d.a("vnd.android.cursor.item/group_membership", false);
        int i3 = 0;
        if (a2 != null) {
            Iterator<RawContactDelta.ValuesDelta> it = a2.iterator();
            while (true) {
                i3 = 0;
                if (!it.hasNext()) {
                    break;
                }
                RawContactDelta.ValuesDelta next = it.next();
                if (!next.j()) {
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        Long u = next.u();
                        if (!(u == null || u.longValue() == this.l || (u.longValue() == this.k && !this.p))) {
                            if (!a(u.longValue())) {
                                next.o();
                                f1142b.remove(u);
                                f1141a.add(u);
                            }
                        }
                    } else {
                        Long q = next.q();
                        if (!(q == null || q.longValue() == this.l || (q.longValue() == this.k && !this.p))) {
                            if (!a(q.longValue())) {
                                next.o();
                            }
                        }
                    }
                }
            }
        }
        while (i3 < count) {
            b item = this.j.getItem(i3);
            long j2 = item.f1145a;
            if (PhoneCapabilityTester.IsAsusDevice()) {
                if (item.c && item.f1146b && !b(j2)) {
                    com.android.contacts.model.f.b(this.d, this.n).a(CoverUtils.CoverData.COVER_TYPE, j2);
                    f1142b.add(Long.valueOf(j2));
                }
            } else if (item.f1146b && !b(j2)) {
                com.android.contacts.model.f.b(this.d, this.n).a(j2);
            }
            i3++;
        }
        a();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.i != null) {
            this.i.setEnabled(z);
        }
    }

    public void setGroupMetaData(Cursor cursor) {
        this.e = cursor;
        a();
        if (this.q) {
            this.q = false;
            onClick(this);
            if (this.m != null) {
                int count = this.j.getCount() - 2;
                ListView listView = this.m.getListView();
                if (!listView.isItemChecked(count)) {
                    listView.setItemChecked(count, true);
                    onItemClick(listView, null, count, listView.getItemIdAtPosition(count));
                }
            }
        }
    }

    public void setHasPhoneNumber(boolean z) {
        this.c = z;
    }

    public void setKind(com.android.contacts.model.a.b bVar) {
        this.n = bVar;
        ((TextView) findViewById(2131296980)).setText(getResources().getString(bVar.c));
    }

    public void setState(RawContactDelta rawContactDelta) {
        this.d = rawContactDelta;
        this.g = this.d.c();
        this.f = this.d.b();
        this.h = this.d.d();
        this.o = false;
        this.q = false;
        a();
    }
}
