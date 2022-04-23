package com.google.android.gms.analytics.internal;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.google.android.gms.analytics.internal.f;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzq.class */
public abstract class zzq<T extends f> extends zzc {

    /* renamed from: a  reason: collision with root package name */
    zza<T> f3879a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzq$zza.class */
    public interface zza<U extends f> {
        void zzc(String str, int i);

        void zzg(String str, boolean z);

        U zzmV();

        void zzn(String str, String str2);

        void zzo(String str, String str2);
    }

    public zzq(zzf zzfVar, zza<T> zzaVar) {
        super(zzfVar);
        this.f3879a = zzaVar;
    }

    private T a(XmlResourceParser xmlResourceParser) {
        try {
            xmlResourceParser.next();
            int eventType = xmlResourceParser.getEventType();
            while (eventType != 1) {
                if (xmlResourceParser.getEventType() == 2) {
                    String lowerCase = xmlResourceParser.getName().toLowerCase();
                    if (lowerCase.equals("screenname")) {
                        String attributeValue = xmlResourceParser.getAttributeValue(null, ContactDetailCallogActivity.EXTRA_NAME);
                        String trim = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue) && !TextUtils.isEmpty(trim)) {
                            this.f3879a.zzn(attributeValue, trim);
                        }
                    } else if (lowerCase.equals("string")) {
                        String attributeValue2 = xmlResourceParser.getAttributeValue(null, ContactDetailCallogActivity.EXTRA_NAME);
                        String trim2 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue2) && trim2 != null) {
                            this.f3879a.zzo(attributeValue2, trim2);
                        }
                    } else if (lowerCase.equals("bool")) {
                        String attributeValue3 = xmlResourceParser.getAttributeValue(null, ContactDetailCallogActivity.EXTRA_NAME);
                        String trim3 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue3) && !TextUtils.isEmpty(trim3)) {
                            try {
                                this.f3879a.zzg(attributeValue3, Boolean.parseBoolean(trim3));
                            } catch (NumberFormatException e) {
                                zzc("Error parsing bool configuration value", trim3, e);
                            }
                        }
                    } else if (lowerCase.equals("integer")) {
                        String attributeValue4 = xmlResourceParser.getAttributeValue(null, ContactDetailCallogActivity.EXTRA_NAME);
                        String trim4 = xmlResourceParser.nextText().trim();
                        if (!TextUtils.isEmpty(attributeValue4) && !TextUtils.isEmpty(trim4)) {
                            try {
                                this.f3879a.zzc(attributeValue4, Integer.parseInt(trim4));
                            } catch (NumberFormatException e2) {
                                zzc("Error parsing int configuration value", trim4, e2);
                            }
                        }
                    }
                }
                eventType = xmlResourceParser.next();
            }
        } catch (IOException e3) {
            zze("Error parsing tracker configuration file", e3);
        } catch (XmlPullParserException e4) {
            zze("Error parsing tracker configuration file", e4);
        }
        return this.f3879a.zzmV();
    }

    public T zzav(int i) {
        T t;
        try {
            t = a(zzlO().zzmc().getResources().getXml(i));
        } catch (Resources.NotFoundException e) {
            zzd("inflate() called with unknown resourceId", e);
            t = null;
        }
        return t;
    }
}
