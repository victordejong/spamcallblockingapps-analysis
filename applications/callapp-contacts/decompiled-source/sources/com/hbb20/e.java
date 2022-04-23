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
import androidx.core.content.b;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.FastScroller;
import com.hbb20.CountryCodePicker;
import com.hbb20.h;
import java.lang.reflect.Field;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/hbb20/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static Dialog f33224a;

    /* renamed from: b  reason: collision with root package name */
    static Context f33225b;

    /* renamed from: c  reason: collision with root package name */
    private static final Field f33226c;

    /* renamed from: d  reason: collision with root package name */
    private static final Field f33227d;
    private static final Field e;

    /* JADX WARN: Removed duplicated region for block: B:29:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007c  */
    static {
        /*
            r0 = 1
            r3 = r0
            java.lang.Class<android.widget.TextView> r0 = android.widget.TextView.class
            java.lang.String r1 = "mCursorDrawableRes"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: Exception -> 0x005f
            r4 = r0
            r0 = r4
            r1 = 1
            r0.setAccessible(r1)     // Catch: Exception -> 0x0059
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: Exception -> 0x0059
            r1 = 16
            if (r0 >= r1) goto L_0x001f
            java.lang.Class<android.widget.TextView> r0 = android.widget.TextView.class
            r5 = r0
            r0 = 0
            r6 = r0
            goto L_0x0031
        L_0x001f:
            java.lang.Class<android.widget.TextView> r0 = android.widget.TextView.class
            java.lang.String r1 = "mEditor"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: Exception -> 0x0059
            r6 = r0
            r0 = r6
            r1 = 1
            r0.setAccessible(r1)     // Catch: Exception -> 0x008a
            r0 = r6
            java.lang.Class r0 = r0.getType()     // Catch: Exception -> 0x008a
            r5 = r0
        L_0x0031:
            r0 = r5
            java.lang.String r1 = "mCursorDrawable"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: Exception -> 0x004d
            r7 = r0
            r0 = r7
            r1 = 1
            r0.setAccessible(r1)     // Catch: Exception -> 0x0044
            r0 = 0
            r3 = r0
            goto L_0x006b
        L_0x0044:
            r5 = move-exception
            r0 = r4
            r5 = r0
            r0 = r7
            r4 = r0
            goto L_0x0066
        L_0x004d:
            r5 = move-exception
        L_0x004e:
            r0 = 0
            r7 = r0
            r0 = r4
            r5 = r0
            r0 = r7
            r4 = r0
            goto L_0x0066
        L_0x0059:
            r6 = move-exception
            r0 = r4
            r5 = r0
            goto L_0x0062
        L_0x005f:
            r6 = move-exception
            r0 = 0
            r5 = r0
        L_0x0062:
            r0 = 0
            r6 = r0
            r0 = 0
            r4 = r0
        L_0x0066:
            r0 = r4
            r7 = r0
            r0 = r5
            r4 = r0
        L_0x006b:
            r0 = r3
            if (r0 == 0) goto L_0x007c
            r0 = 0
            com.hbb20.e.f33226c = r0
            r0 = 0
            com.hbb20.e.f33227d = r0
            r0 = 0
            com.hbb20.e.e = r0
            return
        L_0x007c:
            r0 = r6
            com.hbb20.e.f33226c = r0
            r0 = r7
            com.hbb20.e.f33227d = r0
            r0 = r4
            com.hbb20.e.e = r0
            return
        L_0x008a:
            r5 = move-exception
            goto L_0x004e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.e.m6044clinit():void");
    }

    e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        Dialog dialog = f33224a;
        if (dialog != null) {
            dialog.dismiss();
        }
        f33224a = null;
        f33225b = null;
    }

    static /* synthetic */ void a(Context context) {
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

    public static void a(final CountryCodePicker countryCodePicker, String str) {
        boolean z;
        f33225b = countryCodePicker.getContext();
        f33224a = new Dialog(f33225b);
        countryCodePicker.c();
        countryCodePicker.b();
        List<a> a2 = a.a(f33225b, countryCodePicker);
        f33224a.requestWindowFeature(1);
        f33224a.getWindow().setContentView(h.g.layout_picker_dialog);
        f33224a.getWindow().setBackgroundDrawable(b.a(f33225b, 17170445));
        if (!countryCodePicker.H || !countryCodePicker.ak) {
            f33224a.getWindow().setSoftInputMode(2);
        } else {
            f33224a.getWindow().setSoftInputMode(4);
        }
        RecyclerView recyclerView = (RecyclerView) f33224a.findViewById(h.f.recycler_countryDialog);
        TextView textView = (TextView) f33224a.findViewById(h.f.textView_title);
        RelativeLayout relativeLayout = (RelativeLayout) f33224a.findViewById(h.f.rl_query_holder);
        ImageView imageView = (ImageView) f33224a.findViewById(h.f.img_clear_query);
        EditText editText = (EditText) f33224a.findViewById(h.f.editText_search);
        TextView textView2 = (TextView) f33224a.findViewById(h.f.textView_noresult);
        CardView cardView = (CardView) f33224a.findViewById(h.f.cardViewRoot);
        ImageView imageView2 = (ImageView) f33224a.findViewById(h.f.img_dismiss);
        try {
            if (countryCodePicker.W != null) {
                if (countryCodePicker.aa != -99) {
                    textView2.setTypeface(countryCodePicker.W, countryCodePicker.aa);
                    editText.setTypeface(countryCodePicker.W, countryCodePicker.aa);
                    textView.setTypeface(countryCodePicker.W, countryCodePicker.aa);
                } else {
                    textView2.setTypeface(countryCodePicker.W);
                    editText.setTypeface(countryCodePicker.W);
                    textView.setTypeface(countryCodePicker.W);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (countryCodePicker.aC != 0) {
            cardView.setCardBackgroundColor(countryCodePicker.aC);
        }
        if (countryCodePicker.aB != 0) {
            cardView.setBackgroundResource(countryCodePicker.aB);
        }
        cardView.setRadius(countryCodePicker.aG);
        if (countryCodePicker.J) {
            imageView2.setVisibility(0);
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.hbb20.e.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.f33224a.dismiss();
                }
            });
        } else {
            imageView2.setVisibility(8);
        }
        if (!countryCodePicker.F) {
            textView.setVisibility(8);
        }
        if (countryCodePicker.aD != 0) {
            int i = countryCodePicker.aD;
            imageView.setColorFilter(i);
            imageView2.setColorFilter(i);
            textView.setTextColor(i);
            textView2.setTextColor(i);
            editText.setTextColor(i);
            editText.setHintTextColor(Color.argb(100, Color.red(i), Color.green(i), Color.blue(i)));
        }
        if (countryCodePicker.aE != 0 && Build.VERSION.SDK_INT >= 21) {
            editText.setBackgroundTintList(ColorStateList.valueOf(countryCodePicker.aE));
            int i2 = countryCodePicker.aE;
            Field field = f33227d;
            if (field != null) {
                try {
                    Context context = editText.getContext();
                    int i3 = e.getInt(editText);
                    try {
                        Drawable drawable = Build.VERSION.SDK_INT < 21 ? context.getResources().getDrawable(i3) : context.getDrawable(i3);
                        drawable.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
                        field.set(Build.VERSION.SDK_INT < 16 ? editText : f33226c.get(editText), new Drawable[]{drawable, drawable});
                    } catch (Exception e3) {
                    }
                } catch (Exception e4) {
                }
            }
        }
        String a3 = a.a(countryCodePicker.g, countryCodePicker.a());
        if (countryCodePicker.az != null) {
            CountryCodePicker.b bVar = countryCodePicker.az;
            countryCodePicker.a();
            a3 = bVar.a();
        }
        textView.setText(a3);
        String b2 = a.b(countryCodePicker.g, countryCodePicker.a());
        if (countryCodePicker.az != null) {
            CountryCodePicker.b bVar2 = countryCodePicker.az;
            countryCodePicker.a();
            b2 = bVar2.b();
        }
        editText.setHint(b2);
        String c2 = a.c(countryCodePicker.g, countryCodePicker.a());
        if (countryCodePicker.az != null) {
            CountryCodePicker.b bVar3 = countryCodePicker.az;
            countryCodePicker.a();
            c2 = bVar3.c();
        }
        textView2.setText(c2);
        if (!countryCodePicker.H) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) recyclerView.getLayoutParams();
            layoutParams.height = -2;
            recyclerView.setLayoutParams(layoutParams);
        }
        int i4 = 0;
        d dVar = new d(f33225b, a2, countryCodePicker, relativeLayout, editText, textView2, f33224a, imageView);
        recyclerView.setLayoutManager(new LinearLayoutManager(f33225b));
        recyclerView.setAdapter(dVar);
        FastScroller fastScroller = (FastScroller) f33224a.findViewById(h.f.fastscroll);
        fastScroller.setRecyclerView(recyclerView);
        if (countryCodePicker.E) {
            if (countryCodePicker.ae != 0) {
                fastScroller.setBubbleColor(countryCodePicker.ae);
            }
            if (countryCodePicker.aA != 0) {
                fastScroller.setHandleColor(countryCodePicker.aA);
            }
            if (countryCodePicker.aF != 0) {
                try {
                    fastScroller.setBubbleTextAppearance(countryCodePicker.aF);
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        } else {
            fastScroller.setVisibility(8);
        }
        f33224a.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.hbb20.e.2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                e.a(e.f33225b);
                if (CountryCodePicker.this.ay != null) {
                    CountryCodePicker.this.ay.a();
                }
            }
        });
        f33224a.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.hbb20.e.3
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                e.a(e.f33225b);
                if (CountryCodePicker.this.ay != null) {
                    CountryCodePicker.this.ay.b();
                }
            }
        });
        if (str != null) {
            if (countryCodePicker.ab != null) {
                for (a aVar : countryCodePicker.ab) {
                    if (aVar.h.equalsIgnoreCase(str)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                int size = (countryCodePicker.ab == null || countryCodePicker.ab.size() <= 0) ? 0 : countryCodePicker.ab.size() + 1;
                while (true) {
                    if (i4 >= a2.size()) {
                        break;
                    } else if (a2.get(i4).h.equalsIgnoreCase(str)) {
                        recyclerView.b(i4 + size);
                        break;
                    } else {
                        i4++;
                    }
                }
            }
        }
        f33224a.show();
    }
}
