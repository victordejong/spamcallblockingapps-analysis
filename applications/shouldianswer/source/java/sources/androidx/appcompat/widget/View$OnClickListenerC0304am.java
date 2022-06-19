package androidx.appcompat.widget;

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
import androidx.appcompat.C0051a;
import androidx.core.p015a.C0409a;
import androidx.p027d.p028a.AbstractC0629c;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.am */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/am.class */
public class View$OnClickListenerC0304am extends AbstractC0629c implements View.OnClickListener {

    /* renamed from: k */
    private final SearchView f1243k;

    /* renamed from: l */
    private final SearchableInfo f1244l;

    /* renamed from: m */
    private final Context f1245m;

    /* renamed from: n */
    private final WeakHashMap<String, Drawable.ConstantState> f1246n;

    /* renamed from: o */
    private final int f1247o;

    /* renamed from: r */
    private ColorStateList f1250r;

    /* renamed from: p */
    private boolean f1248p = false;

    /* renamed from: q */
    private int f1249q = 1;

    /* renamed from: s */
    private int f1251s = -1;

    /* renamed from: t */
    private int f1252t = -1;

    /* renamed from: u */
    private int f1253u = -1;

    /* renamed from: v */
    private int f1254v = -1;

    /* renamed from: w */
    private int f1255w = -1;

    /* renamed from: x */
    private int f1256x = -1;

    /* renamed from: j */
    private final SearchManager f1242j = (SearchManager) this.f2077d.getSystemService(FirebaseAnalytics.Event.SEARCH);

    /* renamed from: androidx.appcompat.widget.am$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/am$a.class */
    public static final class C0305a {

        /* renamed from: a */
        public final TextView f1257a;

        /* renamed from: b */
        public final TextView f1258b;

        /* renamed from: c */
        public final ImageView f1259c;

        /* renamed from: d */
        public final ImageView f1260d;

        /* renamed from: e */
        public final ImageView f1261e;

        public C0305a(View view) {
            this.f1257a = (TextView) view.findViewById(16908308);
            this.f1258b = (TextView) view.findViewById(16908309);
            this.f1259c = (ImageView) view.findViewById(16908295);
            this.f1260d = (ImageView) view.findViewById(16908296);
            this.f1261e = (ImageView) view.findViewById(C0051a.C0057f.edit_query);
        }
    }

    public View$OnClickListenerC0304am(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1243k = searchView;
        this.f1244l = searchableInfo;
        this.f1247o = searchView.getSuggestionCommitIconResId();
        this.f1245m = context;
        this.f1246n = weakHashMap;
    }

    /* renamed from: a */
    private Drawable m7190a(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        if (this.f1246n.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState = this.f1246n.get(flattenToShortString);
            return constantState == null ? null : constantState.newDrawable(this.f1245m.getResources());
        }
        Drawable m7182b = m7182b(componentName);
        this.f1246n.put(flattenToShortString, m7182b == null ? null : m7182b.getConstantState());
        return m7182b;
    }

    /* renamed from: a */
    private Drawable m7184a(String str) {
        Drawable drawable = null;
        if (str != null) {
            drawable = null;
            if (!str.isEmpty()) {
                if ("0".equals(str)) {
                    drawable = null;
                } else {
                    try {
                        int parseInt = Integer.parseInt(str);
                        String str2 = "android.resource://" + this.f1245m.getPackageName() + "/" + parseInt;
                        Drawable m7179b = m7179b(str2);
                        if (m7179b != null) {
                            return m7179b;
                        }
                        Drawable m6753a = C0409a.m6753a(this.f1245m, parseInt);
                        m7183a(str2, m6753a);
                        return m6753a;
                    } catch (Resources.NotFoundException e) {
                        Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
                        return null;
                    } catch (NumberFormatException e2) {
                        Drawable m7179b2 = m7179b(str);
                        if (m7179b2 != null) {
                            return m7179b2;
                        }
                        drawable = m7181b(Uri.parse(str));
                        m7183a(str, drawable);
                    }
                }
            }
        }
        return drawable;
    }

