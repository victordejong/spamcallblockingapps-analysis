package com.android.contacts.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.android.contacts.activities.MainDialtactsActivity;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusRedPointNotificationHelper.class */
public class AsusRedPointNotificationHelper {
    public static final String TAG = "AsusRedPointNotificationHelper";
    private static AsusRedPointNotificationHelper instance;
    private ArrayList<RedPointMenuItem> allRedPointMenuItem = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusRedPointNotificationHelper$ID.class */
    public interface ID {
        public static final int ALLCONTACTS_OPTION_MENU = 0;
        public static final int ASUSCALLERID_SETTING = 7;
        public static final int CALLING_SCREEN_SETTING = 6;
        public static final int CALL_SETTING = 5;
        public static final int CONTACTS_MANAGEMENT = 2;
        public static final int CONTACTS_SETTING = 1;
        public static final int CUSTOMIZED_SETTING = 10;
        public static final int DIALER_OPTION_MENU = 3;
        public static final int DIALER_SMALL_YELLOW = 9;
        public static final int DIALPAD_SETTING = 4;
        public static final int ENCOURAGE_US = 8;
        public static final int UPDATE_VERSION = 12;
        public static final int ZENUI_UPDATE = 13;
        public static final int ZEN_WATCH_SETTING = 11;
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusRedPointNotificationHelper$RedPointMenuItem.class */
    public static class RedPointMenuItem {
        int CURRENT_VERSION;
        int DEFAULT_VERSION;
        int ID;
        String NAME;
        String PREF_KEY;
        ArrayList<RedPointMenuItem> mChildGroup;
    }

    public AsusRedPointNotificationHelper() {
        RedPointMenuItem redPointMenuItem = new RedPointMenuItem();
        redPointMenuItem.ID = 8;
        redPointMenuItem.NAME = "ENCOURAGE_US";
        redPointMenuItem.PREF_KEY = "ENCOURAGE_US_VERSION";
        redPointMenuItem.DEFAULT_VERSION = 0;
        redPointMenuItem.CURRENT_VERSION = 2;
        RedPointMenuItem redPointMenuItem2 = new RedPointMenuItem();
        redPointMenuItem2.ID = 1;
        redPointMenuItem2.NAME = "CONTACTS_SETTING";
        redPointMenuItem2.PREF_KEY = "isSettingVersion";
        redPointMenuItem2.DEFAULT_VERSION = 0;
        redPointMenuItem2.CURRENT_VERSION = 2;
        RedPointMenuItem redPointMenuItem3 = new RedPointMenuItem();
        redPointMenuItem3.ID = 2;
        redPointMenuItem3.NAME = "CONTACTS_MANAGEMENT";
        redPointMenuItem3.PREF_KEY = "isManageVersion";
        redPointMenuItem3.DEFAULT_VERSION = 0;
        redPointMenuItem3.CURRENT_VERSION = 1;
        RedPointMenuItem redPointMenuItem4 = new RedPointMenuItem();
        redPointMenuItem4.ID = 4;
        redPointMenuItem4.NAME = "DIALPAD_SETTING";
        redPointMenuItem4.PREF_KEY = "DIALPAD_SETTING_VERSION";
        redPointMenuItem4.DEFAULT_VERSION = 0;
        redPointMenuItem4.CURRENT_VERSION = 1;
        RedPointMenuItem redPointMenuItem5 = new RedPointMenuItem();
        redPointMenuItem5.ID = 5;
        redPointMenuItem5.NAME = "CALL_SETTING";
        redPointMenuItem5.PREF_KEY = "CALL_SETTING_VERSION";
        redPointMenuItem5.DEFAULT_VERSION = 0;
        redPointMenuItem5.CURRENT_VERSION = 0;
        RedPointMenuItem redPointMenuItem6 = new RedPointMenuItem();
        redPointMenuItem6.ID = 6;
        redPointMenuItem6.NAME = "CALLING_SCREEN_SETTING";
        redPointMenuItem6.PREF_KEY = "CALLING_SCREEN_SETTING_VERSION";
        redPointMenuItem6.DEFAULT_VERSION = 0;
        redPointMenuItem6.CURRENT_VERSION = 1;
        RedPointMenuItem redPointMenuItem7 = new RedPointMenuItem();
        redPointMenuItem7.ID = 7;
        redPointMenuItem7.NAME = "ASUSCALLERID_SETTING";
        redPointMenuItem7.PREF_KEY = "ASUSCALLERID_SETTING_VERSION";
        redPointMenuItem7.DEFAULT_VERSION = 0;
        redPointMenuItem7.CURRENT_VERSION = 0;
        RedPointMenuItem redPointMenuItem8 = new RedPointMenuItem();
        redPointMenuItem8.ID = 11;
        redPointMenuItem8.NAME = "ZEN_WATCH_SETTING";
        redPointMenuItem8.PREF_KEY = "ZEN_WATCH_SETTING_VERSION";
        redPointMenuItem8.DEFAULT_VERSION = 0;
        redPointMenuItem8.CURRENT_VERSION = 1;
        RedPointMenuItem redPointMenuItem9 = new RedPointMenuItem();
        redPointMenuItem9.ID = 10;
        redPointMenuItem9.NAME = "CUSTOMIZED_SETTING";
        redPointMenuItem9.PREF_KEY = "CUSTOMIZED_SETTING_VERSION";
        redPointMenuItem9.DEFAULT_VERSION = 0;
        redPointMenuItem9.CURRENT_VERSION = 2;
        RedPointMenuItem redPointMenuItem10 = new RedPointMenuItem();
        redPointMenuItem10.ID = 12;
        redPointMenuItem10.NAME = "UPDATE_VERSION";
        redPointMenuItem10.PREF_KEY = "UPDATE_VERSION_VERSION";
        redPointMenuItem10.DEFAULT_VERSION = 0;
        redPointMenuItem10.CURRENT_VERSION = 1;
        RedPointMenuItem redPointMenuItem11 = new RedPointMenuItem();
        redPointMenuItem11.ID = 13;
        redPointMenuItem11.NAME = "ZENUI_UPDATE";
        redPointMenuItem11.PREF_KEY = "ZENUI_UPDATE_VERSION";
        redPointMenuItem11.DEFAULT_VERSION = 0;
        redPointMenuItem11.CURRENT_VERSION = 1;
        RedPointMenuItem redPointMenuItem12 = new RedPointMenuItem();
        redPointMenuItem12.ID = 0;
        redPointMenuItem12.NAME = "ALLCONTACTS_OPTION_MENU";
        redPointMenuItem12.PREF_KEY = "isNewFeatureVersion";
        redPointMenuItem12.DEFAULT_VERSION = 0;
        redPointMenuItem12.CURRENT_VERSION = 8;
        redPointMenuItem12.mChildGroup = new ArrayList<>();
        redPointMenuItem12.mChildGroup.add(redPointMenuItem3);
        redPointMenuItem12.mChildGroup.add(redPointMenuItem10);
        redPointMenuItem12.mChildGroup.add(redPointMenuItem11);
        RedPointMenuItem redPointMenuItem13 = new RedPointMenuItem();
        redPointMenuItem13.ID = 3;
        redPointMenuItem13.NAME = "DIALER_OPTION_MENU";
        redPointMenuItem13.PREF_KEY = "DIALER_OPTION_MENU_VERSION";
        redPointMenuItem13.DEFAULT_VERSION = 0;
        redPointMenuItem13.CURRENT_VERSION = 7;
        redPointMenuItem13.mChildGroup = new ArrayList<>();
        redPointMenuItem13.mChildGroup.add(redPointMenuItem10);
        RedPointMenuItem redPointMenuItem14 = new RedPointMenuItem();
        redPointMenuItem14.ID = 9;
        redPointMenuItem14.NAME = "SMALL_YELLOW";
        redPointMenuItem14.PREF_KEY = "SMALL_YELLOW_VERSION";
        redPointMenuItem14.DEFAULT_VERSION = 0;
        redPointMenuItem14.CURRENT_VERSION = 1;
        this.allRedPointMenuItem.add(redPointMenuItem12);
        this.allRedPointMenuItem.add(redPointMenuItem2);
        this.allRedPointMenuItem.add(redPointMenuItem3);
        this.allRedPointMenuItem.add(redPointMenuItem13);
        this.allRedPointMenuItem.add(redPointMenuItem4);
        this.allRedPointMenuItem.add(redPointMenuItem5);
        this.allRedPointMenuItem.add(redPointMenuItem6);
        this.allRedPointMenuItem.add(redPointMenuItem7);
        this.allRedPointMenuItem.add(redPointMenuItem);
        this.allRedPointMenuItem.add(redPointMenuItem14);
        this.allRedPointMenuItem.add(redPointMenuItem9);
        this.allRedPointMenuItem.add(redPointMenuItem8);
        this.allRedPointMenuItem.add(redPointMenuItem10);
        this.allRedPointMenuItem.add(redPointMenuItem11);
    }

