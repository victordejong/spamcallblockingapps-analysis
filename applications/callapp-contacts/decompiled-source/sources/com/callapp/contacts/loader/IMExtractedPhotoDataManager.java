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
import io.objectbox.a;
import io.objectbox.query.Query;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/IMExtractedPhotoDataManager.class */
public class IMExtractedPhotoDataManager {
    public static DataSource a(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -2103713194:
                if (str.equals(Constants.WHATSAPP_4B_ACCOUNT_TYPE)) {
                    c2 = 0;
                    break;
                }
                break;
            case -1897170512:
                if (str.equals(Constants.TELEGRAM_ACCOUNT_TYPE)) {
                    c2 = 1;
                    break;
                }
                break;
            case -1651733025:
                if (str.equals(Constants.VIBER_ACCOUNT_TYPE)) {
                    c2 = 2;
                    break;
                }
                break;
            case -1547699361:
                if (str.equals(Constants.WHATSAPP_ACCOUNT_TYPE)) {
                    c2 = 3;
                    break;
                }
                break;
            case -486448233:
                if (str.equals(Constants.SIGNAL_ACCOUNT_TYPE)) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 3:
                return DataSource.whatsapp;
            case 1:
                return DataSource.telegram;
            case 2:
                return DataSource.viber;
            case 4:
                return DataSource.signal;
            default:
                return null;
        }
    }

    public static IMExtractedPhotoData a(long j, Phone phone) {
        return d(j, phone).a();
    }

    public static IMExtractedPhotoData a(long j, Phone phone, DataSource dataSource, String str) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(IMExtractedPhotoData.class);
        IMExtractedPhotoData a2 = a(j, phone);
        IMExtractedPhotoData iMExtractedPhotoData = a2;
        if (a2 == null) {
            iMExtractedPhotoData = new IMExtractedPhotoData();
            iMExtractedPhotoData.setPhoneOrIdKey(ContactData.generateId(phone, j));
        }
        iMExtractedPhotoData.setDataSource(dataSource);
        iMExtractedPhotoData.setUrl(str);
        iMExtractedPhotoData.setDate(System.currentTimeMillis());
        d2.a((a) iMExtractedPhotoData);
        return iMExtractedPhotoData;
    }

    public static boolean a(Bitmap bitmap, String str) {
        String a2 = CallAppRemoteConfigManager.get().a("CallappIMDefaultImagesValues");
        ArrayList arrayList = new ArrayList();
        List<Integer> list = arrayList;
        if (StringUtils.b((CharSequence) a2)) {
            list = arrayList;
            try {
                JSONDefaultImagesValues jSONDefaultImagesValues = (JSONDefaultImagesValues) Parser.a(a2, new TypeReference<JSONDefaultImagesValues>() { // from class: com.callapp.contacts.loader.IMExtractedPhotoDataManager.1
                });
                list = arrayList;
                if (jSONDefaultImagesValues != null) {
                    char c2 = 65535;
                    switch (str.hashCode()) {
                        case -2103713194:
                            if (str.equals(Constants.WHATSAPP_4B_ACCOUNT_TYPE)) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case -1651733025:
                            if (str.equals(Constants.VIBER_ACCOUNT_TYPE)) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case -1547699361:
                            if (str.equals(Constants.WHATSAPP_ACCOUNT_TYPE)) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -486448233:
                            if (str.equals(Constants.SIGNAL_ACCOUNT_TYPE)) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    if (c2 == 0 || c2 == 1) {
                        int i = CallAppApplication.get().getResources().getConfiguration().uiMode & 48;
                        if (i != 16) {
                            if (i != 32) {
                                list = arrayList;
                            } else {
                                List<Integer> whatsappDark = jSONDefaultImagesValues.getWhatsappDark();
                                list = whatsappDark;
                                if (whatsappDark == null) {
                                }
                            }
                        }
                        list = jSONDefaultImagesValues.getWhatsapp();
                    } else {
                        list = c2 != 2 ? c2 != 3 ? arrayList : jSONDefaultImagesValues.getSignal() : jSONDefaultImagesValues.getViber();
                    }
                }
            } catch (Exception e) {
                CLog.a(ImageUtils.class, e);
            }
        }
        if (list == null || list.size() != 6) {
            return false;
        }
        int round = Math.round(bitmap.getHeight() * 0.5f);
        int round2 = Math.round(bitmap.getHeight() * 0.5f);
        boolean z = true;
        for (int i2 = 0; i2 < bitmap.getWidth() && i2 <= 0; i2++) {
            for (int i3 = round2 - 10; i3 < round + 10; i3++) {
                int pixel = bitmap.getPixel(bitmap.getWidth() - (i2 + 1), i3);
                int pixel2 = bitmap.getPixel(i2, i3);
                z = z;
                if (pixel != 0) {
                    z = z;
                    if (pixel2 != 0) {
                        z = z;
                        if (Color.red(pixel2) != 255) {
                            z = z;
                            if (Color.red(pixel) != 255) {
                                z = z;
                                if (Color.green(pixel2) != 255) {
                                    z = z;
                                    if (Color.green(pixel) != 255) {
                                        z = z;
                                        if (Color.blue(pixel2) != 255) {
                                            z = z;
                                            if (Color.blue(pixel) == 255) {
                                                continue;
                                            } else if (Color.red(pixel) < list.get(0).intValue() || Color.red(pixel2) < list.get(0).intValue() || Color.red(pixel) > list.get(1).intValue() || Color.red(pixel2) > list.get(1).intValue() || Color.green(pixel) < list.get(2).intValue() || Color.green(pixel2) < list.get(2).intValue() || Color.green(pixel) > list.get(3).intValue() || Color.green(pixel2) > list.get(3).intValue() || Color.blue(pixel) < list.get(4).intValue() || Color.blue(pixel2) < list.get(4).intValue() || Color.blue(pixel) > list.get(5).intValue() || Color.blue(pixel2) > list.get(5).intValue()) {
                                                return false;
                                            } else {
                                                z = false;
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
            }
        }
        return !z;
    }

    public static boolean a(IMExtractedPhotoData iMExtractedPhotoData) {
        return DateUtils.b(new Date(iMExtractedPhotoData.getDate()), new Date()) >= 30;
    }

    public static IMExtractedPhotoData b(long j, Phone phone) {
        return d(j, phone).a();
    }

    public static File b(Bitmap bitmap, String str) {
        return ImageUtils.a(bitmap, "IMPhotos", str + "_" + System.currentTimeMillis());
    }

    public static void c(long j, Phone phone) {
        d(j, phone).f();
    }

    private static Query<IMExtractedPhotoData> d(long j, Phone phone) {
        return CallAppApplication.get().getObjectBoxStore().d(IMExtractedPhotoData.class).e().a(IMExtractedPhotoData_.phoneOrIdKey, ContactData.generateId(phone, j)).a();
    }
}