    /* renamed from: a */
    private static String m7189a(Cursor cursor, int i) {
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
    public static String m7188a(Cursor cursor, String str) {
        return m7189a(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: a */
    private void m7186a(ImageView imageView, Drawable drawable, int i) {
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
    private void m7185a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    /* renamed from: a */
    private void m7183a(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1246n.put(str, drawable.getConstantState());
        }
    }

    /* renamed from: b */
    private Drawable m7182b(ComponentName componentName) {
        PackageManager packageManager = this.f2077d.getPackageManager();
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

    /* renamed from: b */
    private Drawable m7181b(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return m7187a(uri);
                } catch (Resources.NotFoundException e) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.f1245m.getContentResolver().openInputStream(uri);
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

    /* renamed from: b */
    private Drawable m7179b(String str) {
        Drawable.ConstantState constantState = this.f1246n.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    /* renamed from: b */
    private CharSequence m7180b(CharSequence charSequence) {
        if (this.f1250r == null) {
            TypedValue typedValue = new TypedValue();
            this.f2077d.getTheme().resolveAttribute(C0051a.C0052a.textColorSearchUrl, typedValue, true);
            this.f1250r = this.f2077d.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1250r, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    /* renamed from: d */
    private void m7178d(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    /* renamed from: e */
    private Drawable m7177e(Cursor cursor) {
        int i = this.f1254v;
        if (i == -1) {
            return null;
        }
        Drawable m7184a = m7184a(cursor.getString(i));
        return m7184a != null ? m7184a : m7175g(cursor);
    }

    /* renamed from: f */
    private Drawable m7176f(Cursor cursor) {
        int i = this.f1255w;
        if (i == -1) {
            return null;
        }
        return m7184a(cursor.getString(i));
    }

    /* renamed from: g */
    private Drawable m7175g(Cursor cursor) {
        Drawable m7190a = m7190a(this.f1244l.getSearchActivity());
        return m7190a != null ? m7190a : this.f2077d.getPackageManager().getDefaultActivityIcon();
    }

    /* renamed from: a */
    Cursor m7191a(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr;
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
            strArr = null;
        }
        if (i > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.f2077d.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
    }

    @Override // androidx.p027d.p028a.AbstractC0624a, androidx.p027d.p028a.C0627b.AbstractC0628a
    /* renamed from: a */
    public Cursor mo5881a(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f1243k.getVisibility() == 0 && this.f1243k.getWindowVisibility() == 0) {
            try {
                Cursor m7191a = m7191a(this.f1244l, charSequence2, 50);
                if (m7191a == null) {
                    return null;
                }
                m7191a.getCount();
                return m7191a;
            } catch (RuntimeException e) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    Drawable m7187a(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f2077d.getPackageManager().getResourcesForApplication(authority);
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

    @Override // androidx.p027d.p028a.AbstractC0629c, androidx.p027d.p028a.AbstractC0624a
    /* renamed from: a */
    public View mo5879a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View mo5879a = super.mo5879a(context, cursor, viewGroup);
        mo5879a.setTag(new C0305a(mo5879a));
        ((ImageView) mo5879a.findViewById(C0051a.C0057f.edit_query)).setImageResource(this.f1247o);
        return mo5879a;
    }

    /* renamed from: a */
    public void m7192a(int i) {
        this.f1249q = i;
    }

    @Override // androidx.p027d.p028a.AbstractC0624a, androidx.p027d.p028a.C0627b.AbstractC0628a
    /* renamed from: a */
    public void mo5882a(Cursor cursor) {
        if (this.f1248p) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor == null) {
                return;
            }
            cursor.close();
            return;
        }
        try {
            super.mo5882a(cursor);
            if (cursor == null) {
                return;
            }
            this.f1251s = cursor.getColumnIndex("suggest_text_1");
            this.f1252t = cursor.getColumnIndex("suggest_text_2");
            this.f1253u = cursor.getColumnIndex("suggest_text_2_url");
            this.f1254v = cursor.getColumnIndex("suggest_icon_1");
            this.f1255w = cursor.getColumnIndex("suggest_icon_2");
            this.f1256x = cursor.getColumnIndex("suggest_flags");
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // androidx.p027d.p028a.AbstractC0624a
    /* renamed from: a */
    public void mo5886a(View view, Context context, Cursor cursor) {
        C0305a c0305a = (C0305a) view.getTag();
        int i = this.f1256x;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (c0305a.f1257a != null) {
            m7185a(c0305a.f1257a, m7189a(cursor, this.f1251s));
        }
        if (c0305a.f1258b != null) {
            String m7189a = m7189a(cursor, this.f1253u);
            String m7180b = m7189a != null ? m7180b((CharSequence) m7189a) : m7189a(cursor, this.f1252t);
            if (TextUtils.isEmpty(m7180b)) {
                if (c0305a.f1257a != null) {
                    c0305a.f1257a.setSingleLine(false);
                    c0305a.f1257a.setMaxLines(2);
                }
            } else if (c0305a.f1257a != null) {
                c0305a.f1257a.setSingleLine(true);
                c0305a.f1257a.setMaxLines(1);
            }
            m7185a(c0305a.f1258b, m7180b);
        }
        if (c0305a.f1259c != null) {
            m7186a(c0305a.f1259c, m7177e(cursor), 4);
        }
        if (c0305a.f1260d != null) {
            m7186a(c0305a.f1260d, m7176f(cursor), 8);
        }
        int i3 = this.f1249q;
        if (i3 != 2 && (i3 != 1 || (i2 & 1) == 0)) {
            c0305a.f1261e.setVisibility(8);
            return;
        }
        c0305a.f1261e.setVisibility(0);
        c0305a.f1261e.setTag(c0305a.f1257a.getText());
        c0305a.f1261e.setOnClickListener(this);
    }

    @Override // androidx.p027d.p028a.AbstractC0624a, androidx.p027d.p028a.C0627b.AbstractC0628a
    /* renamed from: b */
    public CharSequence mo5880b(Cursor cursor) {
        String m7188a;
        String m7188a2;
        if (cursor == null) {
            return null;
        }
        String m7188a3 = m7188a(cursor, "suggest_intent_query");
        if (m7188a3 != null) {
            return m7188a3;
        }
        if (this.f1244l.shouldRewriteQueryFromData() && (m7188a2 = m7188a(cursor, "suggest_intent_data")) != null) {
            return m7188a2;
        }
        if (this.f1244l.shouldRewriteQueryFromText() && (m7188a = m7188a(cursor, "suggest_text_1")) != null) {
            return m7188a;
        }
        return null;
    }

    @Override // androidx.p027d.p028a.AbstractC0624a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View b = mo5878b(this.f2077d, this.f2076c, viewGroup);
            if (b != null) {
                ((C0305a) b.getTag()).f1257a.setText(e.toString());
            }
            return b;
        }
    }

    @Override // androidx.p027d.p028a.AbstractC0624a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View mo5879a = mo5879a(this.f2077d, this.f2076c, viewGroup);
            if (mo5879a != null) {
                ((C0305a) mo5879a.getTag()).f1257a.setText(e.toString());
            }
            return mo5879a;
        }
    }

    @Override // androidx.p027d.p028a.AbstractC0624a, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m7178d(mo5883a());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m7178d(mo5883a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1243k.m7379a((CharSequence) tag);
        }
    }
}
