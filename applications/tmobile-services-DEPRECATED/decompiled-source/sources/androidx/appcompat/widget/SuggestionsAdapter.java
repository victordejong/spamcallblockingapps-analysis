package androidx.appcompat.widget;

import android.annotation.SuppressLint;
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
import androidx.appcompat.C0042R;
import androidx.core.content.ContextCompat;
import androidx.cursoradapter.widget.ResourceCursorAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
@SuppressLint({"RestrictedAPI"})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SuggestionsAdapter.class */
class SuggestionsAdapter extends ResourceCursorAdapter implements View.OnClickListener {

    /* renamed from: r */
    private final SearchView f1285r;

    /* renamed from: s */
    private final SearchableInfo f1286s;

    /* renamed from: t */
    private final Context f1287t;

    /* renamed from: u */
    private final WeakHashMap<String, Drawable.ConstantState> f1288u;

    /* renamed from: v */
    private final int f1289v;

    /* renamed from: y */
    private ColorStateList f1292y;

    /* renamed from: w */
    private boolean f1290w = false;

    /* renamed from: x */
    private int f1291x = 1;

    /* renamed from: z */
    private int f1293z = -1;

    /* renamed from: A */
    private int f1280A = -1;

    /* renamed from: B */
    private int f1281B = -1;

    /* renamed from: C */
    private int f1282C = -1;

    /* renamed from: D */
    private int f1283D = -1;

    /* renamed from: E */
    private int f1284E = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SuggestionsAdapter$ChildViewCache.class */
    public static final class ChildViewCache {

        /* renamed from: a */
        public final TextView f1294a;

        /* renamed from: b */
        public final TextView f1295b;

        /* renamed from: c */
        public final ImageView f1296c;

        /* renamed from: d */
        public final ImageView f1297d;

        /* renamed from: e */
        public final ImageView f1298e;

        public ChildViewCache(View view) {
            this.f1294a = (TextView) view.findViewById(16908308);
            this.f1295b = (TextView) view.findViewById(16908309);
            this.f1296c = (ImageView) view.findViewById(16908295);
            this.f1297d = (ImageView) view.findViewById(16908296);
            this.f1298e = (ImageView) view.findViewById(C0042R.C0045id.edit_query);
        }
    }

    public SuggestionsAdapter(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1285r = searchView;
        this.f1286s = searchableInfo;
        this.f1289v = searchView.getSuggestionCommitIconResId();
        this.f1287t = context;
        this.f1288u = weakHashMap;
    }

