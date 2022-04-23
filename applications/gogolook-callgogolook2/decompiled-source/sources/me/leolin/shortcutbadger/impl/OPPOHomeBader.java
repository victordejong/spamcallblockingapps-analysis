package me.leolin.shortcutbadger.impl;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import me.leolin.shortcutbadger.util.BroadcastHelper;
import me.leolin.shortcutbadger.util.CloseHelper;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes3-dex2jar.jar:me/leolin/shortcutbadger/impl/OPPOHomeBader.class */
public class OPPOHomeBader implements Badger {
    public static final String INTENT_ACTION = "com.oppo.unsettledevent";
    public static final String INTENT_EXTRA_BADGEUPGRADE_COUNT = "app_badge_count";
    public static final String INTENT_EXTRA_BADGE_COUNT = "number";
    public static final String INTENT_EXTRA_BADGE_UPGRADENUMBER = "upgradeNumber";
    public static final String INTENT_EXTRA_PACKAGENAME = "pakeageName";
    public static final String PROVIDER_CONTENT_URI = "content://com.android.badge/badge";
    public static int ROMVERSION = -1;

    private boolean checkObjExists(Object obj) {
        return obj == null || obj.toString().equals("") || obj.toString().trim().equals(C14247d.f31851f);
    }

    private Object executeClassLoad(Class cls, String str, Class[] clsArr, Object[] objArr) {
        Object obj = null;
        if (cls != null) {
            obj = null;
            if (!checkObjExists(str)) {
                Method method = getMethod(cls, str, clsArr);
                obj = null;
                if (method != null) {
                    method.setAccessible(true);
                    try {
                        obj = method.invoke(null, objArr);
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                        obj = null;
                    } catch (InvocationTargetException e2) {
                        e2.printStackTrace();
                        obj = null;
                    }
                }
            }
        }
        return obj;
    }

    private Class getClass(String str) {
        Class<?> cls;
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException e) {
            cls = null;
        }
        return cls;
    }

    private Method getMethod(Class cls, String str, Class[] clsArr) {
        Method method = null;
        if (cls != null) {
            if (checkObjExists(str)) {
                method = null;
            } else {
                try {
                    cls.getMethods();
                    cls.getDeclaredMethods();
                    return cls.getDeclaredMethod(str, clsArr);
                } catch (Exception e) {
                    try {
                        return cls.getMethod(str, clsArr);
                    } catch (Exception e2) {
                        method = null;
                        if (cls.getSuperclass() != null) {
                            method = getMethod(cls.getSuperclass(), str, clsArr);
                        }
                    }
                }
            }
        }
        return method;
    }

    private int getSupportVersion() {
        int i;
        int i2 = ROMVERSION;
        if (i2 >= 0) {
            return i2;
        }
        try {
            i = ((Integer) executeClassLoad(getClass("com.color.os.ColorBuild"), "getColorOSVERSION", null, null)).intValue();
        } catch (Exception e) {
            i = 0;
        }
        if (i == 0) {
            try {
                String systemProperty = getSystemProperty("ro.build.version.opporom");
                if (systemProperty.startsWith("V1.4")) {
                    return 3;
                }
                if (systemProperty.startsWith("V2.0")) {
                    return 4;
                }
                if (systemProperty.startsWith("V2.1")) {
                    return 5;
                }
            } catch (Exception e2) {
            }
        }
        ROMVERSION = i;
        return ROMVERSION;
    }

    private String getSystemProperty(String str) {
        Throwable th;
        BufferedReader bufferedReader = null;
        try {
            Runtime runtime = Runtime.getRuntime();
            bufferedReader = new BufferedReader(new InputStreamReader(runtime.exec("getprop " + str).getInputStream()), 1024);
            try {
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                CloseHelper.closeQuietly(bufferedReader);
                return readLine;
            } catch (IOException e) {
                CloseHelper.closeQuietly(bufferedReader);
                return null;
            } catch (Throwable th2) {
                th = th2;
                CloseHelper.closeQuietly(bufferedReader);
                throw th;
            }
        } catch (IOException e2) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // me.leolin.shortcutbadger.Badger
    @TargetApi(11)
    public void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        int i2 = i;
        if (i == 0) {
            i2 = -1;
        }
        Intent intent = new Intent(INTENT_ACTION);
        intent.putExtra(INTENT_EXTRA_PACKAGENAME, componentName.getPackageName());
        intent.putExtra("number", i2);
        intent.putExtra(INTENT_EXTRA_BADGE_UPGRADENUMBER, i2);
        if (BroadcastHelper.canResolveBroadcast(context, intent)) {
            context.sendBroadcast(intent);
        } else if (getSupportVersion() == 6) {
            try {
                Bundle bundle = new Bundle();
                bundle.putInt(INTENT_EXTRA_BADGEUPGRADE_COUNT, i2);
                context.getContentResolver().call(Uri.parse(PROVIDER_CONTENT_URI), "setAppBadgeCount", (String) null, bundle);
            } catch (Throwable th) {
                throw new ShortcutBadgeException("unable to resolve intent: " + intent.toString());
            }
        }
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> getSupportLaunchers() {
        return Collections.singletonList("com.oppo.launcher");
    }
}
