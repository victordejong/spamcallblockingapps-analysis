package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.C0083a;
import androidx.core.p017a.C0438a;
import androidx.p015c.p016a.AbstractC0399c;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"RestrictedAPI"})
/* renamed from: androidx.appcompat.widget.aj */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/aj.class */
public class View$OnClickListenerC0310aj extends AbstractC0399c implements View.OnClickListener {

    /* renamed from: k */
    private final SearchView f1300k;

    /* renamed from: l */
    private final SearchableInfo f1301l;

    /* renamed from: m */
    private final Context f1302m;

    /* renamed from: n */
    private final WeakHashMap<String, Drawable.ConstantState> f1303n;

    /* renamed from: o */
    private final int f1304o;

    /* renamed from: r */
    private ColorStateList f1307r;

    /* renamed from: p */
    private boolean f1305p = false;

    /* renamed from: q */
    private int f1306q = 1;

    /* renamed from: s */
    private int f1308s = -1;

    /* renamed from: t */
    private int f1309t = -1;

    /* renamed from: u */
    private int f1310u = -1;

    /* renamed from: v */
    private int f1311v = -1;

    /* renamed from: w */
    private int f1312w = -1;

    /* renamed from: x */
    private int f1313x = -1;

    /* renamed from: j */
    private final SearchManager f1299j = (SearchManager) this.f1620d.getSystemService("search");

    /* renamed from: androidx.appcompat.widget.aj$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/aj$a.class */
    public static final class C0311a {

        /* renamed from: a */
        public final TextView f1314a;

        /* renamed from: b */
        public final TextView f1315b;

        /* renamed from: c */
        public final ImageView f1316c;

        /* renamed from: d */
        public final ImageView f1317d;

        /* renamed from: e */
        public final ImageView f1318e;

        public C0311a(View view) {
            this.f1314a = (TextView) view.findViewById(16908308);
            this.f1315b = (TextView) view.findViewById(16908309);
            this.f1316c = (ImageView) view.findViewById(16908295);
            this.f1317d = (ImageView) view.findViewById(16908296);
            this.f1318e = (ImageView) view.findViewById(C0083a.C0089f.edit_query);
        }
    }

    public View$OnClickListenerC0310aj(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1300k = searchView;
        this.f1301l = searchableInfo;
        this.f1304o = searchView.getSuggestionCommitIconResId();
        this.f1302m = context;
        this.f1303n = weakHashMap;
    }

    /* renamed from: a */
    private Drawable m21467a(ComponentName componentName) {
        Drawable drawable;
        String flattenToShortString = componentName.flattenToShortString();
        if (this.f1303n.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState = this.f1303n.get(flattenToShortString);
            drawable = constantState == null ? null : constantState.newDrawable(this.f1302m.getResources());
        } else {
            Drawable m21459b = m21459b(componentName);
            this.f1303n.put(flattenToShortString, m21459b == null ? null : m21459b.getConstantState());
            drawable = m21459b;
        }
        return drawable;
    }

    /* renamed from: a */
    private Drawable m21461a(String str) {
        Drawable drawable;
        if (str == null || str.isEmpty() || "0".equals(str)) {
            drawable = null;
        } else {
            try {
                int parseInt = Integer.parseInt(str);
                String str2 = "android.resource://" + this.f1302m.getPackageName() + "/" + parseInt;
                Drawable m21456b = m21456b(str2);
                drawable = m21456b;
                if (m21456b == null) {
                    drawable = C0438a.m20900a(this.f1302m, parseInt);
                    m21460a(str2, drawable);
                }
            } catch (Resources.NotFoundException e) {
                Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
                drawable = null;
            } catch (NumberFormatException e2) {
                Drawable m21456b2 = m21456b(str);
                drawable = m21456b2;
                if (m21456b2 == null) {
                    drawable = m21458b(Uri.parse(str));
                    m21460a(str, drawable);
                }
            }
        }
        return drawable;
    }

