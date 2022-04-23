package com.google.android.gms.internal.measurement;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzbu;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbv.class */
public class zzbv<T extends zzbu> extends zzat {
    private zzbw<T> zzyj;

    public zzbv(zzaw zzawVar, zzbw<T> zzbwVar) {
        super(zzawVar);
        this.zzyj = zzbwVar;
    }

    private final T zza(XmlResourceParser xmlResourceParser) {
        int eventType;
        try {
            xmlResourceParser.next();
            eventType = xmlResourceParser.getEventType();
        } catch (IOException | XmlPullParserException e) {
            zze("Error parsing tracker configuration file", e);
        }
        while (eventType != 1) {
            if (xmlResourceParser.getEventType() == 2) {
                String lowerCase = xmlResourceParser.getName().toLowerCase(Locale.US);
                if (lowerCase.equals("screenname")) {
                    String attributeValue = xmlResourceParser.getAttributeValue(null, "name");
                    String trim = xmlResourceParser.nextText().trim();
                    if (!TextUtils.isEmpty(attributeValue) && !TextUtils.isEmpty(trim)) {
                        this.zzyj.zzb(attributeValue, trim);
                    }
                } else if (lowerCase.equals("string")) {
                    String attributeValue2 = xmlResourceParser.getAttributeValue(null, "name");
                    String trim2 = xmlResourceParser.nextText().trim();
                    if (!TextUtils.isEmpty(attributeValue2) && trim2 != null) {
                        this.zzyj.zzc(attributeValue2, trim2);
                    }
                } else {
                    if (lowerCase.equals("bool")) {
                        String attributeValue3 = xmlResourceParser.getAttributeValue(null, "name");
                        String trim3 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue3) && !TextUtils.isEmpty(trim3)) {
                            try {
                                this.zzyj.zza(attributeValue3, Boolean.parseBoolean(trim3));
                            } catch (NumberFormatException e2) {
                                zzc("Error parsing bool configuration value", trim3, e2);
                            }
                        }
                    } else if (lowerCase.equals("integer")) {
                        String attributeValue4 = xmlResourceParser.getAttributeValue(null, "name");
                        String trim4 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue4) && !TextUtils.isEmpty(trim4)) {
                            try {
                                this.zzyj.zzb(attributeValue4, Integer.parseInt(trim4));
                            } catch (NumberFormatException e3) {
                                zzc("Error parsing int configuration value", trim4, e3);
                            }
                        }
                    }
                    zze("Error parsing tracker configuration file", e);
                    return this.zzyj.zzdv();
                }
            }
            eventType = xmlResourceParser.next();
        }
        return this.zzyj.zzdv();
    }

    public final T zzq(int i) {
        try {
            return zza(zzbw().zzcm().getResources().getXml(i));
        } catch (Resources.NotFoundException e) {
            zzd("inflate() called with unknown resourceId", e);
            return null;
        }
    }
}
