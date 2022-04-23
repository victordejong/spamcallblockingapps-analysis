package com.callapp.contacts.activity.contact.list.keypad;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.StringUtils;
import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.common.b;
import com.google.zxing.d;
import java.util.Arrays;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog.class */
public class DeviceInformationDialog extends DialogPopup {
    private static String a(String str) {
        String substring = str.substring(0, 8);
        String substring2 = str.substring(8);
        try {
            long parseLong = Long.parseLong(substring, 16);
            String format = String.format(Locale.US, "%010d", Long.valueOf(parseLong));
            try {
                long parseLong2 = Long.parseLong(substring2, 16);
                String format2 = String.format(Locale.US, "%08d", Long.valueOf(parseLong2));
                StringBuilder sb = new StringBuilder(22);
                sb.append((CharSequence) format, 0, 5);
                sb.append(' ');
                sb.append((CharSequence) format, 5, format.length());
                sb.append(' ');
                sb.append((CharSequence) format2, 0, 4);
                sb.append(' ');
                sb.append((CharSequence) format2, 4, format2.length());
                return sb.toString();
            } catch (NumberFormatException e) {
                CLog.a(TwelveKeyDialer.class, "unable to parse hex", e);
                return "";
            }
        } catch (NumberFormatException e2) {
            CLog.a(TwelveKeyDialer.class, "unable to parse hex", e2);
            return "";
        }
    }

    private void a(ViewGroup viewGroup, String str, String str2, boolean z) {
        if (!StringUtils.a((CharSequence) str2)) {
            ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(2131559004, viewGroup, false);
            viewGroup.addView(viewGroup2);
            ((TextView) viewGroup2.findViewById(2131362566)).setText(str);
            final String substring = str2.length() == 15 ? str2.substring(0, 14) : str2;
            if (substring.length() != 14 || !z) {
                viewGroup2.findViewById(2131362565).setVisibility(8);
                ((TextView) viewGroup2.findViewById(2131362564)).setText(str2);
            } else {
                ((TextView) viewGroup2.findViewById(2131362564)).setText(substring);
                ((TextView) viewGroup2.findViewById(2131362562)).setText(a(substring));
                viewGroup2.findViewById(2131362563).setVisibility(0);
            }
            final ImageView imageView = (ImageView) viewGroup2.findViewById(2131362561);
            imageView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.DeviceInformationDialog.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    imageView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    Bitmap b2 = DeviceInformationDialog.b(substring, imageView.getWidth(), imageView.getHeight());
                    if (b2 != null) {
                        imageView.setImageBitmap(b2);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap b(String str, int i, int i2) {
        try {
            b a2 = new d().a(Uri.encode(str), a.CODE_128, i, 1, null);
            Bitmap createBitmap = Bitmap.createBitmap(a2.f32980a, i2, Bitmap.Config.RGB_565);
            for (int i3 = 0; i3 < a2.f32980a; i3++) {
                int[] iArr = new int[i2];
                Arrays.fill(iArr, a2.a(i3, 0) ? -16777216 : -1);
                createBitmap.setPixels(iArr, 0, 1, i3, 0, 1, i2);
            }
            return createBitmap;
        } catch (WriterException e) {
            CLog.a(TwelveKeyDialer.class, "error generating barcode", e);
            return null;
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558610, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(2131364421);
        textView.setText(Activities.getString(2131886740));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setTypeface(null, 1);
        textView.setVisibility(0);
        ViewUtils.a(inflate, ThemeUtils.getDrawable(2131230995));
        TelephonyManager telephonyManager = (TelephonyManager) CallAppApplication.get().getSystemService(Constants.EXTRA_PHONE_NUMBER);
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(2131362567);
        if (Build.VERSION.SDK_INT < 23 || telephonyManager.getPhoneCount() <= 1) {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    try {
                        String imei = telephonyManager.getImei();
                        if (StringUtils.b((CharSequence) imei)) {
                            a(viewGroup2, Activities.getString(2131887015), imei, false);
                        }
                    } catch (Exception e) {
                    }
                    String meid = telephonyManager.getMeid();
                    if (StringUtils.b((CharSequence) meid)) {
                        a(viewGroup2, Activities.getString(2131887182), meid, true);
                    }
                } else {
                    String deviceId = telephonyManager.getDeviceId();
                    if (StringUtils.b((CharSequence) deviceId)) {
                        a(viewGroup2, Activities.getString(2131887015), deviceId, false);
                    }
                }
            } catch (Exception e2) {
            }
        } else {
            for (int i = 0; i < telephonyManager.getPhoneCount(); i++) {
                if (Build.VERSION.SDK_INT >= 26) {
                    try {
                        String imei2 = telephonyManager.getImei(i);
                        if (StringUtils.b((CharSequence) imei2)) {
                            a(viewGroup2, Activities.getString(2131887015), imei2, false);
                        }
                    } catch (Exception e3) {
                    }
                    try {
                        String meid2 = telephonyManager.getMeid(i);
                        if (StringUtils.b((CharSequence) meid2)) {
                            a(viewGroup2, Activities.getString(2131887182), meid2, true);
                        }
                    } catch (Exception e4) {
                    }
                } else {
                    String deviceId2 = telephonyManager.getDeviceId(i);
                    if (StringUtils.b((CharSequence) deviceId2)) {
                        a(viewGroup2, Activities.getString(2131887015), deviceId2, false);
                    }
                }
            }
        }
        try {
            if (StringUtils.b((CharSequence) telephonyManager.getSimSerialNumber())) {
                a(viewGroup2, Activities.getString(2131887630), telephonyManager.getSimSerialNumber(), false);
            }
        } catch (Exception e5) {
        }
        TextView textView2 = (TextView) inflate.findViewById(2131362584);
        textView2.setText(Activities.getString(2131887338));
        textView2.setTextColor(ThemeUtils.getColor(2131099784));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.DeviceInformationDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DeviceInformationDialog.this.dismiss();
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
