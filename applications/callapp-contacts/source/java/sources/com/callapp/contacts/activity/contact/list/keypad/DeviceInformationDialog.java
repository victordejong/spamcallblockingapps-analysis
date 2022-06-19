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
import com.google.zxing.C16196d;
import com.google.zxing.EnumC16139a;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import java.util.Arrays;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog.class */
public class DeviceInformationDialog extends DialogPopup {
    /* renamed from: a */
    private static String m30506a(String str) {
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
                CLog.m27610a(TwelveKeyDialer.class, "unable to parse hex", e);
                return "";
            }
        } catch (NumberFormatException e2) {
            CLog.m27610a(TwelveKeyDialer.class, "unable to parse hex", e2);
            return "";
        }
    }

    /* renamed from: a */
    private void m30507a(ViewGroup viewGroup, String str, String str2, boolean z) {
        if (StringUtils.m26059a((CharSequence) str2)) {
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(2131559004, viewGroup, false);
        viewGroup.addView(viewGroup2);
        ((TextView) viewGroup2.findViewById(2131362566)).setText(str);
        String substring = str2.length() == 15 ? str2.substring(0, 14) : str2;
        if (substring.length() != 14 || !z) {
            viewGroup2.findViewById(2131362565).setVisibility(8);
            ((TextView) viewGroup2.findViewById(2131362564)).setText(str2);
        } else {
            ((TextView) viewGroup2.findViewById(2131362564)).setText(substring);
            ((TextView) viewGroup2.findViewById(2131362562)).setText(m30506a(substring));
            viewGroup2.findViewById(2131362563).setVisibility(0);
        }
        final ImageView imageView = (ImageView) viewGroup2.findViewById(2131362561);
        final String str3 = substring;
        imageView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.DeviceInformationDialog.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                imageView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                Bitmap m30504b = DeviceInformationDialog.m30504b(str3, imageView.getWidth(), imageView.getHeight());
                if (m30504b != null) {
                    imageView.setImageBitmap(m30504b);
                }
            }
        });
    }

    /* renamed from: b */
    public static Bitmap m30504b(String str, int i, int i2) {
        try {
            C16191b mo7642a = new C16196d().mo7642a(Uri.encode(str), EnumC16139a.CODE_128, i, 1, null);
            Bitmap createBitmap = Bitmap.createBitmap(mo7642a.f57157a, i2, Bitmap.Config.RGB_565);
            for (int i3 = 0; i3 < mo7642a.f57157a; i3++) {
                int[] iArr = new int[i2];
                Arrays.fill(iArr, mo7642a.m7678a(i3, 0) ? -16777216 : -1);
                createBitmap.setPixels(iArr, 0, 1, i3, 0, 1, i2);
            }
            return createBitmap;
        } catch (WriterException e) {
            CLog.m27610a(TwelveKeyDialer.class, "error generating barcode", e);
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
        ViewUtils.m27320a(inflate, ThemeUtils.getDrawable(2131230995));
        TelephonyManager telephonyManager = (TelephonyManager) CallAppApplication.get().getSystemService(Constants.EXTRA_PHONE_NUMBER);
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(2131362567);
        if (Build.VERSION.SDK_INT < 23 || telephonyManager.getPhoneCount() <= 1) {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    try {
                        String imei = telephonyManager.getImei();
                        if (StringUtils.m26045b((CharSequence) imei)) {
                            m30507a(viewGroup2, Activities.getString(2131887015), imei, false);
                        }
                    } catch (Exception e) {
                    }
                    String meid = telephonyManager.getMeid();
                    if (StringUtils.m26045b((CharSequence) meid)) {
                        m30507a(viewGroup2, Activities.getString(2131887182), meid, true);
                    }
                } else {
                    String deviceId = telephonyManager.getDeviceId();
                    if (StringUtils.m26045b((CharSequence) deviceId)) {
                        m30507a(viewGroup2, Activities.getString(2131887015), deviceId, false);
                    }
                }
            } catch (Exception e2) {
            }
        } else {
            for (int i = 0; i < telephonyManager.getPhoneCount(); i++) {
                if (Build.VERSION.SDK_INT >= 26) {
                    try {
                        String imei2 = telephonyManager.getImei(i);
                        if (StringUtils.m26045b((CharSequence) imei2)) {
                            m30507a(viewGroup2, Activities.getString(2131887015), imei2, false);
                        }
                    } catch (Exception e3) {
                    }
                    try {
                        String meid2 = telephonyManager.getMeid(i);
                        if (StringUtils.m26045b((CharSequence) meid2)) {
                            m30507a(viewGroup2, Activities.getString(2131887182), meid2, true);
                        }
                    } catch (Exception e4) {
                    }
                } else {
                    String deviceId2 = telephonyManager.getDeviceId(i);
                    if (StringUtils.m26045b((CharSequence) deviceId2)) {
                        m30507a(viewGroup2, Activities.getString(2131887015), deviceId2, false);
                    }
                }
            }
        }
        try {
            if (StringUtils.m26045b((CharSequence) telephonyManager.getSimSerialNumber())) {
                m30507a(viewGroup2, Activities.getString(2131887630), telephonyManager.getSimSerialNumber(), false);
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