    /* renamed from: a */
    private static String m21466a(Cursor cursor, int i) {
        String str;
        if (i == -1) {
            str = null;
        } else {
            try {
                str = cursor.getString(i);
            } catch (Exception e) {
                Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e);
                str = null;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static String m21465a(Cursor cursor, String str) {
        return m21466a(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: a */
    private void m21463a(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    /* renamed from: a */
    private void m21462a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    /* renamed from: a */
    private void m21460a(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1303n.put(str, drawable.getConstantState());
        }
    }

    /* renamed from: b */
    private Drawable m21459b(ComponentName componentName) {
        Drawable drawable;
        PackageManager packageManager = this.f1620d.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                drawable = null;
            } else {
                Drawable drawable2 = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
                if (drawable2 == null) {
                    Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
                    drawable = null;
                } else {
                    drawable = drawable2;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("SuggestionsAdapter", e.toString());
            drawable = null;
        }
        return drawable;
    }

    /* renamed from: b */
    private Drawable m21458b(Uri uri) {
        Drawable drawable;
        try {
        } catch (FileNotFoundException e) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e.getMessage());
            drawable = null;
        }
        if ("android.resource".equals(uri.getScheme())) {
            try {
                drawable = m21464a(uri);
                return drawable;
            } catch (Resources.NotFoundException e2) {
                throw new FileNotFoundException("Resource does not exist: " + uri);
            }
        }
        InputStream openInputStream = this.f1302m.getContentResolver().openInputStream(uri);
        if (openInputStream == null) {
            throw new FileNotFoundException("Failed to open " + uri);
        }
        Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
        try {
            openInputStream.close();
            drawable = createFromStream;
        } catch (IOException e3) {
            Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e3);
            drawable = createFromStream;
        }
        return drawable;
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e.getMessage());
        drawable = null;
        return drawable;
    }

    /* renamed from: b */
    private Drawable m21456b(String str) {
        Drawable.ConstantState constantState = this.f1303n.get(str);
        return constantState == null ? null : constantState.newDrawable();
    }

