package com.android.contacts.util;

import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.XmlResourceParser;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/LocalizedNameResolver.class */
public class LocalizedNameResolver {
    private static final String CONTACTS_DATA_KIND = "ContactsDataKind";
    private static final String METADATA_CONTACTS = "android.provider.CONTACTS_STRUCTURE";
    private static final String TAG = "LocalizedNameResolver";

    public static String getAllContactsName(Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        return str == null ? null : resolveAllContactsName(context, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
        r0 = r5.obtainStyledAttributes(r0, com.asus.contacts.c.a.f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008a, code lost:
        r12 = r0.getNonResourceString(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0092, code lost:
        if (r12 == null) goto L_0x009c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0095, code lost:
        r0.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x009c, code lost:
        r0 = r0.getResourceId(5, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a6, code lost:
        if (r0 != 0) goto L_0x00bf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a9, code lost:
        r0.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ae, code lost:
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00cb, code lost:
        r12 = r5.getPackageManager().getResourcesForApplication(r7).getString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d3, code lost:
        r0.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00da, code lost:
        r0.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00df, code lost:
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00e5, code lost:
        r0.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ea, code lost:
        r12 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String loadAllContactsNameFromXml(android.content.Context r5, org.xmlpull.v1.XmlPullParser r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.LocalizedNameResolver.loadAllContactsNameFromXml(android.content.Context, org.xmlpull.v1.XmlPullParser, java.lang.String):java.lang.String");
    }

    private static String resolveAllContactsName(Context context, String str) {
        String str2;
        AuthenticatorDescription[] authenticatorTypes = AccountManager.get(context).getAuthenticatorTypes();
        int length = authenticatorTypes.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str2 = null;
                break;
            }
            AuthenticatorDescription authenticatorDescription = authenticatorTypes[i];
            if (str.equals(authenticatorDescription.type)) {
                str2 = resolveAllContactsNameFromMetaData(context, authenticatorDescription.packageName);
                break;
            }
            i++;
        }
        return str2;
    }

    private static String resolveAllContactsNameFromMetaData(Context context, String str) {
        String str2;
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 132);
            if (!(packageInfo == null || packageInfo.services == null)) {
                for (ServiceInfo serviceInfo : packageInfo.services) {
                    XmlResourceParser loadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, METADATA_CONTACTS);
                    if (loadXmlMetaData != null) {
                        str2 = loadAllContactsNameFromXml(context, loadXmlMetaData, str);
                        break;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(TAG, "Problem loading \"All Contacts\"-name: " + e.toString());
        }
        str2 = null;
        return str2;
    }
}
