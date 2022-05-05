package com.android.contacts.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.airview.b;
import com.android.contacts.airview.f;
import com.asus.contacts.a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusAirViewUtils.class */
public class AsusAirViewUtils {
    public static final String STYLE_STYLUS_ARROW_DOWN = "STYLE_STYLUS_ARROW_DOWN";
    public static final String STYLE_STYLUS_ARROW_LEFT = "STYLE_STYLUS_ARROW_LEFT";
    public static final String STYLE_STYLUS_ARROW_RIGHT = "STYLE_STYLUS_ARROW_RIGHT";
    public static final String STYLE_STYLUS_ARROW_UP = "STYLE_STYLUS_ARROW_UP";
    public static final String STYLE_STYLUS_EDIT_TEXT = "STYLE_STYLUS_EDIT_TEXT";
    public static final String STYLE_STYLUS_FIRST = "STYLE_STYLUS_FIRST";
    public static final String STYLE_STYLUS_FOCUS = "STYLE_STYLUS_FOCUS";
    public static final String STYLE_STYLUS_HOVER = "STYLE_STYLUS_HOVER";
    public static final String STYLE_STYLUS_LAST = "STYLE_STYLUS_LAST";
    public static final String TAG = AsusAirViewUtils.class.getSimpleName();
    private static int SdkVersion = -1;
    private static int HasPenFeatrue = -1;

    public static int getSdkVersion() {
        int i;
        synchronized (AsusAirViewUtils.class) {
            try {
                if (SdkVersion == -1) {
                    SdkVersion = a.b("ro.build.asus.version.pensdk");
                }
                i = SdkVersion;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0061 -> B:21:0x004f). Please submit an issue!!! */
    public static boolean hasPenFeature(Context context) {
        boolean z;
        synchronized (AsusAirViewUtils.class) {
            try {
                if (context == null) {
                    Log.e(TAG, ">>> hasPenFeature: context is NULL!");
                    z = false;
                } else {
                    if (HasPenFeatrue == -1) {
                        if (CompatUtils.isMarshmallowCompatible()) {
                            try {
                                Method method = View.class.getMethod("hasActiveStylusSupport", new Class[0]);
                                method.setAccessible(true);
                                HasPenFeatrue = ((Boolean) method.invoke(null, new Object[0])).booleanValue() ? 1 : 0;
                            } catch (Exception e) {
                                Log.d(TAG, "activeStylusSupport exception:" + e.toString());
                            }
                        } else {
                            PackageManager packageManager = context.getPackageManager();
                            if (packageManager != null) {
                                HasPenFeatrue = packageManager.hasSystemFeature("asus.hardware.pen") ? 1 : 0;
                            }
                        }
                    }
                    z = HasPenFeatrue == 1;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public static void setActionbarHoverHint(View view, CharSequence charSequence, final com.android.contacts.airview.a aVar) {
        if (view == null) {
            Log.e(TAG, ">>> setActionbarHoverHint: view is NULL!");
            return;
        }
        Context context = view.getContext();
        if (!hasPenFeature(context)) {
            Log.v(TAG, ">>> setActionbarHoverHint: Not support pen feature!");
            return;
        }
        aVar.setWindowLayoutMode(-2, -2);
        aVar.setTouchable(false);
        aVar.setBackgroundDrawable(context.getResources().getDrawable(2131165477));
        TextView textView = new TextView(context);
        textView.setText(charSequence);
        textView.setTextColor(-1);
        textView.setPadding(0, context.getResources().getDimensionPixelSize(2131099675), 0, 0);
        aVar.setContentView(textView);
        view.setOnHoverListener(new View.OnHoverListener() { // from class: com.android.contacts.util.AsusAirViewUtils.1
            @Override // android.view.View.OnHoverListener
            public final boolean onHover(View view2, MotionEvent motionEvent) {
                boolean z = false;
                if (view2.getContext() != null) {
                    switch (motionEvent.getActionMasked()) {
                        case 9:
                            AsusAirViewUtils.setStylusIcon(view2, AsusAirViewUtils.STYLE_STYLUS_FOCUS);
                            com.android.contacts.airview.a aVar2 = com.android.contacts.airview.a.this;
                            View contentView = aVar2.getContentView();
                            Drawable background = aVar2.getBackground();
                            Rect rect = new Rect();
                            background.getPadding(rect);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            contentView.measure(makeMeasureSpec, makeMeasureSpec);
                            int measuredWidth = contentView.getMeasuredWidth() + rect.left + rect.right;
                            int measuredHeight = contentView.getMeasuredHeight();
                            int i = rect.top;
                            int i2 = rect.bottom;
                            aVar2.setWidth(measuredWidth);
                            aVar2.setHeight(measuredHeight + i + i2);
                            view2.getMeasuredHeight();
                            int measuredWidth2 = view2.getMeasuredWidth() - measuredWidth;
                            int i3 = measuredWidth2;
                            if (measuredWidth2 > 0) {
                                i3 = -measuredWidth2;
                            }
                            aVar2.showAsDropDown(view2, i3 / 2, -aVar2.f548a);
                            break;
                        case 10:
                            com.android.contacts.airview.a.this.dismiss();
                            AsusAirViewUtils.setStylusIcon(view2, AsusAirViewUtils.STYLE_STYLUS_HOVER);
                            break;
                    }
                    z = true;
                }
                return z;
            }
        });
    }

    public static boolean setAirViewEnabled(View view, boolean z) {
        boolean z2 = true;
        try {
            Method method = view.getClass().getMethod("setAirViewEnabled", Boolean.TYPE);
            method.setAccessible(true);
            method.invoke(null, Boolean.valueOf(z));
        } catch (Exception e) {
            e.printStackTrace();
            z2 = false;
        }
        return z2;
    }

    public static void setOnHoverListenerForView(View view, f fVar, Object obj, int i) {
        if (view != null) {
            view.setOnHoverListener(new b(fVar, obj, i));
        }
    }

    public static boolean setStylusIcon(View view, String str) {
        boolean z;
        try {
            Field field = View.class.getField(str);
            field.setAccessible(true);
            int intValue = ((Integer) field.get(null)).intValue();
            if (intValue != 0) {
                Method method = view.getClass().getMethod("setPreferredStylusIcon", Integer.TYPE);
                method.setAccessible(true);
                method.invoke(view, Integer.valueOf(intValue));
            }
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }
}
