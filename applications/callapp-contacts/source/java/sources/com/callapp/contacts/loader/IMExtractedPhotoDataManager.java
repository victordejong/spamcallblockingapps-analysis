package com.callapp.contacts.loader;

import android.graphics.Bitmap;
import android.graphics.Color;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.NotificationExtractors.JSONDefaultImagesValues;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoData;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoData_;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import io.objectbox.C17944a;
import io.objectbox.query.Query;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/IMExtractedPhotoDataManager.class */
public class IMExtractedPhotoDataManager {
    /* renamed from: a */
    public static DataSource m28931a(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -2103713194:
                if (str.equals(Constants.WHATSAPP_4B_ACCOUNT_TYPE)) {
                    z = false;
                    break;
                }
                break;
            case -1897170512:
                if (str.equals(Constants.TELEGRAM_ACCOUNT_TYPE)) {
                    z = true;
                    break;
                }
                break;
            case -1651733025:
                if (str.equals(Constants.VIBER_ACCOUNT_TYPE)) {
                    z = true;
                    break;
                }
                break;
            case -1547699361:
                if (str.equals(Constants.WHATSAPP_ACCOUNT_TYPE)) {
                    z = true;
                    break;
                }
                break;
            case -486448233:
                if (str.equals(Constants.SIGNAL_ACCOUNT_TYPE)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
                return DataSource.whatsapp;
            case true:
                return DataSource.telegram;
            case true:
                return DataSource.viber;
            case true:
                return DataSource.signal;
            default:
                return null;
        }
    }

    /* renamed from: a */
    public static IMExtractedPhotoData m28935a(long j, Phone phone) {
        return m28927d(j, phone).m4641a();
    }

