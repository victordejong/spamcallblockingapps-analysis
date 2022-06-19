package com.hbb20;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.content.C0790b;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.FastScroller;
import com.hbb20.C16330h;
import com.hbb20.CountryCodePicker;
import java.lang.reflect.Field;
import java.util.List;
/* renamed from: com.hbb20.e */
/* loaded from: classes4-dex2jar.jar:com/hbb20/e.class */
public final class C16324e {

    /* renamed from: a */
    static Dialog f57738a;

    /* renamed from: b */
    static Context f57739b;

    /* renamed from: c */
    private static final Field f57740c;

    /* renamed from: d */
    private static final Field f57741d;

    /* renamed from: e */
    private static final Field f57742e;

    /* JADX WARN: Removed duplicated region for block: B:29:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007c  */
    static {
        /*
            r0 = 1
            r3 = r0
            java.lang.Class<android.widget.TextView> r0 = android.widget.TextView.class
            java.lang.String r1 = "mCursorDrawableRes"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.Exception -> L5f
            r4 = r0
            r0 = r4
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Exception -> L59
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L59
            r1 = 16
            if (r0 >= r1) goto L1f
            java.lang.Class<android.widget.TextView> r0 = android.widget.TextView.class
            r5 = r0
            r0 = 0
            r6 = r0
            goto L31
        L1f:
            java.lang.Class<android.widget.TextView> r0 = android.widget.TextView.class
            java.lang.String r1 = "mEditor"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.Exception -> L59
            r6 = r0
            r0 = r6
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Exception -> L8a
            r0 = r6
            java.lang.Class r0 = r0.getType()     // Catch: java.lang.Exception -> L8a
            r5 = r0
        L31:
            r0 = r5
            java.lang.String r1 = "mCursorDrawable"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.Exception -> L4d
            r7 = r0
            r0 = r7
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Exception -> L44
            r0 = 0
            r3 = r0
            goto L6b
        L44:
            r5 = move-exception
            r0 = r4
            r5 = r0
            r0 = r7
            r4 = r0
            goto L66
        L4d:
            r5 = move-exception
        L4e:
            r0 = 0
            r7 = r0
            r0 = r4
            r5 = r0
            r0 = r7
            r4 = r0
            goto L66
        L59:
            r6 = move-exception
            r0 = r4
            r5 = r0
            goto L62
        L5f:
            r6 = move-exception
            r0 = 0
            r5 = r0
        L62:
            r0 = 0
            r6 = r0
            r0 = 0
            r4 = r0
        L66:
            r0 = r4
            r7 = r0
            r0 = r5
            r4 = r0
        L6b:
            r0 = r3
            if (r0 == 0) goto L7c
            r0 = 0
            com.hbb20.C16324e.f57740c = r0
            r0 = 0
            com.hbb20.C16324e.f57741d = r0
            r0 = 0
            com.hbb20.C16324e.f57742e = r0
            return
        L7c:
            r0 = r6
            com.hbb20.C16324e.f57740c = r0
            r0 = r7
            com.hbb20.C16324e.f57741d = r0
            r0 = r4
            com.hbb20.C16324e.f57742e = r0
            return
        L8a:
            r5 = move-exception
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.C16324e.m52425clinit():void");
    }

    C16324e() {
    }

    /* renamed from: a */
    public static void m7392a() {
        Dialog dialog = f57738a;
        if (dialog != null) {
            dialog.dismiss();
        }
        f57738a = null;
        f57739b = null;
    }

    /* renamed from: a */
    static /* synthetic */ void m7391a(Context context) {
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
            View currentFocus = activity.getCurrentFocus();
            View view = currentFocus;
            if (currentFocus == null) {
                view = new View(activity);
            }
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* renamed from: a */
    public static void m7390a(final CountryCodePicker countryCodePicker, String str) {
        boolean z;
        f57739b = countryCodePicker.getContext();
        f57738a = new Dialog(f57739b);
        countryCodePicker.m7446c();
        countryCodePicker.m7451b();
        List<C16315a> m7412a = C16315a.m7412a(f57739b, countryCodePicker);
        f57738a.requestWindowFeature(1);
        f57738a.getWindow().setContentView(C16330h.C16337g.layout_picker_dialog);
        f57738a.getWindow().setBackgroundDrawable(C0790b.m44502a(f57739b, 17170445));
        if (!countryCodePicker.f57594H || !countryCodePicker.f57634ak) {
            f57738a.getWindow().setSoftInputMode(2);
        } else {
            f57738a.getWindow().setSoftInputMode(4);
        }
        RecyclerView recyclerView = (RecyclerView) f57738a.findViewById(C16330h.C16336f.recycler_countryDialog);
        TextView textView = (TextView) f57738a.findViewById(C16330h.C16336f.textView_title);
        RelativeLayout relativeLayout = (RelativeLayout) f57738a.findViewById(C16330h.C16336f.rl_query_holder);
        ImageView imageView = (ImageView) f57738a.findViewById(C16330h.C16336f.img_clear_query);
        EditText editText = (EditText) f57738a.findViewById(C16330h.C16336f.editText_search);
        TextView textView2 = (TextView) f57738a.findViewById(C16330h.C16336f.textView_noresult);
        CardView cardView = (CardView) f57738a.findViewById(C16330h.C16336f.cardViewRoot);
        ImageView imageView2 = (ImageView) f57738a.findViewById(C16330h.C16336f.img_dismiss);
        try {
            if (countryCodePicker.f57609W != null) {
                if (countryCodePicker.f57624aa != -99) {
                    textView2.setTypeface(countryCodePicker.f57609W, countryCodePicker.f57624aa);
                    editText.setTypeface(countryCodePicker.f57609W, countryCodePicker.f57624aa);
                    textView.setTypeface(countryCodePicker.f57609W, countryCodePicker.f57624aa);
                } else {
                    textView2.setTypeface(countryCodePicker.f57609W);
                    editText.setTypeface(countryCodePicker.f57609W);
                    textView.setTypeface(countryCodePicker.f57609W);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (countryCodePicker.f57612aC != 0) {
            cardView.setCardBackgroundColor(countryCodePicker.f57612aC);
        }
        if (countryCodePicker.f57611aB != 0) {
            cardView.setBackgroundResource(countryCodePicker.f57611aB);
        }
        cardView.setRadius(countryCodePicker.f57616aG);
        if (countryCodePicker.f57596J) {
            imageView2.setVisibility(0);
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.hbb20.e.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C16324e.f57738a.dismiss();
                }
            });
        } else {
            imageView2.setVisibility(8);
        }
        if (!countryCodePicker.f57592F) {
            textView.setVisibility(8);
        }
        if (countryCodePicker.f57613aD != 0) {
            int i = countryCodePicker.f57613aD;
            imageView.setColorFilter(i);
            imageView2.setColorFilter(i);
            textView.setTextColor(i);
            textView2.setTextColor(i);
            editText.setTextColor(i);
            editText.setHintTextColor(Color.argb(100, Color.red(i), Color.green(i), Color.blue(i)));
        }
        if (countryCodePicker.f57614aE != 0 && Build.VERSION.SDK_INT >= 21) {
            editText.setBackgroundTintList(ColorStateList.valueOf(countryCodePicker.f57614aE));
            int i2 = countryCodePicker.f57614aE;
            Field field = f57741d;
            if (field != null) {
                try {
                    Context context = editText.getContext();
                    int i3 = f57742e.getInt(editText);
                    try {
                        Drawable drawable = Build.VERSION.SDK_INT < 21 ? context.getResources().getDrawable(i3) : context.getDrawable(i3);
                        drawable.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
                        field.set(Build.VERSION.SDK_INT < 16 ? editText : f57740c.get(editText), new Drawable[]{drawable, drawable});
                    } catch (Exception e2) {
                    }
                } catch (Exception e3) {
                }
            }
        }
        String m7416a = C16315a.m7416a(countryCodePicker.f57653g, countryCodePicker.m7459a());
        if (countryCodePicker.f57649az != null) {
            CountryCodePicker.AbstractC16307b abstractC16307b = countryCodePicker.f57649az;
            countryCodePicker.m7459a();
            m7416a = abstractC16307b.m7422a();
        }
        textView.setText(m7416a);
        String m7406b = C16315a.m7406b(countryCodePicker.f57653g, countryCodePicker.m7459a());
        if (countryCodePicker.f57649az != null) {
            CountryCodePicker.AbstractC16307b abstractC16307b2 = countryCodePicker.f57649az;
            countryCodePicker.m7459a();
            m7406b = abstractC16307b2.m7421b();
        }
        editText.setHint(m7406b);
        String m7401c = C16315a.m7401c(countryCodePicker.f57653g, countryCodePicker.m7459a());
        if (countryCodePicker.f57649az != null) {
            CountryCodePicker.AbstractC16307b abstractC16307b3 = countryCodePicker.f57649az;
            countryCodePicker.m7459a();
            m7401c = abstractC16307b3.m7420c();
        }
        textView2.setText(m7401c);
        if (!countryCodePicker.f57594H) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) recyclerView.getLayoutParams();
            layoutParams.height = -2;
            recyclerView.setLayoutParams(layoutParams);
        }
        int i4 = 0;
        C16318d c16318d = new C16318d(f57739b, m7412a, countryCodePicker, relativeLayout, editText, textView2, f57738a, imageView);
        recyclerView.setLayoutManager(new LinearLayoutManager(f57739b));
        recyclerView.setAdapter(c16318d);
        FastScroller fastScroller = (FastScroller) f57738a.findViewById(C16330h.C16336f.fastscroll);
        fastScroller.setRecyclerView(recyclerView);
        if (countryCodePicker.f57591E) {
            if (countryCodePicker.f57628ae != 0) {
                fastScroller.setBubbleColor(countryCodePicker.f57628ae);
            }
            if (countryCodePicker.f57610aA != 0) {
                fastScroller.setHandleColor(countryCodePicker.f57610aA);
            }
            if (countryCodePicker.f57615aF != 0) {
                try {
                    fastScroller.setBubbleTextAppearance(countryCodePicker.f57615aF);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } else {
            fastScroller.setVisibility(8);
        }
        f57738a.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.hbb20.e.2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                C16324e.m7391a(C16324e.f57739b);
                if (countryCodePicker.f57648ay != null) {
                    countryCodePicker.f57648ay.mo7419a();
                }
            }
        });
        f57738a.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.hbb20.e.3
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                C16324e.m7391a(C16324e.f57739b);
                if (countryCodePicker.f57648ay != null) {
                    countryCodePicker.f57648ay.mo7418b();
                }
            }
        });
        if (str != null) {
            if (countryCodePicker.f57625ab != null) {
                for (C16315a c16315a : countryCodePicker.f57625ab) {
                    if (c16315a.f57706h.equalsIgnoreCase(str)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                int size = (countryCodePicker.f57625ab == null || countryCodePicker.f57625ab.size() <= 0) ? 0 : countryCodePicker.f57625ab.size() + 1;
                while (true) {
                    if (i4 >= m7412a.size()) {
                        break;
                    } else if (m7412a.get(i4).f57706h.equalsIgnoreCase(str)) {
                        recyclerView.m40464b(i4 + size);
                        break;
                    } else {
                        i4++;
                    }
                }
            }
        }
        f57738a.show();
    }
}
