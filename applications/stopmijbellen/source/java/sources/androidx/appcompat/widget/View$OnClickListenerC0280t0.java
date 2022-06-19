package androidx.appcompat.widget;

import android.app.SearchableInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.applovin.sdk.AppLovinEventTypes;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p205q0.AbstractC4143c;
/* renamed from: androidx.appcompat.widget.t0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t0.class */
public class View$OnClickListenerC0280t0 extends AbstractC4143c implements View.OnClickListener {

    /* renamed from: y */
    public static final /* synthetic */ int f1095y = 0;

    /* renamed from: l */
    public final SearchView f1096l;

    /* renamed from: m */
    public final SearchableInfo f1097m;

    /* renamed from: n */
    public final Context f1098n;

    /* renamed from: o */
    public final WeakHashMap<String, Drawable.ConstantState> f1099o;

    /* renamed from: p */
    public final int f1100p;

    /* renamed from: r */
    public ColorStateList f1102r;

    /* renamed from: q */
    public int f1101q = 1;

    /* renamed from: s */
    public int f1103s = -1;

    /* renamed from: t */
    public int f1104t = -1;

    /* renamed from: u */
    public int f1105u = -1;

    /* renamed from: v */
    public int f1106v = -1;

    /* renamed from: w */
    public int f1107w = -1;

    /* renamed from: x */
    public int f1108x = -1;

    /* renamed from: androidx.appcompat.widget.t0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t0$a.class */
    public static final class C0281a {

        /* renamed from: a */
        public final TextView f1109a;

        /* renamed from: b */
        public final TextView f1110b;

        /* renamed from: c */
        public final ImageView f1111c;

        /* renamed from: d */
        public final ImageView f1112d;

        /* renamed from: e */
        public final ImageView f1113e;

        public C0281a(View view) {
            this.f1109a = (TextView) view.findViewById(16908308);
            this.f1110b = (TextView) view.findViewById(16908309);
            this.f1111c = (ImageView) view.findViewById(16908295);
            this.f1112d = (ImageView) view.findViewById(16908296);
            this.f1113e = (ImageView) view.findViewById(C3681R.C3684id.edit_query);
        }
    }

    public View$OnClickListenerC0280t0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1096l = searchView;
        this.f1097m = searchableInfo;
        this.f1100p = searchView.getSuggestionCommitIconResId();
        this.f1098n = context;
        this.f1099o = weakHashMap;
    }

    /* renamed from: h */
    public static String m8430h(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0205  */
    @Override // p205q0.AbstractC4138a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1356a(android.view.View r10, android.content.Context r11, android.database.Cursor r12) {
        /*
            Method dump skipped, instructions count: 743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.View$OnClickListenerC0280t0.mo1356a(android.view.View, android.content.Context, android.database.Cursor):void");
    }

    @Override // p205q0.AbstractC4138a
    /* renamed from: b */
    public void mo1355b(Cursor cursor) {
        try {
            super.mo1355b(cursor);
            if (cursor == null) {
                return;
            }
            this.f1103s = cursor.getColumnIndex("suggest_text_1");
            this.f1104t = cursor.getColumnIndex("suggest_text_2");
            this.f1105u = cursor.getColumnIndex("suggest_text_2_url");
            this.f1106v = cursor.getColumnIndex("suggest_icon_1");
            this.f1107w = cursor.getColumnIndex("suggest_icon_2");
            this.f1108x = cursor.getColumnIndex("suggest_flags");
        } catch (Exception e) {
        }
    }

    @Override // p205q0.AbstractC4138a
    /* renamed from: c */
    public CharSequence mo1354c(Cursor cursor) {
        String m8430h;
        String m8430h2;
        if (cursor == null) {
            return null;
        }
        String m8430h3 = m8430h(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (m8430h3 != null) {
            return m8430h3;
        }
        if (this.f1097m.shouldRewriteQueryFromData() && (m8430h2 = m8430h(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return m8430h2;
        }
        if (this.f1097m.shouldRewriteQueryFromText() && (m8430h = m8430h(cursor, cursor.getColumnIndex("suggest_text_1"))) != null) {
            return m8430h;
        }
        return null;
    }

    @Override // p205q0.AbstractC4138a
    /* renamed from: d */
    public View mo1353d(Context context, Cursor cursor, ViewGroup viewGroup) {
        View inflate = this.f13069k.inflate(this.f13067i, viewGroup, false);
        inflate.setTag(new C0281a(inflate));
        ((ImageView) inflate.findViewById(C3681R.C3684id.edit_query)).setImageResource(this.f1100p);
        return inflate;
    }

    /* renamed from: e */
    public Drawable m8433e(Uri uri) throws FileNotFoundException {
        int parseInt;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f1098n.getPackageManager().getResourcesForApplication(authority);
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

    /* JADX WARN: Removed duplicated region for block: B:57:0x01e0  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable m8432f(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.View$OnClickListenerC0280t0.m8432f(java.lang.String):android.graphics.drawable.Drawable");
    }

    /* renamed from: g */
    public Cursor m8431g(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme(AppLovinEventTypes.USER_VIEWED_CONTENT).authority(suggestAuthority).query("").fragment("");
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
        return this.f1098n.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
    }

    @Override // p205q0.AbstractC4138a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View inflate = this.f13069k.inflate(this.f13068j, viewGroup, false);
            if (inflate != null) {
                ((C0281a) inflate.getTag()).f1109a.setText(e.toString());
            }
            return inflate;
        }
    }

    @Override // p205q0.AbstractC4138a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View mo1353d = mo1353d(this.f1098n, this.f13058c, viewGroup);
            ((C0281a) mo1353d.getTag()).f1109a.setText(e.toString());
            return mo1353d;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        Cursor cursor = this.f13058c;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        Cursor cursor = this.f13058c;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1096l.m8641s((CharSequence) tag);
        }
    }
}