    public static AsusRedPointNotificationHelper getInstance() {
        if (instance == null) {
            instance = new AsusRedPointNotificationHelper();
        }
        return instance;
    }

    public void disableRedPoint(Context context, int i) {
        RedPointMenuItem redPointMenuItem = this.allRedPointMenuItem.get(i);
        try {
            SharedPreferences.Editor edit = context.getSharedPreferences("newFeatureData", 0).edit();
            if (i == 0) {
                edit.putInt("isNewFeatureVersion", redPointMenuItem.CURRENT_VERSION);
                SharedPreferences.Editor edit2 = context.getSharedPreferences(MainDialtactsActivity.KEY_PREF_ZENUI_UPDATE, 0).edit();
                edit2.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP_CONTACTS, false);
                edit2.commit();
            } else if (i == 1) {
                edit.putInt("isSettingVersion", redPointMenuItem.CURRENT_VERSION);
            } else if (i == 2) {
                edit.putInt("isManageVersion", redPointMenuItem.CURRENT_VERSION);
            } else if (i == 12) {
                SharedPreferences.Editor edit3 = context.getSharedPreferences(MainDialtactsActivity.KEY_PREF_ZENUI_UPDATE, 0).edit();
                edit3.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP, false);
                edit3.commit();
            } else if (i == 3) {
                edit.putInt(redPointMenuItem.PREF_KEY, redPointMenuItem.CURRENT_VERSION);
                SharedPreferences.Editor edit4 = context.getSharedPreferences(MainDialtactsActivity.KEY_PREF_ZENUI_UPDATE, 0).edit();
                edit4.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP_DIALER, false);
                edit4.commit();
            } else {
                edit.putInt(redPointMenuItem.PREF_KEY, redPointMenuItem.CURRENT_VERSION);
            }
            edit.commit();
        } catch (Exception e) {
            Log.e(TAG, "disableRedPoint Fail:" + e.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
        if (r0 == false) goto L_0x0073;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0089, code lost:
        if (r0 != false) goto L_0x008c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01b4, code lost:
        if (r15 != false) goto L_0x01b7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isNeedShowRedPoint(android.content.Context r6, int r7) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.AsusRedPointNotificationHelper.isNeedShowRedPoint(android.content.Context, int):boolean");
    }
}
