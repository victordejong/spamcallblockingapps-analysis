package p000;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: cy */
/* loaded from: classes-dex2jar.jar:cy.class */
public final class C1265cy {
    /* renamed from: a */
    public static int m2941a(Context context) {
        return !context.getResources().getBoolean(mx.is_tablet) ? -1 : -2;
    }

    /* renamed from: b */
    public static int m2940b(Context context) {
        float fraction;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        boolean z = displayMetrics.widthPixels < displayMetrics.heightPixels;
        TypedValue typedValue = new TypedValue();
        context.getResources().getValue(z ? ox.mr_dialog_fixed_width_minor : ox.mr_dialog_fixed_width_major, typedValue, true);
        int i = typedValue.type;
        if (i == 5) {
            fraction = typedValue.getDimension(displayMetrics);
        } else if (i != 6) {
            return -2;
        } else {
            int i2 = displayMetrics.widthPixels;
            fraction = typedValue.getFraction(i2, i2);
        }
        return (int) fraction;
    }

    /* renamed from: c */
    public static int m2939c(Context context) {
        if (!context.getResources().getBoolean(mx.is_tablet)) {
            return -1;
        }
        return m2940b(context);
    }

    /* renamed from: d */
    public static <E> HashMap<E, BitmapDrawable> m2938d(Context context, ListView listView, ArrayAdapter<E> arrayAdapter) {
        HashMap<E, BitmapDrawable> hashMap = new HashMap<>();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        for (int i = 0; i < listView.getChildCount(); i++) {
            hashMap.put(arrayAdapter.getItem(firstVisiblePosition + i), m2934h(context, listView.getChildAt(i)));
        }
        return hashMap;
    }

    /* renamed from: e */
    public static <E> HashMap<E, Rect> m2937e(ListView listView, ArrayAdapter<E> arrayAdapter) {
        HashMap<E, Rect> hashMap = new HashMap<>();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        for (int i = 0; i < listView.getChildCount(); i++) {
            E item = arrayAdapter.getItem(firstVisiblePosition + i);
            View childAt = listView.getChildAt(i);
            hashMap.put(item, new Rect(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom()));
        }
        return hashMap;
    }

    /* renamed from: f */
    public static <E> Set<E> m2936f(List<E> list, List<E> list2) {
        HashSet hashSet = new HashSet(list2);
        hashSet.removeAll(list);
        return hashSet;
    }

    /* renamed from: g */
    public static <E> Set<E> m2935g(List<E> list, List<E> list2) {
        HashSet hashSet = new HashSet(list);
        hashSet.removeAll(list2);
        return hashSet;
    }

    /* renamed from: h */
    public static BitmapDrawable m2934h(Context context, View view) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        return new BitmapDrawable(context.getResources(), createBitmap);
    }

    /* renamed from: i */
    public static <E> boolean m2933i(List<E> list, List<E> list2) {
        return new HashSet(list).equals(new HashSet(list2));
    }
}
