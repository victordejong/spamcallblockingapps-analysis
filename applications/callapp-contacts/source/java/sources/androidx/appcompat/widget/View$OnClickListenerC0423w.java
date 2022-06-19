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
import androidx.appcompat.C0142a;
import androidx.core.content.C0790b;
import androidx.p040d.p041a.AbstractC0983c;
import com.mopub.common.Constants;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.w */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w.class */
public final class View$OnClickListenerC0423w extends AbstractC0983c implements View.OnClickListener {

    /* renamed from: k */
    private final SearchView f1665k;

    /* renamed from: l */
    private final SearchableInfo f1666l;

    /* renamed from: m */
    private final Context f1667m;

    /* renamed from: n */
    private final WeakHashMap<String, Drawable.ConstantState> f1668n;

    /* renamed from: o */
    private final int f1669o;

    /* renamed from: q */
    private ColorStateList f1671q;

    /* renamed from: p */
    private boolean f1670p = false;

    /* renamed from: a */
    int f1664a = 1;

    /* renamed from: r */
    private int f1672r = -1;

    /* renamed from: s */
    private int f1673s = -1;

    /* renamed from: t */
    private int f1674t = -1;

    /* renamed from: u */
    private int f1675u = -1;

    /* renamed from: v */
    private int f1676v = -1;

    /* renamed from: w */
    private int f1677w = -1;

    /* renamed from: androidx.appcompat.widget.w$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w$a.class */
    public static final class C0424a {

        /* renamed from: a */
        public final TextView f1678a;

        /* renamed from: b */
        public final TextView f1679b;

        /* renamed from: c */
        public final ImageView f1680c;

        /* renamed from: d */
        public final ImageView f1681d;

        /* renamed from: e */
        public final ImageView f1682e;

        public C0424a(View view) {
            this.f1678a = (TextView) view.findViewById(16908308);
            this.f1679b = (TextView) view.findViewById(16908309);
            this.f1680c = (ImageView) view.findViewById(16908295);
            this.f1681d = (ImageView) view.findViewById(16908296);
            this.f1682e = (ImageView) view.findViewById(C0142a.C0148f.edit_query);
        }
    }

