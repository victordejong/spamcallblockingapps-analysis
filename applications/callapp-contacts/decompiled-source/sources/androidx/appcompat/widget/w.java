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
import androidx.appcompat.a;
import androidx.core.content.b;
import androidx.d.a.c;
import com.mopub.common.Constants;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w.class */
final class w extends c implements View.OnClickListener {
    private final SearchView k;
    private final SearchableInfo l;
    private final Context m;
    private final WeakHashMap<String, Drawable.ConstantState> n;
    private final int o;
    private ColorStateList q;
    private boolean p = false;

    /* renamed from: a  reason: collision with root package name */
    int f1139a = 1;
    private int r = -1;
    private int s = -1;
    private int t = -1;
    private int u = -1;
    private int v = -1;
    private int w = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final TextView f1140a;

        /* renamed from: b  reason: collision with root package name */
        public final TextView f1141b;

        /* renamed from: c  reason: collision with root package name */
        public final ImageView f1142c;

        /* renamed from: d  reason: collision with root package name */
        public final ImageView f1143d;
        public final ImageView e;

        public a(View view) {
            this.f1140a = (TextView) view.findViewById(16908308);
            this.f1141b = (TextView) view.findViewById(16908309);
            this.f1142c = (ImageView) view.findViewById(16908295);
            this.f1143d = (ImageView) view.findViewById(16908296);
            this.e = (ImageView) view.findViewById(a.f.edit_query);
        }
    }

    public w(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.h, (Cursor) null, true);
        this.k = searchView;
        this.l = searchableInfo;
        this.o = searchView.i;
        this.m = context;
        this.n = weakHashMap;
    }

    private Drawable a(ComponentName componentName) {
        PackageManager packageManager = this.e.getPackageManager();
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

    private Drawable a(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return b(uri);
                } catch (Resources.NotFoundException e) {
                    throw new FileNotFoundException("Resource does not exist: ".concat(String.valueOf(uri)));
                }
            } else {
                InputStream openInputStream = this.m.getContentResolver().openInputStream(uri);
                if (openInputStream != null) {
                    Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
                    try {
                        openInputStream.close();
                    } catch (IOException e2) {
                        Log.e("SuggestionsAdapter", "Error closing icon stream for ".concat(String.valueOf(uri)), e2);
                    }
                    return createFromStream;
                }
                throw new FileNotFoundException("Failed to open ".concat(String.valueOf(uri)));
            }
        } catch (FileNotFoundException e3) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
        return null;
    }

    private Drawable a(String str) {
        Drawable drawable = null;
        if (str != null) {
            drawable = null;
            if (!str.isEmpty()) {
                if ("0".equals(str)) {
                    drawable = null;
                } else {
                    try {
                        int parseInt = Integer.parseInt(str);
                        String str2 = "android.resource://" + this.m.getPackageName() + "/" + parseInt;
                        Drawable b2 = b(str2);
                        if (b2 != null) {
                            return b2;
                        }
                        Drawable a2 = b.a(this.m, parseInt);
                        a(str2, a2);
                        return a2;
                    } catch (Resources.NotFoundException e) {
                        Log.w("SuggestionsAdapter", "Icon resource not found: ".concat(String.valueOf(str)));
                        return null;
                    } catch (NumberFormatException e2) {
                        Drawable b3 = b(str);
                        if (b3 != null) {
                            return b3;
                        }
                        drawable = a(Uri.parse(str));
                        a(str, drawable);
                    }
                }
            }
        }
        return drawable;
    }

    private static String a(Cursor cursor, int i) {
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

    public static String a(Cursor cursor, String str) {
        return a(cursor, cursor.getColumnIndex(str));
    }

    private static void a(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private static void a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private void a(String str, Drawable drawable) {
        if (drawable != null) {
            this.n.put(str, drawable.getConstantState());
        }
    }

    private Drawable b(Uri uri) throws FileNotFoundException {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.e.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null) {
                    int size = pathSegments.size();
                    if (size == 1) {
                        try {
                            parseInt = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException e) {
                            throw new FileNotFoundException("Single path segment is not a resource ID: ".concat(String.valueOf(uri)));
                        }
                    } else if (size == 2) {
                        parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: ".concat(String.valueOf(uri)));
                    }
                    if (parseInt != 0) {
                        return resourcesForApplication.getDrawable(parseInt);
                    }
                    throw new FileNotFoundException("No resource found for: ".concat(String.valueOf(uri)));
                }
                throw new FileNotFoundException("No path: ".concat(String.valueOf(uri)));
            } catch (PackageManager.NameNotFoundException e2) {
                throw new FileNotFoundException("No package found for authority: ".concat(String.valueOf(uri)));
            }
        } else {
            throw new FileNotFoundException("No authority: ".concat(String.valueOf(uri)));
        }
    }

    private Drawable b(String str) {
        Drawable.ConstantState constantState = this.n.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private static void c(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    @Override // androidx.d.a.a, androidx.d.a.b.a
    public final Cursor a(CharSequence charSequence) {
        Cursor cursor;
        String suggestAuthority;
        String[] strArr;
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.k.getVisibility() != 0 || this.k.getWindowVisibility() != 0) {
            return null;
        }
        try {
            SearchableInfo searchableInfo = this.l;
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
                cursor = this.e.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
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

    @Override // androidx.d.a.c, androidx.d.a.a
    public final View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View a2 = super.a(context, cursor, viewGroup);
        a2.setTag(new a(a2));
        ((ImageView) a2.findViewById(a.f.edit_query)).setImageResource(this.o);
        return a2;
    }

    @Override // androidx.d.a.a, androidx.d.a.b.a
    public final void a(Cursor cursor) {
        if (this.p) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.r = cursor.getColumnIndex("suggest_text_1");
                this.s = cursor.getColumnIndex("suggest_text_2");
                this.t = cursor.getColumnIndex("suggest_text_2_url");
                this.u = cursor.getColumnIndex("suggest_icon_1");
                this.v = cursor.getColumnIndex("suggest_icon_2");
                this.w = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.d.a.a
    public final void a(View view, Cursor cursor) {
        Drawable drawable;
        String str;
        a aVar = (a) view.getTag();
        int i = this.w;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (aVar.f1140a != null) {
            a(aVar.f1140a, a(cursor, this.r));
        }
        if (aVar.f1141b != null) {
            String a2 = a(cursor, this.t);
            if (a2 != null) {
                if (this.q == null) {
                    TypedValue typedValue = new TypedValue();
                    this.e.getTheme().resolveAttribute(a.C0018a.textColorSearchUrl, typedValue, true);
                    this.q = this.e.getResources().getColorStateList(typedValue.resourceId);
                }
                SpannableString spannableString = new SpannableString(a2);
                spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.q, null), 0, a2.length(), 33);
                str = spannableString;
            } else {
                str = a(cursor, this.s);
            }
            if (TextUtils.isEmpty(str)) {
                if (aVar.f1140a != null) {
                    aVar.f1140a.setSingleLine(false);
                    aVar.f1140a.setMaxLines(2);
                }
            } else if (aVar.f1140a != null) {
                aVar.f1140a.setSingleLine(true);
                aVar.f1140a.setMaxLines(1);
            }
            a(aVar.f1141b, str);
        }
        Drawable drawable2 = null;
        if (aVar.f1142c != null) {
            ImageView imageView = aVar.f1142c;
            int i3 = this.u;
            if (i3 == -1) {
                drawable = null;
            } else {
                drawable = a(cursor.getString(i3));
                if (drawable == null) {
                    ComponentName searchActivity = this.l.getSearchActivity();
                    String flattenToShortString = searchActivity.flattenToShortString();
                    if (this.n.containsKey(flattenToShortString)) {
                        Drawable.ConstantState constantState = this.n.get(flattenToShortString);
                        drawable = constantState == null ? null : constantState.newDrawable(this.m.getResources());
                    } else {
                        Drawable a3 = a(searchActivity);
                        this.n.put(flattenToShortString, a3 == null ? null : a3.getConstantState());
                        drawable = a3;
                    }
                    if (drawable == null) {
                        drawable = this.e.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            a(imageView, drawable, 4);
        }
        if (aVar.f1143d != null) {
            ImageView imageView2 = aVar.f1143d;
            int i4 = this.v;
            if (i4 != -1) {
                drawable2 = a(cursor.getString(i4));
            }
            a(imageView2, drawable2, 8);
        }
        int i5 = this.f1139a;
        if (i5 == 2 || (i5 == 1 && (i2 & 1) != 0)) {
            aVar.e.setVisibility(0);
            aVar.e.setTag(aVar.f1140a.getText());
            aVar.e.setOnClickListener(this);
            return;
        }
        aVar.e.setVisibility(8);
    }

    @Override // androidx.d.a.a, androidx.d.a.b.a
    public final CharSequence b(Cursor cursor) {
        String a2;
        String a3;
        if (cursor == null) {
            return null;
        }
        String a4 = a(cursor, "suggest_intent_query");
        if (a4 != null) {
            return a4;
        }
        if (this.l.shouldRewriteQueryFromData() && (a3 = a(cursor, "suggest_intent_data")) != null) {
            return a3;
        }
        if (!this.l.shouldRewriteQueryFromText() || (a2 = a(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return a2;
    }

    @Override // androidx.d.a.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View b2 = b(this.e, this.f2089d, viewGroup);
            if (b2 != null) {
                ((a) b2.getTag()).f1140a.setText(e.toString());
            }
            return b2;
        }
    }

    @Override // androidx.d.a.a, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View a2 = a(this.e, this.f2089d, viewGroup);
            if (a2 != null) {
                ((a) a2.getTag()).f1140a.setText(e.toString());
            }
            return a2;
        }
    }

    @Override // androidx.d.a.a, android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        c(a());
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        c(a());
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.k.b((CharSequence) tag);
        }
    }
}