    /* renamed from: b */
    private CharSequence m21457b(CharSequence charSequence) {
        if (this.f1307r == null) {
            TypedValue typedValue = new TypedValue();
            this.f1620d.getTheme().resolveAttribute(C0083a.C0084a.textColorSearchUrl, typedValue, true);
            this.f1307r = this.f1620d.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1307r, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    /* renamed from: d */
    private void m21455d(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    /* renamed from: e */
    private Drawable m21454e(Cursor cursor) {
        Drawable drawable;
        if (this.f1311v == -1) {
            drawable = null;
        } else {
            Drawable m21461a = m21461a(cursor.getString(this.f1311v));
            drawable = m21461a;
            if (m21461a == null) {
                drawable = m21452g(cursor);
            }
        }
        return drawable;
    }

    /* renamed from: f */
    private Drawable m21453f(Cursor cursor) {
        return this.f1312w == -1 ? null : m21461a(cursor.getString(this.f1312w));
    }

    /* renamed from: g */
    private Drawable m21452g(Cursor cursor) {
        Drawable m21467a = m21467a(this.f1301l.getSearchActivity());
        if (m21467a == null) {
            m21467a = this.f1620d.getPackageManager().getDefaultActivityIcon();
        }
        return m21467a;
    }

    /* renamed from: a */
    Cursor m21468a(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr;
        Cursor cursor = null;
        if (searchableInfo != null && (suggestAuthority = searchableInfo.getSuggestAuthority()) != null) {
            Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
            String suggestPath = searchableInfo.getSuggestPath();
            if (suggestPath != null) {
                fragment.appendEncodedPath(suggestPath);
            }
            fragment.appendPath("search_suggest_query");
            String suggestSelection = searchableInfo.getSuggestSelection();
            if (suggestSelection != null) {
                strArr = new String[]{str};
            } else {
                fragment.appendPath(str);
                strArr = null;
            }
            if (i > 0) {
                fragment.appendQueryParameter("limit", String.valueOf(i));
            }
            cursor = this.f1620d.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
        }
        return cursor;
    }

    @Override // androidx.p015c.p016a.AbstractC0394a, androidx.p015c.p016a.C0397b.AbstractC0398a
    /* renamed from: a */
    public Cursor mo21057a(CharSequence charSequence) {
        Cursor cursor;
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f1300k.getVisibility() == 0 && this.f1300k.getWindowVisibility() == 0) {
            try {
                cursor = m21468a(this.f1301l, charSequence2, 50);
                if (cursor != null) {
                    cursor.getCount();
                }
            } catch (RuntimeException e) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
            }
            cursor = null;
        } else {
            cursor = null;
        }
        return cursor;
    }

    /* renamed from: a */
    Drawable m21464a(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f1620d.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    parseInt = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException e) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else if (size != 2) {
                throw new FileNotFoundException("More than two path segments: " + uri);
            } else {
                parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (parseInt != 0) {
                return resourcesForApplication.getDrawable(parseInt);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    @Override // androidx.p015c.p016a.AbstractC0399c, androidx.p015c.p016a.AbstractC0394a
    /* renamed from: a */
    public View mo21055a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View mo21055a = super.mo21055a(context, cursor, viewGroup);
        mo21055a.setTag(new C0311a(mo21055a));
        ((ImageView) mo21055a.findViewById(C0083a.C0089f.edit_query)).setImageResource(this.f1304o);
        return mo21055a;
    }

    /* renamed from: a */
    public void m21469a(int i) {
        this.f1306q = i;
    }

    @Override // androidx.p015c.p016a.AbstractC0394a, androidx.p015c.p016a.C0397b.AbstractC0398a
    /* renamed from: a */
    public void mo21058a(Cursor cursor) {
        if (this.f1305p) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor == null) {
                return;
            }
            cursor.close();
            return;
        }
        try {
            super.mo21058a(cursor);
            if (cursor == null) {
                return;
            }
            this.f1308s = cursor.getColumnIndex("suggest_text_1");
            this.f1309t = cursor.getColumnIndex("suggest_text_2");
            this.f1310u = cursor.getColumnIndex("suggest_text_2_url");
            this.f1311v = cursor.getColumnIndex("suggest_icon_1");
            this.f1312w = cursor.getColumnIndex("suggest_icon_2");
            this.f1313x = cursor.getColumnIndex("suggest_flags");
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // androidx.p015c.p016a.AbstractC0394a
    /* renamed from: a */
    public void mo21062a(View view, Context context, Cursor cursor) {
        C0311a c0311a = (C0311a) view.getTag();
        int i = this.f1313x != -1 ? cursor.getInt(this.f1313x) : 0;
        if (c0311a.f1314a != null) {
            m21462a(c0311a.f1314a, m21466a(cursor, this.f1308s));
        }
        if (c0311a.f1315b != null) {
            String m21466a = m21466a(cursor, this.f1310u);
            String m21457b = m21466a != null ? m21457b((CharSequence) m21466a) : m21466a(cursor, this.f1309t);
            if (TextUtils.isEmpty(m21457b)) {
                if (c0311a.f1314a != null) {
                    c0311a.f1314a.setSingleLine(false);
                    c0311a.f1314a.setMaxLines(2);
                }
            } else if (c0311a.f1314a != null) {
                c0311a.f1314a.setSingleLine(true);
                c0311a.f1314a.setMaxLines(1);
            }
            m21462a(c0311a.f1315b, m21457b);
        }
        if (c0311a.f1316c != null) {
            m21463a(c0311a.f1316c, m21454e(cursor), 4);
        }
        if (c0311a.f1317d != null) {
            m21463a(c0311a.f1317d, m21453f(cursor), 8);
        }
        if (this.f1306q != 2 && (this.f1306q != 1 || (i & 1) == 0)) {
            c0311a.f1318e.setVisibility(8);
            return;
        }
        c0311a.f1318e.setVisibility(0);
        c0311a.f1318e.setTag(c0311a.f1314a.getText());
        c0311a.f1318e.setOnClickListener(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
        if (r6 != null) goto L5;
     */
    @Override // androidx.p015c.p016a.AbstractC0394a, androidx.p015c.p016a.C0397b.AbstractC0398a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence mo21056b(android.database.Cursor r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto La
            r0 = r5
            r6 = r0
        L8:
            r0 = r6
            return r0
        La:
            r0 = r4
            java.lang.String r1 = "suggest_intent_query"
            java.lang.String r0 = m21465a(r0, r1)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L19
            goto L8
        L19:
            r0 = r3
            android.app.SearchableInfo r0 = r0.f1301l
            boolean r0 = r0.shouldRewriteQueryFromData()
            if (r0 == 0) goto L32
            r0 = r4
            java.lang.String r1 = "suggest_intent_data"
            java.lang.String r0 = m21465a(r0, r1)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L32
            goto L8
        L32:
            r0 = r5
            r6 = r0
            r0 = r3
            android.app.SearchableInfo r0 = r0.f1301l
            boolean r0 = r0.shouldRewriteQueryFromText()
            if (r0 == 0) goto L8
            r0 = r4
            java.lang.String r1 = "suggest_text_1"
            java.lang.String r0 = m21465a(r0, r1)
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L8
            r0 = r4
            r6 = r0
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.View$OnClickListenerC0310aj.mo21056b(android.database.Cursor):java.lang.CharSequence");
    }

    @Override // androidx.p015c.p016a.AbstractC0394a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        View b;
        try {
            b = super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            b = mo21054b(this.f1620d, this.f1619c, viewGroup);
            if (b != null) {
                ((C0311a) b.getTag()).f1314a.setText(e.toString());
            }
        }
        return b;
    }

    @Override // androidx.p015c.p016a.AbstractC0394a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View mo21055a;
        try {
            mo21055a = super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            mo21055a = mo21055a(this.f1620d, this.f1619c, viewGroup);
            if (mo21055a != null) {
                ((C0311a) mo21055a.getTag()).f1314a.setText(e.toString());
            }
        }
        return mo21055a;
    }

    @Override // androidx.p015c.p016a.AbstractC0394a, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m21455d(mo21059a());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m21455d(mo21059a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1300k.m21661a((CharSequence) tag);
        }
    }
}
