package androidx.appcompat.widget;

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
import androidx.core.content.C0586a;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
import p020b.p021a.C1423a;
import p020b.p021a.C1428f;
import p020b.p053i.p054a.AbstractC1701c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.y */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y.class */
public class View$OnClickListenerC0337y extends AbstractC1701c implements View.OnClickListener {

    /* renamed from: o */
    private final SearchView f1413o;

    /* renamed from: p */
    private final SearchableInfo f1414p;

    /* renamed from: q */
    private final Context f1415q;

    /* renamed from: r */
    private final WeakHashMap<String, Drawable.ConstantState> f1416r;

    /* renamed from: s */
    private final int f1417s;

    /* renamed from: v */
    private ColorStateList f1420v;

    /* renamed from: t */
    private boolean f1418t = false;

    /* renamed from: u */
    private int f1419u = 1;

    /* renamed from: w */
    private int f1421w = -1;

    /* renamed from: x */
    private int f1422x = -1;

    /* renamed from: y */
    private int f1423y = -1;

    /* renamed from: z */
    private int f1424z = -1;

    /* renamed from: A */
    private int f1411A = -1;

    /* renamed from: B */
    private int f1412B = -1;

    /* renamed from: androidx.appcompat.widget.y$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y$a.class */
    public static final class C0338a {

        /* renamed from: a */
        public final TextView f1425a;

        /* renamed from: b */
        public final TextView f1426b;

        /* renamed from: c */
        public final ImageView f1427c;

        /* renamed from: d */
        public final ImageView f1428d;

        /* renamed from: e */
        public final ImageView f1429e;

        public C0338a(View view) {
            this.f1425a = (TextView) view.findViewById(16908308);
            this.f1426b = (TextView) view.findViewById(16908309);
            this.f1427c = (ImageView) view.findViewById(16908295);
            this.f1428d = (ImageView) view.findViewById(16908296);
            this.f1429e = (ImageView) view.findViewById(C1428f.edit_query);
        }
    }

    public View$OnClickListenerC0337y(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1413o = searchView;
        this.f1414p = searchableInfo;
        this.f1417s = searchView.getSuggestionCommitIconResId();
        this.f1415q = context;
        this.f1416r = weakHashMap;
    }

    /* renamed from: A */
    private Drawable m34705A(String str) {
        Drawable drawable = null;
        if (str != null) {
            drawable = null;
            if (!str.isEmpty()) {
                if ("0".equals(str)) {
                    drawable = null;
                } else {
                    try {
                        int parseInt = Integer.parseInt(str);
                        String str2 = "android.resource://" + this.f1415q.getPackageName() + "/" + parseInt;
                        Drawable m34695s = m34695s(str2);
                        if (m34695s != null) {
                            return m34695s;
                        }
                        Drawable m33348f = C0586a.m33348f(this.f1415q, parseInt);
                        m34697I(str2, m33348f);
                        return m33348f;
                    } catch (Resources.NotFoundException e) {
                        Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
                        return null;
                    } catch (NumberFormatException e2) {
                        Drawable m34695s2 = m34695s(str);
                        if (m34695s2 != null) {
                            return m34695s2;
                        }
                        drawable = m34689y(Uri.parse(str));
                        m34697I(str, drawable);
                    }
                }
            }
        }
        return drawable;
    }

    /* renamed from: B */
    private Drawable m34704B(Cursor cursor) {
        int i = this.f1424z;
        if (i == -1) {
            return null;
        }
        Drawable m34705A = m34705A(cursor.getString(i));
        return m34705A != null ? m34705A : m34690x();
    }

    /* renamed from: C */
    private Drawable m34703C(Cursor cursor) {
        int i = this.f1411A;
        if (i == -1) {
            return null;
        }
        return m34705A(cursor.getString(i));
    }