    /* renamed from: a */
    public static IMExtractedPhotoData m28934a(long j, Phone phone, DataSource dataSource, String str) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(IMExtractedPhotoData.class);
        IMExtractedPhotoData m28935a = m28935a(j, phone);
        IMExtractedPhotoData iMExtractedPhotoData = m28935a;
        if (m28935a == null) {
            iMExtractedPhotoData = new IMExtractedPhotoData();
            iMExtractedPhotoData.setPhoneOrIdKey(ContactData.generateId(phone, j));
        }
        iMExtractedPhotoData.setDataSource(dataSource);
        iMExtractedPhotoData.setUrl(str);
        iMExtractedPhotoData.setDate(System.currentTimeMillis());
        m4727d.m4711a((C17944a) iMExtractedPhotoData);
        return iMExtractedPhotoData;
    }

    /* renamed from: a */
    public static boolean m28933a(Bitmap bitmap, String str) {
        String m28703a = CallAppRemoteConfigManager.get().m28703a("CallappIMDefaultImagesValues");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        if (StringUtils.m26045b((CharSequence) m28703a)) {
            arrayList2 = arrayList;
            try {
                JSONDefaultImagesValues jSONDefaultImagesValues = (JSONDefaultImagesValues) Parser.m26917a(m28703a, new TypeReference<JSONDefaultImagesValues>() { // from class: com.callapp.contacts.loader.IMExtractedPhotoDataManager.1
                });
                arrayList2 = arrayList;
                if (jSONDefaultImagesValues != null) {
                    boolean z = true;
                    switch (str.hashCode()) {
                        case -2103713194:
                            if (str.equals(Constants.WHATSAPP_4B_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case -1651733025:
                            if (str.equals(Constants.VIBER_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case -1547699361:
                            if (str.equals(Constants.WHATSAPP_ACCOUNT_TYPE)) {
                                z = false;
                                break;
                            }
                            break;
                        case -486448233:
                            if (str.equals(Constants.SIGNAL_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    if (!z || z) {
                        int i = CallAppApplication.get().getResources().getConfiguration().uiMode & 48;
                        if (i != 16) {
                            if (i != 32) {
                                arrayList2 = arrayList;
                            } else {
                                List<Integer> whatsappDark = jSONDefaultImagesValues.getWhatsappDark();
                                arrayList2 = whatsappDark;
                                if (whatsappDark == 0) {
                                }
                            }
                        }
                        arrayList2 = jSONDefaultImagesValues.getWhatsapp();
                    } else {
                        arrayList2 = !z ? !z ? arrayList : jSONDefaultImagesValues.getSignal() : jSONDefaultImagesValues.getViber();
                    }
                }
            } catch (Exception e) {
                CLog.m27609a(ImageUtils.class, e);
            }
        }
        if (arrayList2 == null || arrayList2.size() != 6) {
            return false;
        }
        int round = Math.round(bitmap.getHeight() * 0.5f);
        int round2 = Math.round(bitmap.getHeight() * 0.5f);
        boolean z2 = true;
        for (int i2 = 0; i2 < bitmap.getWidth() && i2 <= 0; i2++) {
            int i3 = round2 - 10;
            while (i3 < round + 10) {
                int pixel = bitmap.getPixel(bitmap.getWidth() - (i2 + 1), i3);
                int pixel2 = bitmap.getPixel(i2, i3);
                boolean z3 = z2;
                if (pixel != 0) {
                    z3 = z2;
                    if (pixel2 != 0) {
                        z3 = z2;
                        if (Color.red(pixel2) != 255) {
                            z3 = z2;
                            if (Color.red(pixel) != 255) {
                                z3 = z2;
                                if (Color.green(pixel2) != 255) {
                                    z3 = z2;
                                    if (Color.green(pixel) != 255) {
                                        z3 = z2;
                                        if (Color.blue(pixel2) != 255) {
                                            z3 = z2;
                                            if (Color.blue(pixel) == 255) {
                                                continue;
                                            } else if (Color.red(pixel) < ((Integer) arrayList2.get(0)).intValue() || Color.red(pixel2) < ((Integer) arrayList2.get(0)).intValue() || Color.red(pixel) > ((Integer) arrayList2.get(1)).intValue() || Color.red(pixel2) > ((Integer) arrayList2.get(1)).intValue() || Color.green(pixel) < ((Integer) arrayList2.get(2)).intValue() || Color.green(pixel2) < ((Integer) arrayList2.get(2)).intValue() || Color.green(pixel) > ((Integer) arrayList2.get(3)).intValue() || Color.green(pixel2) > ((Integer) arrayList2.get(3)).intValue() || Color.blue(pixel) < ((Integer) arrayList2.get(4)).intValue() || Color.blue(pixel2) < ((Integer) arrayList2.get(4)).intValue() || Color.blue(pixel) > ((Integer) arrayList2.get(5)).intValue() || Color.blue(pixel2) > ((Integer) arrayList2.get(5)).intValue()) {
                                                return false;
                                            } else {
                                                z3 = false;
                                            }
                                        } else {
                                            continue;
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                i3++;
                z2 = z3;
            }
        }
        return !z2;
    }

    /* renamed from: a */
    public static boolean m28932a(IMExtractedPhotoData iMExtractedPhotoData) {
        return DateUtils.m27118b(new Date(iMExtractedPhotoData.getDate()), new Date()) >= 30;
    }

    /* renamed from: b */
    public static IMExtractedPhotoData m28930b(long j, Phone phone) {
        return m28927d(j, phone).m4641a();
    }

    /* renamed from: b */
    public static File m28929b(Bitmap bitmap, String str) {
        return ImageUtils.m27533a(bitmap, "IMPhotos", str + "_" + System.currentTimeMillis());
    }

    /* renamed from: c */
    public static void m28928c(long j, Phone phone) {
        m28927d(j, phone).m4624f();
    }

    /* renamed from: d */
    private static Query<IMExtractedPhotoData> m28927d(long j, Phone phone) {
        return CallAppApplication.get().getObjectBoxStore().m4727d(IMExtractedPhotoData.class).m4700e().m4611a(IMExtractedPhotoData_.phoneOrIdKey, ContactData.generateId(phone, j)).m4618a();
    }
}
