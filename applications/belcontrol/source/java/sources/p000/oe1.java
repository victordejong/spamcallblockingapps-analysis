package p000;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.TypedValue;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import com.flexaspect.android.everycallcontrol.ui.activities.promo.PromoActivity;
import com.flexaspect.android.everycallcontrol.ui.base.AbstractPurchaseFragment;
import com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mycredits.CreditsFragment;
import com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mypurchase.MySubscriptions;
import com.kedlin.cca.core.CallService;
import com.kedlin.cca.p007ui.CCAFragmentActivity;
import com.kedlin.cca.p007ui.CallControlWidget;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import ow0;
import p000.oe1;
import p000.q71;
import p000.r71;
import p000.ra1;
/* renamed from: oe1 */
/* loaded from: classes3-dex2jar.jar:oe1.class */
public class oe1 {

    /* renamed from: a */
    public static final String f7186a = "oe1";

    /* renamed from: oe1$a */
    /* loaded from: classes3-dex2jar.jar:oe1$a.class */
    public static final class DialogInterface$OnClickListenerC1510a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f7187a;

        /* renamed from: b */
        public final /* synthetic */ CCAFragmentActivity f7188b;

        public DialogInterface$OnClickListenerC1510a(String str, CCAFragmentActivity cCAFragmentActivity) {
            this.f7187a = str;
            this.f7188b = cCAFragmentActivity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Bundle bundle = new Bundle();
            bundle.putString(AbstractPurchaseFragment.m, this.f7187a);
            this.f7188b.m4324r(this, MySubscriptions.class, bundle);
        }
    }

    /* renamed from: oe1$b */
    /* loaded from: classes3-dex2jar.jar:oe1$b.class */
    public static final class DialogInterface$OnClickListenerC1511b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f7189a;

        /* renamed from: b */
        public final /* synthetic */ CCAFragmentActivity f7190b;

        public DialogInterface$OnClickListenerC1511b(String str, CCAFragmentActivity cCAFragmentActivity) {
            this.f7189a = str;
            this.f7190b = cCAFragmentActivity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Bundle bundle = new Bundle();
            bundle.putString(AbstractPurchaseFragment.m, this.f7189a);
            this.f7190b.m4324r(this, CreditsFragment.class, bundle);
        }
    }

    /* renamed from: oe1$c */
    /* loaded from: classes3-dex2jar.jar:oe1$c.class */
    public static final class DialogInterface$OnClickListenerC1512c implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            oe1.m1105S();
        }
    }

    /* renamed from: oe1$d */
    /* loaded from: classes3-dex2jar.jar:oe1$d.class */
    public interface AbstractC1513d {
        /* renamed from: a */
        void m1047a(String str);
    }

    /* renamed from: C */
    public static /* synthetic */ void m1121C(MainActivity mainActivity, String str, EditText editText, AlertDialog alertDialog, View view) {
        if (!ga1.m1685b(mainActivity, "support_report.txt", str)) {
            Toast.makeText((Context) mainActivity, 2131821817, 1).show();
            return;
        }
        ie1.m1581e(mainActivity, "android-support@callcontrol.com", "Report", editText.getText().toString() + "\n\n", new String[]{"support_report.txt"}, new String[0]);
        alertDialog.dismiss();
    }

    /* renamed from: D */
    public static /* synthetic */ void m1120D(Context context, View view) {
        if (!fa1.m1865A((Activity) context)) {
            m1096a0(context, null);
        }
    }

    /* renamed from: F */
    public static /* synthetic */ void m1118F(EditText editText, TextView textView, Activity activity, AbstractC1513d abstractC1513d, DialogInterface dialogInterface, int i) {
        if (editText.getText() == null) {
            return;
        }
        String trim = editText.getText().toString().trim();
        if (TextUtils.isEmpty(trim) && textView != null) {
            textView.setText(activity.getResources().getString(2131821298));
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(8);
        abstractC1513d.m1047a(trim);
        dialogInterface.cancel();
    }

    /* renamed from: G */
    public static /* synthetic */ boolean m1117G(AlertDialog alertDialog, TextView textView, int i, KeyEvent keyEvent) {
        boolean z;
        if (i == 6) {
            alertDialog.getButton(-3).performClick();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: K */
    public static /* synthetic */ void m1113K(DialogInterface dialogInterface) {
        if (!r71.EnumC1638a.f7932Y.m695a() && !fa1.m1824z()) {
            q71.EnumC1614a.m911e(q71.EnumC1614a.IGNORE);
        }
        dialogInterface.cancel();
    }

    /* renamed from: M */
    public static /* synthetic */ void m1111M(DialogInterface dialogInterface) {
        if (!r71.EnumC1638a.f7932Y.m695a() && !fa1.m1830t()) {
            q71.EnumC1614a.m911e(q71.EnumC1614a.IGNORE);
        }
        dialogInterface.cancel();
    }

    /* renamed from: N */
    public static /* synthetic */ void m1110N(Activity activity, View view) {
        if (!fa1.m1865A(activity)) {
            m1096a0(activity, null);
        }
    }

    /* renamed from: O */
    public static String m1109O(String str, Context context) {
        String str2;
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            inputStream = context.getAssets().open(str);
            byte[] bArr = new byte[inputStream.available()];
            inputStream.read(bArr);
            inputStream2 = inputStream;
            str2 = new String(bArr);
            try {
                str2 = str2.replace("<li>", " &#8226; ").replace("</li>", "<br>");
            } catch (IOException e) {
            }
        } catch (IOException e2) {
            str2 = "";
            inputStream = inputStream2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Throwable th) {
            }
        }
        return str2;
    }

    /* renamed from: P */
    public static String m1108P(String str, Context context) {
        String m1109O = m1109O(Locale.getDefault().getLanguage() + "/" + str, context);
        String str2 = m1109O;
        if (TextUtils.isEmpty(m1109O)) {
            str2 = m1109O("en/" + str, context);
        }
        return str2;
    }

    /* renamed from: Q */
    public static void m1107Q(SpannableStringBuilder spannableStringBuilder, URLSpan uRLSpan, ClickableSpan clickableSpan) {
        spannableStringBuilder.setSpan(clickableSpan, spannableStringBuilder.getSpanStart(uRLSpan), spannableStringBuilder.getSpanEnd(uRLSpan), spannableStringBuilder.getSpanFlags(uRLSpan));
        spannableStringBuilder.removeSpan(uRLSpan);
    }

    /* renamed from: R */
    public static Rect m1106R(String str, float f) {
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTextSize(f);
        paint.getTextBounds(str, 0, str.length(), rect);
        paint.reset();
        return rect;
    }

    /* renamed from: S */
    public static void m1105S() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", fa1.m1839k().getPackageName(), null));
        intent.addFlags(268435456);
        fa1.m1839k().startActivity(intent);
    }

    /* renamed from: T */
    public static void m1104T(Context context, kt0 kt0Var) {
        Intent intent = new Intent();
        intent.setClass(context, PromoActivity.class);
        intent.setFlags(1409286144);
        intent.putExtra(PromoActivity.k, kt0Var.name());
        context.startActivity(intent);
    }

    /* renamed from: U */
    public static float m1103U(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e) {
            return 0.0f;
        }
    }

    /* renamed from: V */
    public static void m1102V(final View view) {
        view.setEnabled(false);
        view.postDelayed(new Runnable() { // from class: td1
            @Override // java.lang.Runnable
            public final void run() {
                view.setEnabled(true);
            }
        }, 500L);
    }

    /* renamed from: W */
    public static void m1101W(boolean z) {
        Context m1839k = fa1.m1839k();
        if (m1839k == null) {
            return;
        }
        boolean z2 = true;
        boolean z3 = z;
        if (fa1.m1845e()) {
            z3 = z;
            if (fa1.m1830t()) {
                z3 = true;
            }
        }
        PackageManager packageManager = m1839k.getPackageManager();
        packageManager.setComponentEnabledSetting(new ComponentName(m1839k, CallService.class), z3 ? 1 : 0, 1);
        int componentEnabledSetting = packageManager.getComponentEnabledSetting(new ComponentName(m1839k, CallService.class));
        r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7994v;
        if (componentEnabledSetting != 1) {
            z2 = false;
        }
        enumC1638a.m685k(Boolean.valueOf(z2));
    }

    /* renamed from: X */
    public static void m1100X(CCAFragmentActivity cCAFragmentActivity) {
        m1099Y(cCAFragmentActivity, 2131821226);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Y */
    public static void m1099Y(CCAFragmentActivity cCAFragmentActivity, int i) {
        m1081i(cCAFragmentActivity).setTitle(cCAFragmentActivity.getString(2131821227, new Object[]{q71.C1619f.m900a().toUpperCase()})).setMessage(i).setNegativeButton(2131821909, (DialogInterface.OnClickListener) null).create().show();
    }

    /* renamed from: Z */
    public static boolean m1098Z(CCAFragmentActivity cCAFragmentActivity) {
        if (q71.C1619f.m897d()) {
            return true;
        }
        m1100X(cCAFragmentActivity);
        return false;
    }

    /* renamed from: a */
    public static void m1097a(String str, View view) {
        View rootView;
        Context m1839k = fa1.m1839k();
        if (m1839k == null) {
            return;
        }
        ke1.m1400e(m1839k, str);
        CallControlWidget.m4286c(m1839k);
        if (view == null || (rootView = view.getRootView()) == null) {
            return;
        }
        ((TextView) rootView.findViewById(2131362708)).setText(2131822417);
        ((TextView) rootView.findViewById(2131363268)).setText(2131821483);
    }

    /* renamed from: a0 */
    public static void m1096a0(final Context context, DialogInterface.OnClickListener onClickListener) {
        if (fa1.m1830t()) {
            return;
        }
        m1081i(context).setTitle(2131821599).setMessage(2131821598).setPositiveButton(2131821591, onClickListener).setNegativeButton(2131821602, new DialogInterface.OnClickListener() { // from class: ae1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                oe1.m1055v(context);
            }
        }).setCancelable(false).create().show();
    }

    /* renamed from: b */
    public static int m1095b(float f, float f2) {
        int round = Math.round(f * 1000000.0f);
        int round2 = Math.round(f2 * 1000000.0f);
        if (round > round2) {
            return 1;
        }
        return round < round2 ? -1 : 0;
    }

    /* renamed from: b0 */
    public static AlertDialog m1094b0(final MainActivity mainActivity) {
        final String o = k31.o();
        if (TextUtils.isEmpty(o)) {
            return null;
        }
        View inflate = ((LayoutInflater) mainActivity.getSystemService("layout_inflater")).inflate(2131558777, (ViewGroup) null);
        if (inflate == null) {
            j91.m1505k(mainActivity, "Dialog not inflated");
            return null;
        }
        final EditText editText = (EditText) inflate.findViewById(2131363262);
        final AlertDialog create = m1081i(mainActivity).create();
        create.setView(inflate, 0, 0, 0, 0);
        if (!create.isShowing()) {
            create.show();
        }
        Window window = create.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setSoftInputMode(5);
        }
        create.findViewById(2131362139).setOnClickListener(new View.OnClickListener() { // from class: ud1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                create.cancel();
            }
        });
        create.findViewById(2131363171).setOnClickListener(new View.OnClickListener() { // from class: de1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                oe1.m1121C(mainActivity, o, editText, create, view);
            }
        });
        editText.requestFocus();
        return create;
    }

    /* renamed from: c */
    public static int m1093c(int i) {
        return Math.round(i * fa1.m1840j().getResources().getDisplayMetrics().density);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c0 */
    public static void m1092c0(CCAFragmentActivity cCAFragmentActivity, String str, int i, int i2) {
        m1081i(cCAFragmentActivity).setTitle(i2).setMessage(i).setPositiveButton(17039370, new DialogInterface$OnClickListenerC1511b(str, cCAFragmentActivity)).setNegativeButton(2131821189, (DialogInterface.OnClickListener) null).create().show();
    }

    /* renamed from: d */
    public static void m1091d(Canvas canvas, Paint paint, Bitmap bitmap, Rect rect) {
        try {
            if (NinePatch.isNinePatchChunk(bitmap.getNinePatchChunk())) {
                m1089e(canvas, bitmap, rect);
                return;
            }
        } catch (Exception e) {
        }
        canvas.drawBitmap(bitmap, rect.left, rect.top, paint);
    }

    /* renamed from: d0 */
    public static void m1090d0(Context context, DialogInterface.OnClickListener onClickListener) {
        m1081i(context).setTitle(2131821601).setMessage(2131821600).setPositiveButton(2131821597, onClickListener).setCancelable(false).create().show();
    }

    /* renamed from: e */
    public static void m1089e(Canvas canvas, Bitmap bitmap, Rect rect) {
        NinePatch.isNinePatchChunk(bitmap.getNinePatchChunk());
        new NinePatch(bitmap, bitmap.getNinePatchChunk(), null).draw(canvas, rect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e0 */
    public static void m1088e0(CCAFragmentActivity cCAFragmentActivity) {
        m1081i(cCAFragmentActivity).setTitle(2131821785).setMessage(2131821784).setNegativeButton(17039370, (DialogInterface.OnClickListener) null).create().show();
    }

    /* renamed from: f */
    public static Bitmap m1087f(int i, int i2, Drawable drawable) {
        Bitmap bitmap = null;
        Bitmap bitmap2 = null;
        try {
            if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap3 = ((BitmapDrawable) drawable).getBitmap();
                bitmap = bitmap3;
                if (bitmap3 != null) {
                    bitmap = bitmap3;
                    if (bitmap3.getHeight() > 0) {
                        Matrix matrix = new Matrix();
                        matrix.postScale((i * 1.0f) / bitmap3.getWidth(), (i2 * 1.0f) / bitmap3.getHeight());
                        return Bitmap.createBitmap(bitmap3, 0, 0, bitmap3.getWidth(), bitmap3.getHeight(), matrix, true);
                    }
                }
            }
            Bitmap bitmap4 = bitmap;
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            bitmap2 = createBitmap;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bitmap2;
    }

    /* renamed from: f0 */
    public static Dialog m1086f0(final Context context, q71.EnumC1614a enumC1614a, DialogInterface.OnCancelListener onCancelListener) {
        if (fa1.m1830t()) {
            return null;
        }
        q71.EnumC1614a enumC1614a2 = q71.EnumC1614a.PICKUP_HANGUP;
        if (enumC1614a == enumC1614a2 && !r71.EnumC1638a.f7994v.m695a() && (context instanceof MainActivity)) {
            ((MainActivity) context).a = true;
        }
        ow0 ow0Var = new ow0(context, enumC1614a == enumC1614a2 ? ow0.b.c : ow0.b.d, onCancelListener, new View.OnClickListener() { // from class: fe1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                oe1.m1120D(context, view);
            }
        });
        ow0Var.show();
        return ow0Var;
    }

    /* renamed from: g */
    public static Bitmap m1085g(Context context, int i, int i2, int i3) {
        if (context == null || i <= 0 || i2 <= 0 || i3 == 0) {
            return null;
        }
        int i4 = Build.VERSION.SDK_INT;
        Resources resources = context.getResources();
        return m1087f(i, i2, i4 >= 21 ? resources.getDrawable(i3, null) : resources.getDrawable(i3));
    }

    /* renamed from: g0 */
    public static void m1084g0(int i, Activity activity) {
        m1082h0(i, activity, true);
    }

    /* renamed from: h */
    public static int m1083h(int i) {
        return Build.VERSION.SDK_INT < 17 ? i : View.generateViewId();
    }

    /* renamed from: h0 */
    public static void m1082h0(int i, Activity activity, boolean z) {
        AlertDialog.Builder m1081i = m1081i(activity);
        m1081i.setMessage(i);
        m1081i.setTitle(2131821228);
        m1081i.setNegativeButton(z ? 2131821007 : 2131821909, (DialogInterface.OnClickListener) null);
        if (z) {
            m1081i.setPositiveButton(2131821440, new DialogInterface$OnClickListenerC1512c());
        }
        m1081i.create().show();
    }

    /* renamed from: i */
    public static AlertDialog.Builder m1081i(Context context) {
        return m1079j(context, 16974393);
    }

    /* renamed from: i0 */
    public static void m1080i0(final Activity activity, final AbstractC1513d abstractC1513d) {
        if (activity == null) {
            j91.m1505k(f7186a, "Activity is null");
            return;
        }
        View inflate = ((LayoutInflater) activity.getSystemService("layout_inflater")).inflate(2131558769, (ViewGroup) null);
        if (inflate == null) {
            j91.m1505k(f7186a, "Dialog not inflated");
            return;
        }
        final TextView textView = (TextView) inflate.findViewById(2131362376);
        ((TextView) inflate.findViewById(2131362378)).setVisibility(8);
        final EditText editText = (EditText) inflate.findViewById(2131362994);
        editText.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
        editText.setHint(2131821805);
        editText.setInputType(3);
        editText.setText("");
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: vd1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                oe1.AbstractC1513d.this.m1047a(null);
            }
        };
        final DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: zd1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                oe1.m1118F(editText, textView, activity, abstractC1513d, dialogInterface, i);
            }
        };
        AlertDialog.Builder m1081i = m1081i(activity);
        m1081i.setTitle(2131822209);
        m1081i.setCancelable(false);
        m1081i.setNegativeButton(2131820976, onClickListener);
        m1081i.setNeutralButton(2131822138, onClickListener2);
        final AlertDialog create = m1081i.create();
        create.setView(inflate, 0, 0, 0, 0);
        create.show();
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: yd1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                return oe1.m1117G(create, textView2, i, keyEvent);
            }
        });
        create.getWindow().setSoftInputMode(5);
        create.getButton(-3).setOnClickListener(new View.OnClickListener() { // from class: ce1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                onClickListener2.onClick(create, -3);
            }
        });
        editText.requestFocus();
    }

    /* renamed from: j */
    public static AlertDialog.Builder m1079j(Context context, int i) {
        if (Build.VERSION.SDK_INT < 21) {
            i = 3;
        }
        return new AlertDialog.Builder(context, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: j0 */
    public static void m1078j0(CCAFragmentActivity cCAFragmentActivity, String str, int i, int i2) {
        m1081i(cCAFragmentActivity).setTitle(i2).setMessage(i).setPositiveButton(17039370, new DialogInterface$OnClickListenerC1510a(str, cCAFragmentActivity)).setNegativeButton(2131821189, (DialogInterface.OnClickListener) null).create().show();
    }

    /* renamed from: k */
    public static Point m1077k(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return new Point();
        }
        Display defaultDisplay = windowManager.getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    /* renamed from: k0 */
    public static boolean m1076k0(CCAFragmentActivity cCAFragmentActivity, String str) {
        if (r71.m716f(q71.EnumC1620g.WHITE_LIST)) {
            return true;
        }
        m1078j0(cCAFragmentActivity, str, 2131821806, 2131821237);
        return false;
    }

    /* renamed from: l */
    public static ra1.AbstractC1648f m1075l() {
        return new l31();
    }

    /* renamed from: l0 */
    public static boolean m1074l0(CCAFragmentActivity cCAFragmentActivity, String str) {
        if (r71.m716f(q71.EnumC1620g.BLACK_LIST)) {
            return true;
        }
        m1078j0(cCAFragmentActivity, str, 2131821807, 2131821237);
        return false;
    }

    /* renamed from: m */
    public static int m1073m() {
        return ((int) fa1.m1840j().getResources().getDisplayMetrics().density) * 160;
    }

    /* renamed from: m0 */
    public static boolean m1072m0(CCAFragmentActivity cCAFragmentActivity, String str) {
        if (r71.EnumC1638a.f7909M0.m695a()) {
            return true;
        }
        m1078j0(cCAFragmentActivity, str, 2131821783, 2131821237);
        return false;
    }

    /* renamed from: n */
    public static String m1071n(long j) {
        String str;
        int i = (int) (j / 3600);
        int i2 = (int) ((j % 3600) / 60);
        int i3 = (int) (j % 60);
        StringBuilder sb = new StringBuilder();
        if (i > 0) {
            str = i + ":";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(String.format("%02d", Integer.valueOf(i2)));
        sb.append(":");
        sb.append(String.format("%02d", Integer.valueOf(i3)));
        return sb.toString();
    }

    /* renamed from: n0 */
    public static boolean m1070n0(CCAFragmentActivity cCAFragmentActivity, String str) {
        if (r71.EnumC1638a.f7941c1.m691e() > 0) {
            return true;
        }
        if (q71.C1619f.m897d()) {
            m1092c0(cCAFragmentActivity, str, 2131821303, 2131821304);
            return false;
        }
        m1099Y(cCAFragmentActivity, 2131821225);
        return false;
    }

    /* renamed from: o */
    public static int m1069o(Resources.Theme theme, int i, boolean z) {
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(i, typedValue, true);
        return z ? typedValue.data : typedValue.resourceId;
    }

    /* renamed from: o0 */
    public static boolean m1068o0(CCAFragmentActivity cCAFragmentActivity, String str) {
        if (r71.EnumC1638a.f7911N0.m695a()) {
            return true;
        }
        if (r71.EnumC1638a.f7909M0.m695a()) {
            return false;
        }
        m1078j0(cCAFragmentActivity, str, 2131821786, 2131821237);
        return false;
    }

    /* renamed from: p */
    public static String m1067p(i91 i91Var, boolean z) {
        return m1065q(i91Var, z, null);
    }

    /* renamed from: p0 */
    public static void m1066p0(CCAFragmentActivity cCAFragmentActivity, String str) {
        m1078j0(cCAFragmentActivity, str, 2131821807, 2131821237);
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0573  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1065q(p000.i91 r10, boolean r11, p000.x81 r12) {
        /*
            Method dump skipped, instructions count: 1399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.oe1.m1065q(i91, boolean, x81):java.lang.String");
    }

    /* renamed from: q0 */
    public static void m1064q0(CCAFragmentActivity cCAFragmentActivity, String str) {
        m1078j0(cCAFragmentActivity, str, 2131821806, 2131821237);
    }

    /* renamed from: r */
    public static int m1063r(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", Constants.ANDROID_PLATFORM);
        return identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r0 */
    public static void m1062r0(final CCAFragmentActivity cCAFragmentActivity, String str, int i, int i2) {
        m1081i(cCAFragmentActivity).setTitle(i2).setMessage(i).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: wd1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                new rw0().show(CCAFragmentActivity.this.getSupportFragmentManager(), "PURCHASE");
            }
        }).setNegativeButton(2131821189, (DialogInterface.OnClickListener) null).create().show();
    }

    /* renamed from: s */
    public static Bitmap m1061s(Bitmap bitmap) {
        long currentTimeMillis = System.currentTimeMillis();
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        int min = Math.min(bitmap.getWidth(), bitmap.getHeight()) / 2;
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, min, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        long currentTimeMillis2 = System.currentTimeMillis();
        String str = "Rounded Bitmap in " + (currentTimeMillis2 - currentTimeMillis) + " msec.";
        return createBitmap;
    }

    /* renamed from: s0 */
    public static void m1060s0(CCAFragmentActivity cCAFragmentActivity, String str) {
        m1062r0(cCAFragmentActivity, str, 2131821807, 2131821237);
    }

    /* renamed from: t */
    public static int m1059t(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        TextView textView = new TextView(fa1.m1840j());
        int i2 = fa1.m1840j().getResources().getDisplayMetrics().widthPixels;
        textView.setText(str.toUpperCase(Locale.getDefault()));
        textView.setTextSize(i);
        textView.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        return (int) Math.floor((textView.getMeasuredWidth() * 100) / i2);
    }

    /* renamed from: t0 */
    public static void m1058t0(CCAFragmentActivity cCAFragmentActivity, String str) {
        m1062r0(cCAFragmentActivity, str, 2131821806, 2131821237);
    }

    /* renamed from: u */
    public static void m1057u(String str) {
        Application m1292a = lm1.m1292a();
        if (m1292a == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setFlags(268435456);
        StringBuilder sb = new StringBuilder();
        sb.append("sms:");
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        sb.append(str);
        intent.setData(Uri.parse(sb.toString()));
        if (intent.resolveActivity(m1292a.getPackageManager()) == null) {
            return;
        }
        m1292a.startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: u0 */
    public static boolean m1056u0(CCAFragmentActivity cCAFragmentActivity, DialogInterface.OnClickListener onClickListener) {
        r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7951g0;
        if (!enumC1638a.m695a()) {
            m1081i(cCAFragmentActivity).setMessage(2131821580).setTitle(2131821581).setPositiveButton(2131821909, onClickListener).create().show();
            enumC1638a.m685k(Boolean.TRUE);
            return false;
        }
        return true;
    }

    /* renamed from: v */
    public static void m1055v(Context context) {
        Intent intent = new Intent(Build.VERSION.SDK_INT < 24 ? "android.settings.MANAGE_APPLICATIONS_SETTINGS" : "android.settings.MANAGE_DEFAULT_APPS_SETTINGS");
        intent.setFlags(268435456);
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            context.startActivity(intent);
        }
    }

    /* renamed from: v0 */
    public static ow0 m1054v0(final Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ow0 ow0Var = new ow0(activity, ow0.b.f, onCancelListener, new View.OnClickListener() { // from class: be1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                fa1.m1853M(activity);
            }
        });
        ow0Var.show();
        return ow0Var;
    }

    /* renamed from: w */
    public static void m1053w(Context context, View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* renamed from: w0 */
    public static Dialog m1052w0(final Activity activity, q71.EnumC1614a enumC1614a) {
        ow0 ow0Var;
        if (fa1.m1830t()) {
            return null;
        }
        if (!fa1.m1845e() || !fa1.m1846d() || fa1.m1824z()) {
            if (enumC1614a == q71.EnumC1614a.PICKUP_HANGUP && !r71.EnumC1638a.f7994v.m695a() && (activity instanceof MainActivity)) {
                ((MainActivity) activity).a = true;
            }
            ow0Var = new ow0(activity, ow0.b.b, ge1.f6694a, new View.OnClickListener() { // from class: xd1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    oe1.m1110N(activity, view);
                }
            });
        } else {
            ow0Var = new ow0(activity, ow0.b.a, he1.f6728a, new View.OnClickListener() { // from class: ee1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    fa1.m1853M(activity);
                }
            });
        }
        ow0Var.show();
        return ow0Var;
    }

    /* renamed from: x */
    public static View m1051x(Context context, int i) {
        return ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    /* renamed from: x0 */
    public static boolean m1050x0(Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }

    /* renamed from: y */
    public static boolean m1049y(PackageManager packageManager) {
        try {
            packageManager.getPackageInfo("com.callcontrolhome", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
