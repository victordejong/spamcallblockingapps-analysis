package p012b.p016b.p026q;

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
import androidx.appcompat.widget.SearchView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
import p012b.p016b.C0574a;
import p012b.p016b.C0579f;
import p012b.p042i.p044i.C0869a;
import p012b.p057j.p058a.AbstractC1042c;
/* renamed from: b.b.q.z */
/* loaded from: classes-dex2jar.jar:b/b/q/z.class */
public class View$OnClickListenerC0742z extends AbstractC1042c implements View.OnClickListener {

    /* renamed from: l */
    public final SearchView f3580l;

    /* renamed from: m */
    public final SearchableInfo f3581m;

    /* renamed from: n */
    public final Context f3582n;

    /* renamed from: o */
    public final WeakHashMap<String, Drawable.ConstantState> f3583o;

    /* renamed from: p */
    public final int f3584p;

    /* renamed from: s */
    public ColorStateList f3587s;

    /* renamed from: q */
    public boolean f3585q = false;

    /* renamed from: r */
    public int f3586r = 1;

    /* renamed from: t */
    public int f3588t = -1;

    /* renamed from: u */
    public int f3589u = -1;

    /* renamed from: v */
    public int f3590v = -1;

    /* renamed from: w */
    public int f3591w = -1;

    /* renamed from: x */
    public int f3592x = -1;

    /* renamed from: y */
    public int f3593y = -1;

    /* renamed from: b.b.q.z$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/z$a.class */
    public static final class C0743a {

        /* renamed from: a */
        public final TextView f3594a;

        /* renamed from: b */
        public final TextView f3595b;

        /* renamed from: c */
        public final ImageView f3596c;

        /* renamed from: d */
        public final ImageView f3597d;

        /* renamed from: e */
        public final ImageView f3598e;

        public C0743a(View view) {
            this.f3594a = (TextView) view.findViewById(16908308);
            this.f3595b = (TextView) view.findViewById(16908309);
            this.f3596c = (ImageView) view.findViewById(16908295);
            this.f3597d = (ImageView) view.findViewById(16908296);
            this.f3598e = (ImageView) view.findViewById(C0579f.edit_query);
        }
    }

    public View$OnClickListenerC0742z(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f3580l = searchView;
        this.f3581m = searchableInfo;
        this.f3584p = searchView.getSuggestionCommitIconResId();
        this.f3582n = context;
        this.f3583o = weakHashMap;
    }