    /* renamed from: A */
    private void m21304A(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1288u.put(str, drawable.getConstantState());
        }
    }

    /* renamed from: B */
    private void m21303B(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    /* renamed from: k */
    private Drawable m21302k(String str) {
        Drawable.ConstantState constantState = this.f1288u.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    /* renamed from: l */
    private CharSequence m21301l(CharSequence charSequence) {
        if (this.f1292y == null) {
            TypedValue typedValue = new TypedValue();
            this.f3448i.getTheme().resolveAttribute(C0042R.attr.textColorSearchUrl, typedValue, true);
            this.f1292y = this.f3448i.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1292y, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    /* renamed from: m */
    private Drawable m21300m(ComponentName componentName) {
        PackageManager packageManager = this.f3448i.getPackageManager();
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

    /* renamed from: n */
    private Drawable m21299n(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        Drawable.ConstantState constantState = null;
        Drawable drawable = null;
        if (this.f1288u.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState2 = this.f1288u.get(flattenToShortString);
            if (constantState2 != null) {
                drawable = constantState2.newDrawable(this.f1287t.getResources());
            }
            return drawable;
        }
        Drawable m = m21300m(componentName);
        if (m != null) {
            constantState = m.getConstantState();
        }
        this.f1288u.put(flattenToShortString, constantState);
        return m;
    }

    /* renamed from: o */
    public static String m21298o(Cursor cursor, String str) {
        return m21290w(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: p */
    private Drawable m21297p() {
        Drawable n = m21299n(this.f1286s.getSearchActivity());
        return n != null ? n : this.f3448i.getPackageManager().getDefaultActivityIcon();
    }

    /* renamed from: q */
    private Drawable m21296q(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return m21295r(uri);
                } catch (Resources.NotFoundException e) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            } else {
                InputStream openInputStream = this.f1287t.getContentResolver().openInputStream(uri);
                if (openInputStream != null) {
                    Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
                    try {
                        openInputStream.close();
                    } catch (IOException e2) {
                        Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e2);
                    }
                    return createFromStream;
                }
                throw new FileNotFoundException("Failed to open " + uri);
            }
        } catch (FileNotFoundException e3) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
        return null;
    }

    /* renamed from: s */
    private Drawable m21294s(String str) {
        Drawable drawable = null;
        if (str != null) {
            drawable = null;
            if (!str.isEmpty()) {
                if ("0".equals(str)) {
                    drawable = null;
                } else {
                    try {
                        int parseInt = Integer.parseInt(str);
                        String str2 = "android.resource://" + this.f1287t.getPackageName() + "/" + parseInt;
                        Drawable k = m21302k(str2);
                        if (k != null) {
                            return k;
                        }
                        Drawable f = ContextCompat.m19673f(this.f1287t, parseInt);
                        m21304A(str2, f);
                        return f;
                    } catch (Resources.NotFoundException e) {
                        Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
                        return null;
                    } catch (NumberFormatException e2) {
                        Drawable k2 = m21302k(str);
                        if (k2 != null) {
                            return k2;
                        }
                        drawable = m21296q(Uri.parse(str));
                        m21304A(str, drawable);
                    }
                }
            }
        }
        return drawable;
    }

    /* renamed from: t */
    private Drawable m21293t(Cursor cursor) {
        int i = this.f1282C;
        if (i == -1) {
            return null;
        }
        Drawable s = m21294s(cursor.getString(i));
        return s != null ? s : m21297p();
    }

    /* renamed from: u */
    private Drawable m21292u(Cursor cursor) {
        int i = this.f1283D;
        if (i == -1) {
            return null;
        }
        return m21294s(cursor.getString(i));
    }

    /* renamed from: w */
    private static String m21290w(Cursor cursor, int i) {
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

    /* renamed from: y */
    private void m21288y(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    /* renamed from: z */
    private void m21287z(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    /* renamed from: a */
    public CharSequence mo18801a(Cursor cursor) {
        String o;
        String o2;
        if (cursor == null) {
            return null;
        }
        String o3 = m21298o(cursor, "suggest_intent_query");
        if (o3 != null) {
            return o3;
        }
        if (this.f1286s.shouldRewriteQueryFromData() && (o2 = m21298o(cursor, "suggest_intent_data")) != null) {
            return o2;
        }
        if (!this.f1286s.shouldRewriteQueryFromText() || (o = m21298o(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return o;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    /* renamed from: b */
    public void mo18806b(Cursor cursor) {
        if (this.f1290w) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.mo18806b(cursor);
            if (cursor != null) {
                this.f1293z = cursor.getColumnIndex("suggest_text_1");
                this.f1280A = cursor.getColumnIndex("suggest_text_2");
                this.f1281B = cursor.getColumnIndex("suggest_text_2_url");
                this.f1282C = cursor.getColumnIndex("suggest_icon_1");
                this.f1283D = cursor.getColumnIndex("suggest_icon_2");
                this.f1284E = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    /* renamed from: d */
    public Cursor mo18804d(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f1285r.getVisibility() != 0 || this.f1285r.getWindowVisibility() != 0) {
            return null;
        }
        try {
            Cursor v = m21291v(this.f1286s, charSequence2, 50);
            if (v == null) {
                return null;
            }
            v.getCount();
            return v;
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
            return null;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    /* renamed from: e */
    public void mo18800e(View view, Context context, Cursor cursor) {
        ChildViewCache childViewCache = (ChildViewCache) view.getTag();
        int i = this.f1284E;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (childViewCache.f1294a != null) {
            m21287z(childViewCache.f1294a, m21290w(cursor, this.f1293z));
        }
        if (childViewCache.f1295b != null) {
            String w = m21290w(cursor, this.f1281B);
            CharSequence l = w != null ? m21301l(w) : m21290w(cursor, this.f1280A);
            if (TextUtils.isEmpty(l)) {
                TextView textView = childViewCache.f1294a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    childViewCache.f1294a.setMaxLines(2);
                }
            } else {
                TextView textView2 = childViewCache.f1294a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    childViewCache.f1294a.setMaxLines(1);
                }
            }
            m21287z(childViewCache.f1295b, l);
        }
        ImageView imageView = childViewCache.f1296c;
        if (imageView != null) {
            m21288y(imageView, m21293t(cursor), 4);
        }
        ImageView imageView2 = childViewCache.f1297d;
        if (imageView2 != null) {
            m21288y(imageView2, m21292u(cursor), 8);
        }
        int i3 = this.f1291x;
        if (i3 == 2 || (i3 == 1 && (i2 & 1) != 0)) {
            childViewCache.f1298e.setVisibility(0);
            childViewCache.f1298e.setTag(childViewCache.f1294a.getText());
            childViewCache.f1298e.setOnClickListener(this);
            return;
        }
        childViewCache.f1298e.setVisibility(8);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View g = mo18803g(this.f3448i, this.f3447h, viewGroup);
            if (g != null) {
                ((ChildViewCache) g.getTag()).f1294a.setText(e.toString());
            }
            return g;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View h = mo18802h(this.f3448i, this.f3447h, viewGroup);
            if (h != null) {
                ((ChildViewCache) h.getTag()).f1294a.setText(e.toString());
            }
            return h;
        }
    }

    @Override // androidx.cursoradapter.widget.ResourceCursorAdapter, androidx.cursoradapter.widget.CursorAdapter
    /* renamed from: h */
    public View mo18802h(Context context, Cursor cursor, ViewGroup viewGroup) {
        View h = super.mo18802h(context, cursor, viewGroup);
        h.setTag(new ChildViewCache(h));
        ((ImageView) h.findViewById(C0042R.C0045id.edit_query)).setImageResource(this.f1289v);
        return h;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m21303B(mo18805c());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m21303B(mo18805c());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1285r.m21338U((CharSequence) tag);
        }
    }

    /* renamed from: r */
    Drawable m21295r(Uri uri) throws FileNotFoundException {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.f3448i.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null) {
                    int size = pathSegments.size();
                    if (size == 1) {
                        try {
                            parseInt = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException e) {
                            throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                        }
                    } else if (size == 2) {
                        parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: " + uri);
                    }
                    if (parseInt != 0) {
                        return resourcesForApplication.getDrawable(parseInt);
                    }
                    throw new FileNotFoundException("No resource found for: " + uri);
                }
                throw new FileNotFoundException("No path: " + uri);
            } catch (PackageManager.NameNotFoundException e2) {
                throw new FileNotFoundException("No package found for authority: " + uri);
            }
        } else {
            throw new FileNotFoundException("No authority: " + uri);
        }
    }

    /* renamed from: v */
    Cursor m21291v(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(suggestAuthority).query("").fragment("");
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
        }
        if (i > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.f3448i.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
    }

    /* renamed from: x */
    public void m21289x(int i) {
        this.f1291x = i;
    }
}