    public View$OnClickListenerC0423w(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.f1343h, (Cursor) null, true);
        this.f1665k = searchView;
        this.f1666l = searchableInfo;
        this.f1669o = searchView.f1344i;
        this.f1667m = context;
        this.f1668n = weakHashMap;
    }

    /* renamed from: a */
    private Drawable m45584a(ComponentName componentName) {
        PackageManager packageManager = this.f3923e.getPackageManager();
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

    /* renamed from: a */
    private Drawable m45581a(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return m45576b(uri);
                } catch (Resources.NotFoundException e) {
                    throw new FileNotFoundException("Resource does not exist: ".concat(String.valueOf(uri)));
                }
            }
            InputStream openInputStream = this.f1667m.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                throw new FileNotFoundException("Failed to open ".concat(String.valueOf(uri)));
            }
            Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
            try {
                openInputStream.close();
            } catch (IOException e2) {
                Log.e("SuggestionsAdapter", "Error closing icon stream for ".concat(String.valueOf(uri)), e2);
            }
            return createFromStream;
        } catch (FileNotFoundException e3) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
        return null;
    }

    /* renamed from: a */
    private Drawable m45578a(String str) {
        Drawable drawable = null;
        if (str != null) {
            drawable = null;
            if (!str.isEmpty()) {
                if ("0".equals(str)) {
                    drawable = null;
                } else {
                    try {
                        int parseInt = Integer.parseInt(str);
                        String str2 = "android.resource://" + this.f1667m.getPackageName() + "/" + parseInt;
                        Drawable m45575b = m45575b(str2);
                        if (m45575b != null) {
                            return m45575b;
                        }
                        Drawable m44502a = C0790b.m44502a(this.f1667m, parseInt);
                        m45577a(str2, m44502a);
                        return m44502a;
                    } catch (Resources.NotFoundException e) {
                        Log.w("SuggestionsAdapter", "Icon resource not found: ".concat(String.valueOf(str)));
                        return null;
                    } catch (NumberFormatException e2) {
                        Drawable m45575b2 = m45575b(str);
                        if (m45575b2 != null) {
                            return m45575b2;
                        }
                        drawable = m45581a(Uri.parse(str));
                        m45577a(str, drawable);
                    }
                }
            }
        }
        return drawable;
    }

    /* renamed from: a */
    private static String m45583a(Cursor cursor, int i) {
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

    /* renamed from: a */
    public static String m45582a(Cursor cursor, String str) {
        return m45583a(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: a */
    private static void m45580a(ImageView imageView, Drawable drawable, int i) {
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
    private static void m45579a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    /* renamed from: a */
    private void m45577a(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1668n.put(str, drawable.getConstantState());
        }
    }

    /* renamed from: b */
    private Drawable m45576b(Uri uri) throws FileNotFoundException {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.f3923e.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments == null) {
                    throw new FileNotFoundException("No path: ".concat(String.valueOf(uri)));
                }
                int size = pathSegments.size();
                if (size == 1) {
                    try {
                        parseInt = Integer.parseInt(pathSegments.get(0));
                    } catch (NumberFormatException e) {
                        throw new FileNotFoundException("Single path segment is not a resource ID: ".concat(String.valueOf(uri)));
                    }
                } else if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: ".concat(String.valueOf(uri)));
                } else {
                    parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                }
                if (parseInt == 0) {
                    throw new FileNotFoundException("No resource found for: ".concat(String.valueOf(uri)));
                }
                return resourcesForApplication.getDrawable(parseInt);
            } catch (PackageManager.NameNotFoundException e2) {
                throw new FileNotFoundException("No package found for authority: ".concat(String.valueOf(uri)));
            }
        }
        throw new FileNotFoundException("No authority: ".concat(String.valueOf(uri)));
    }

    /* renamed from: b */
    private Drawable m45575b(String str) {
        Drawable.ConstantState constantState = this.f1668n.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    /* renamed from: c */
    private static void m45574c(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    @Override // androidx.p040d.p041a.AbstractC0978a, androidx.p040d.p041a.C0981b.AbstractC0982a
    /* renamed from: a */
    public final Cursor mo43874a(CharSequence charSequence) {
        Cursor cursor;
        String suggestAuthority;
        String[] strArr;
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f1665k.getVisibility() == 0 && this.f1665k.getWindowVisibility() == 0) {
            try {
                SearchableInfo searchableInfo = this.f1666l;
                if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
                    cursor = null;
                } else {
                    Uri.Builder fragment = new Uri.Builder().scheme(Constants.VAST_TRACKER_CONTENT).authority(suggestAuthority).query("").fragment("");
                    String suggestPath = searchableInfo.getSuggestPath();
                    if (suggestPath != null) {
                        fragment.appendEncodedPath(suggestPath);
                    }
                    fragment.appendPath("search_suggest_query");
                    String suggestSelection = searchableInfo.getSuggestSelection();
                    if (suggestSelection != null) {
                        strArr = new String[]{charSequence2};
                    } else {
                        fragment.appendPath(charSequence2);
                        strArr = null;
                    }
                    fragment.appendQueryParameter("limit", "50");
                    cursor = this.f3923e.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
                }
                if (cursor == null) {
                    return null;
                }
                cursor.getCount();
                return cursor;
            } catch (RuntimeException e) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
                return null;
            }
        }
        return null;
    }

    @Override // androidx.p040d.p041a.AbstractC0983c, androidx.p040d.p041a.AbstractC0978a
    /* renamed from: a */
    public final View mo43872a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View mo43872a = super.mo43872a(context, cursor, viewGroup);
        mo43872a.setTag(new C0424a(mo43872a));
        ((ImageView) mo43872a.findViewById(C0142a.C0148f.edit_query)).setImageResource(this.f1669o);
        return mo43872a;
    }

    @Override // androidx.p040d.p041a.AbstractC0978a, androidx.p040d.p041a.C0981b.AbstractC0982a
    /* renamed from: a */
    public final void mo43875a(Cursor cursor) {
        if (this.f1670p) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor == null) {
                return;
            }
            cursor.close();
            return;
        }
        try {
            super.mo43875a(cursor);
            if (cursor == null) {
                return;
            }
            this.f1672r = cursor.getColumnIndex("suggest_text_1");
            this.f1673s = cursor.getColumnIndex("suggest_text_2");
            this.f1674t = cursor.getColumnIndex("suggest_text_2_url");
            this.f1675u = cursor.getColumnIndex("suggest_icon_1");
            this.f1676v = cursor.getColumnIndex("suggest_icon_2");
            this.f1677w = cursor.getColumnIndex("suggest_flags");
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // androidx.p040d.p041a.AbstractC0978a
    /* renamed from: a */
    public final void mo43878a(View view, Cursor cursor) {
        Drawable drawable;
        SpannableString spannableString;
        C0424a c0424a = (C0424a) view.getTag();
        int i = this.f1677w;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (c0424a.f1678a != null) {
            m45579a(c0424a.f1678a, m45583a(cursor, this.f1672r));
        }
        if (c0424a.f1679b != null) {
            String m45583a = m45583a(cursor, this.f1674t);
            if (m45583a != null) {
                if (this.f1671q == null) {
                    TypedValue typedValue = new TypedValue();
                    this.f3923e.getTheme().resolveAttribute(C0142a.C0143a.textColorSearchUrl, typedValue, true);
                    this.f1671q = this.f3923e.getResources().getColorStateList(typedValue.resourceId);
                }
                SpannableString spannableString2 = new SpannableString(m45583a);
                spannableString2.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1671q, null), 0, m45583a.length(), 33);
                spannableString = spannableString2;
            } else {
                spannableString = m45583a(cursor, this.f1673s);
            }
            if (TextUtils.isEmpty(spannableString)) {
                if (c0424a.f1678a != null) {
                    c0424a.f1678a.setSingleLine(false);
                    c0424a.f1678a.setMaxLines(2);
                }
            } else if (c0424a.f1678a != null) {
                c0424a.f1678a.setSingleLine(true);
                c0424a.f1678a.setMaxLines(1);
            }
            m45579a(c0424a.f1679b, spannableString);
        }
        if (c0424a.f1680c != null) {
            ImageView imageView = c0424a.f1680c;
            int i3 = this.f1675u;
            if (i3 == -1) {
                drawable = null;
            } else {
                drawable = m45578a(cursor.getString(i3));
                if (drawable == null) {
                    ComponentName searchActivity = this.f1666l.getSearchActivity();
                    String flattenToShortString = searchActivity.flattenToShortString();
                    if (this.f1668n.containsKey(flattenToShortString)) {
                        Drawable.ConstantState constantState = this.f1668n.get(flattenToShortString);
                        drawable = constantState == null ? null : constantState.newDrawable(this.f1667m.getResources());
                    } else {
                        Drawable m45584a = m45584a(searchActivity);
                        this.f1668n.put(flattenToShortString, m45584a == null ? null : m45584a.getConstantState());
                        drawable = m45584a;
                    }
                    if (drawable == null) {
                        drawable = this.f3923e.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            m45580a(imageView, drawable, 4);
        }
        if (c0424a.f1681d != null) {
            ImageView imageView2 = c0424a.f1681d;
            int i4 = this.f1676v;
            m45580a(imageView2, i4 == -1 ? null : m45578a(cursor.getString(i4)), 8);
        }
        int i5 = this.f1664a;
        if (i5 != 2 && (i5 != 1 || (i2 & 1) == 0)) {
            c0424a.f1682e.setVisibility(8);
            return;
        }
        c0424a.f1682e.setVisibility(0);
        c0424a.f1682e.setTag(c0424a.f1678a.getText());
        c0424a.f1682e.setOnClickListener(this);
    }

    @Override // androidx.p040d.p041a.AbstractC0978a, androidx.p040d.p041a.C0981b.AbstractC0982a
    /* renamed from: b */
    public final CharSequence mo43873b(Cursor cursor) {
        String m45582a;
        String m45582a2;
        if (cursor == null) {
            return null;
        }
        String m45582a3 = m45582a(cursor, "suggest_intent_query");
        if (m45582a3 != null) {
            return m45582a3;
        }
        if (this.f1666l.shouldRewriteQueryFromData() && (m45582a2 = m45582a(cursor, "suggest_intent_data")) != null) {
            return m45582a2;
        }
        if (this.f1666l.shouldRewriteQueryFromText() && (m45582a = m45582a(cursor, "suggest_text_1")) != null) {
            return m45582a;
        }
        return null;
    }

    @Override // androidx.p040d.p041a.AbstractC0978a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View b = mo43871b(this.f3923e, this.f3922d, viewGroup);
            if (b != null) {
                ((C0424a) b.getTag()).f1678a.setText(e.toString());
            }
            return b;
        }
    }

    @Override // androidx.p040d.p041a.AbstractC0978a, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View mo43872a = mo43872a(this.f3923e, this.f3922d, viewGroup);
            if (mo43872a != null) {
                ((C0424a) mo43872a.getTag()).f1678a.setText(e.toString());
            }
            return mo43872a;
        }
    }

    @Override // androidx.p040d.p041a.AbstractC0978a, android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m45574c(mo43876a());
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m45574c(mo43876a());
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1665k.m45893b((CharSequence) tag);
        }
    }
}