    /* renamed from: a */
    public static String m36163a(Cursor cursor, int i) {
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
    public static String m36162a(Cursor cursor, String str) {
        return m36163a(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: a */
    public Cursor m36165a(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr = null;
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
        }
        if (i > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.f4329d.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
    }

    @Override // p012b.p057j.p058a.C1040b.AbstractC1041a
    /* renamed from: a */
    public Cursor mo35077a(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f3580l.getVisibility() != 0 || this.f3580l.getWindowVisibility() != 0) {
            return null;
        }
        try {
            Cursor a = m36165a(this.f3581m, charSequence2, 50);
            if (a == null) {
                return null;
            }
            a.getCount();
            return a;
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
            return null;
        }
    }

    /* renamed from: a */
    public final Drawable m36164a(ComponentName componentName) {
        PackageManager packageManager = this.f4329d.getPackageManager();
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
    public final Drawable m36161a(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return m36155b(uri);
                } catch (Resources.NotFoundException e) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            } else {
                InputStream openInputStream = this.f3582n.getContentResolver().openInputStream(uri);
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

    /* renamed from: a */
    public final Drawable m36158a(String str) {
        Drawable.ConstantState constantState = this.f3583o.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    /* renamed from: a */
    public void m36166a(int i) {
        this.f3586r = i;
    }

    @Override // p012b.p057j.p058a.AbstractC1037a, p012b.p057j.p058a.C1040b.AbstractC1041a
    /* renamed from: a */
    public void mo35078a(Cursor cursor) {
        if (this.f3585q) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.mo35078a(cursor);
            if (cursor != null) {
                this.f3588t = cursor.getColumnIndex("suggest_text_1");
                this.f3589u = cursor.getColumnIndex("suggest_text_2");
                this.f3590v = cursor.getColumnIndex("suggest_text_2_url");
                this.f3591w = cursor.getColumnIndex("suggest_icon_1");
                this.f3592x = cursor.getColumnIndex("suggest_icon_2");
                this.f3593y = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // p012b.p057j.p058a.AbstractC1037a
    /* renamed from: a */
    public void mo35082a(View view, Context context, Cursor cursor) {
        C0743a aVar = (C0743a) view.getTag();
        int i = this.f3593y;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (aVar.f3594a != null) {
            m36159a(aVar.f3594a, m36163a(cursor, this.f3588t));
        }
        if (aVar.f3595b != null) {
            String a = m36163a(cursor, this.f3590v);
            CharSequence b = a != null ? m36154b((CharSequence) a) : m36163a(cursor, this.f3589u);
            if (TextUtils.isEmpty(b)) {
                TextView textView = aVar.f3594a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f3594a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f3594a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f3594a.setMaxLines(1);
                }
            }
            m36159a(aVar.f3595b, b);
        }
        ImageView imageView = aVar.f3596c;
        if (imageView != null) {
            m36160a(imageView, m36151d(cursor), 4);
        }
        ImageView imageView2 = aVar.f3597d;
        if (imageView2 != null) {
            m36160a(imageView2, m36150e(cursor), 8);
        }
        int i3 = this.f3586r;
        if (i3 == 2 || (i3 == 1 && (i2 & 1) != 0)) {
            aVar.f3598e.setVisibility(0);
            aVar.f3598e.setTag(aVar.f3594a.getText());
            aVar.f3598e.setOnClickListener(this);
            return;
        }
        aVar.f3598e.setVisibility(8);
    }

    /* renamed from: a */
    public final void m36160a(ImageView imageView, Drawable drawable, int i) {
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
    public final void m36159a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m36157a(String str, Drawable drawable) {
        if (drawable != null) {
            this.f3583o.put(str, drawable.getConstantState());
        }
    }

    /* renamed from: b */
    public final Drawable m36156b(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        Drawable.ConstantState constantState = null;
        Drawable drawable = null;
        if (this.f3583o.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState2 = this.f3583o.get(flattenToShortString);
            if (constantState2 != null) {
                drawable = constantState2.newDrawable(this.f3582n.getResources());
            }
            return drawable;
        }
        Drawable a = m36164a(componentName);
        if (a != null) {
            constantState = a.getConstantState();
        }
        this.f3583o.put(flattenToShortString, constantState);
        return a;
    }

    /* renamed from: b */
    public Drawable m36155b(Uri uri) throws FileNotFoundException {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.f4329d.getPackageManager().getResourcesForApplication(authority);
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

    /* renamed from: b */
    public final Drawable m36153b(String str) {
        Drawable drawable = null;
        if (str != null) {
            drawable = null;
            if (!str.isEmpty()) {
                if ("0".equals(str)) {
                    drawable = null;
                } else {
                    try {
                        int parseInt = Integer.parseInt(str);
                        String str2 = "android.resource://" + this.f3582n.getPackageName() + "/" + parseInt;
                        Drawable a = m36158a(str2);
                        if (a != null) {
                            return a;
                        }
                        Drawable c = C0869a.m35684c(this.f3582n, parseInt);
                        m36157a(str2, c);
                        return c;
                    } catch (Resources.NotFoundException e) {
                        Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
                        return null;
                    } catch (NumberFormatException e2) {
                        Drawable a2 = m36158a(str);
                        if (a2 != null) {
                            return a2;
                        }
                        drawable = m36161a(Uri.parse(str));
                        m36157a(str, drawable);
                    }
                }
            }
        }
        return drawable;
    }

    @Override // p012b.p057j.p058a.AbstractC1042c, p012b.p057j.p058a.AbstractC1037a
    /* renamed from: b */
    public View mo35074b(Context context, Cursor cursor, ViewGroup viewGroup) {
        View b = super.mo35074b(context, cursor, viewGroup);
        b.setTag(new C0743a(b));
        ((ImageView) b.findViewById(C0579f.edit_query)).setImageResource(this.f3584p);
        return b;
    }

    @Override // p012b.p057j.p058a.AbstractC1037a, p012b.p057j.p058a.C1040b.AbstractC1041a
    /* renamed from: b */
    public CharSequence mo35076b(Cursor cursor) {
        String a;
        String a2;
        if (cursor == null) {
            return null;
        }
        String a3 = m36162a(cursor, "suggest_intent_query");
        if (a3 != null) {
            return a3;
        }
        if (this.f3581m.shouldRewriteQueryFromData() && (a2 = m36162a(cursor, "suggest_intent_data")) != null) {
            return a2;
        }
        if (!this.f3581m.shouldRewriteQueryFromText() || (a = m36162a(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return a;
    }

    /* renamed from: b */
    public final CharSequence m36154b(CharSequence charSequence) {
        if (this.f3587s == null) {
            TypedValue typedValue = new TypedValue();
            this.f4329d.getTheme().resolveAttribute(C0574a.textColorSearchUrl, typedValue, true);
            this.f3587s = this.f4329d.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f3587s, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    /* renamed from: c */
    public final Drawable m36152c() {
        Drawable b = m36156b(this.f3581m.getSearchActivity());
        return b != null ? b : this.f4329d.getPackageManager().getDefaultActivityIcon();
    }

    /* renamed from: d */
    public final Drawable m36151d(Cursor cursor) {
        int i = this.f3591w;
        if (i == -1) {
            return null;
        }
        Drawable b = m36153b(cursor.getString(i));
        return b != null ? b : m36152c();
    }

    /* renamed from: e */
    public final Drawable m36150e(Cursor cursor) {
        int i = this.f3592x;
        if (i == -1) {
            return null;
        }
        return m36153b(cursor.getString(i));
    }

    /* renamed from: f */
    public final void m36149f(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    @Override // p012b.p057j.p058a.AbstractC1037a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View a = mo35075a(this.f4329d, this.f4328c, viewGroup);
            if (a != null) {
                ((C0743a) a.getTag()).f3594a.setText(e.toString());
            }
            return a;
        }
    }

    @Override // p012b.p057j.p058a.AbstractC1037a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View b = mo35074b(this.f4329d, this.f4328c, viewGroup);
            if (b != null) {
                ((C0743a) b.getTag()).f3594a.setText(e.toString());
            }
            return b;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m36149f(mo35079a());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m36149f(mo35079a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f3580l.m38925b((CharSequence) tag);
        }
    }
}