    /* renamed from: E */
    private static String m34701E(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    /* renamed from: G */
    private void m34699G(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    /* renamed from: H */
    private void m34698H(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    /* renamed from: I */
    private void m34697I(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1416r.put(str, drawable.getConstantState());
        }
    }

    /* renamed from: J */
    private void m34696J(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    /* renamed from: s */
    private Drawable m34695s(String str) {
        Drawable.ConstantState constantState = this.f1416r.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    /* renamed from: t */
    private CharSequence m34694t(CharSequence charSequence) {
        if (this.f1420v == null) {
            TypedValue typedValue = new TypedValue();
            this.f1415q.getTheme().resolveAttribute(C1423a.textColorSearchUrl, typedValue, true);
            this.f1420v = this.f1415q.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1420v, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    /* renamed from: u */
    private Drawable m34693u(ComponentName componentName) {
        PackageManager packageManager = this.f1415q.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("SuggestionsAdapter", e.toString());
            return null;
        }
    }

    /* renamed from: v */
    private Drawable m34692v(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        if (this.f1416r.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState = this.f1416r.get(flattenToShortString);
            return constantState == null ? null : constantState.newDrawable(this.f1415q.getResources());
        }
        Drawable m34693u = m34693u(componentName);
        this.f1416r.put(flattenToShortString, m34693u == null ? null : m34693u.getConstantState());
        return m34693u;
    }

    /* renamed from: w */
    public static String m34691w(Cursor cursor, String str) {
        return m34701E(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: x */
    private Drawable m34690x() {
        Drawable m34692v = m34692v(this.f1414p.getSearchActivity());
        return m34692v != null ? m34692v : this.f1415q.getPackageManager().getDefaultActivityIcon();
    }

    /* renamed from: y */
    private Drawable m34689y(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return m34688z(uri);
                } catch (Resources.NotFoundException e) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.f1415q.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
            try {
                openInputStream.close();
            } catch (IOException e2) {
                Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e2);
            }
            return createFromStream;
        } catch (FileNotFoundException e3) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
        return null;
    }

    /* renamed from: D */
    Cursor m34702D(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
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
        return this.f1415q.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
    }

    /* renamed from: F */
    public void m34700F(int i) {
        this.f1419u = i;
    }

    @Override // p020b.p053i.p054a.AbstractC1696a, p020b.p053i.p054a.C1699b.AbstractC1700a
    /* renamed from: a */
    public void mo29200a(Cursor cursor) {
        if (this.f1418t) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor == null) {
                return;
            }
            cursor.close();
            return;
        }
        try {
            super.mo29200a(cursor);
            if (cursor == null) {
                return;
            }
            this.f1421w = cursor.getColumnIndex("suggest_text_1");
            this.f1422x = cursor.getColumnIndex("suggest_text_2");
            this.f1423y = cursor.getColumnIndex("suggest_text_2_url");
            this.f1424z = cursor.getColumnIndex("suggest_icon_1");
            this.f1411A = cursor.getColumnIndex("suggest_icon_2");
            this.f1412B = cursor.getColumnIndex("suggest_flags");
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // p020b.p053i.p054a.AbstractC1696a, p020b.p053i.p054a.C1699b.AbstractC1700a
    /* renamed from: c */
    public CharSequence mo29198c(Cursor cursor) {
        String m34691w;
        String m34691w2;
        if (cursor == null) {
            return null;
        }
        String m34691w3 = m34691w(cursor, "suggest_intent_query");
        if (m34691w3 != null) {
            return m34691w3;
        }
        if (this.f1414p.shouldRewriteQueryFromData() && (m34691w2 = m34691w(cursor, "suggest_intent_data")) != null) {
            return m34691w2;
        }
        if (this.f1414p.shouldRewriteQueryFromText() && (m34691w = m34691w(cursor, "suggest_text_1")) != null) {
            return m34691w;
        }
        return null;
    }

    @Override // p020b.p053i.p054a.C1699b.AbstractC1700a
    /* renamed from: d */
    public Cursor mo29197d(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f1413o.getVisibility() == 0 && this.f1413o.getWindowVisibility() == 0) {
            try {
                Cursor m34702D = m34702D(this.f1414p, charSequence2, 50);
                if (m34702D == null) {
                    return null;
                }
                m34702D.getCount();
                return m34702D;
            } catch (RuntimeException e) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
                return null;
            }
        }
        return null;
    }

    @Override // p020b.p053i.p054a.AbstractC1696a
    /* renamed from: e */
    public void mo29204e(View view, Context context, Cursor cursor) {
        C0338a c0338a = (C0338a) view.getTag();
        int i = this.f1412B;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (c0338a.f1425a != null) {
            m34698H(c0338a.f1425a, m34701E(cursor, this.f1421w));
        }
        if (c0338a.f1426b != null) {
            String m34701E = m34701E(cursor, this.f1423y);
            String m34694t = m34701E != null ? m34694t(m34701E) : m34701E(cursor, this.f1422x);
            if (TextUtils.isEmpty(m34694t)) {
                TextView textView = c0338a.f1425a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    c0338a.f1425a.setMaxLines(2);
                }
            } else {
                TextView textView2 = c0338a.f1425a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    c0338a.f1425a.setMaxLines(1);
                }
            }
            m34698H(c0338a.f1426b, m34694t);
        }
        ImageView imageView = c0338a.f1427c;
        if (imageView != null) {
            m34699G(imageView, m34704B(cursor), 4);
        }
        ImageView imageView2 = c0338a.f1428d;
        if (imageView2 != null) {
            m34699G(imageView2, m34703C(cursor), 8);
        }
        int i3 = this.f1419u;
        if (i3 != 2 && (i3 != 1 || (i2 & 1) == 0)) {
            c0338a.f1429e.setVisibility(8);
            return;
        }
        c0338a.f1429e.setVisibility(0);
        c0338a.f1429e.setTag(c0338a.f1425a.getText());
        c0338a.f1429e.setOnClickListener(this);
    }

    @Override // p020b.p053i.p054a.AbstractC1696a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View mo29196o = mo29196o(this.f1415q, mo29199b(), viewGroup);
            if (mo29196o != null) {
                ((C0338a) mo29196o.getTag()).f1425a.setText(e.toString());
            }
            return mo29196o;
        }
    }

    @Override // p020b.p053i.p054a.AbstractC1696a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View mo29195p = mo29195p(this.f1415q, mo29199b(), viewGroup);
            if (mo29195p != null) {
                ((C0338a) mo29195p.getTag()).f1425a.setText(e.toString());
            }
            return mo29195p;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m34696J(mo29199b());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m34696J(mo29199b());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1413o.m35085U((CharSequence) tag);
        }
    }

    @Override // p020b.p053i.p054a.AbstractC1701c, p020b.p053i.p054a.AbstractC1696a
    /* renamed from: p */
    public View mo29195p(Context context, Cursor cursor, ViewGroup viewGroup) {
        View mo29195p = super.mo29195p(context, cursor, viewGroup);
        mo29195p.setTag(new C0338a(mo29195p));
        ((ImageView) mo29195p.findViewById(C1428f.edit_query)).setImageResource(this.f1417s);
        return mo29195p;
    }

    /* renamed from: z */
    Drawable m34688z(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f1415q.getPackageManager().getResourcesForApplication(authority);
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
}
