package com.criteo.utils;

import android.content.Context;
import com.aotter.net.trek.common.Constants;
import com.criteo.Criteo;
import com.criteo.info.AppConfigInfo;
import com.criteo.parser.JsonParser;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes-dex2jar.jar:com/criteo/utils/CriteoCacheHelper.class */
public class CriteoCacheHelper {
    public static final String TAG = "criteo.Stories.CriteoCacheHelper";
    public static int cacheLifeHour = 3600000;
    public static long mCacheSavetime;
    public static long mCurrentGetTime;
    public static long mTimeDuration;

    public static void CleanCache(Context context, String str) {
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            new File(getCacheDirectory(context) + "/" + encode + ".srl").delete();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public static void CleanCacheDfpInterstial(Context context, String str) {
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            FileWriter fileWriter = new FileWriter(new File(getCacheDirectory(context) + "/" + encode + ".srl").getAbsoluteFile());
            StringBuilder sb = new StringBuilder();
            sb.append("CleanCacheDi");
            sb.append(encode);
            Tracer.debug(TAG, sb.toString());
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void CleanCacheDi(Context context, String str) {
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            FileWriter fileWriter = new FileWriter(new File(getCacheDirectory(context) + "/" + encode + ".srl").getAbsoluteFile());
            StringBuilder sb = new StringBuilder();
            sb.append("CleanCacheDi");
            sb.append(encode);
            Tracer.debug(TAG, sb.toString());
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static boolean getAppSpecific(Context context) {
        boolean z;
        try {
            File file = new File(getCacheDirectory(context) + "/" + context.getPackageName() + "-config.json");
            z = false;
            if (file.exists()) {
                z = false;
                if (!file.isDirectory()) {
                    z = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    public static String getCacheDirectory(Context context) {
        return context.getCacheDir().getAbsolutePath();
    }

    public static String getCacheDirectory1(Context context) {
        return context.getCacheDir().getPath() + Utils.CACHE_KEY_INTERSTITIAL;
    }

    public static String getCacheFileName(File file) {
        return file.getName();
    }

    public static String getCachevalue(File file) {
        String str = null;
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file));
            str = objectInputStream.readUTF();
            str = str;
            objectInputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static StringBuilder getCachevalueDI(File file) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine + "\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sb;
    }

    public static boolean getConfigFile(Context context) {
        boolean z;
        try {
            File file = new File(getCacheDirectory(context) + "/config_expires.json");
            z = false;
            if (file.exists()) {
                z = false;
                if (!file.isDirectory()) {
                    z = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    public static StringBuilder retrieveBanner(Context context, String str, Criteo.ADType aDType, String str2) {
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (!(appConfigInfo == null || appConfigInfo.getCache_period() == null)) {
            cacheLifeHour = Integer.parseInt(JsonParser.appConfigInfo.getCache_period()) * 1000;
        }
        StringBuilder sb = null;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aDType);
            sb2.append(str2);
            String encode = URLEncoder.encode(sb2.toString(), "UTF-8");
            sb = null;
            sb = null;
            if (aDType.toString().equals("BANNER")) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(getCacheDirectory(context));
                sb3.append("/");
                sb3.append(encode);
                sb3.append(".srl");
                File file = new File(sb3.toString());
                sb = null;
                sb = null;
                if (file.exists()) {
                    sb = null;
                    sb = null;
                    if (!file.isDirectory()) {
                        mCacheSavetime = PreferenceDataUtils.getCacheTimeBanner(context);
                        mCurrentGetTime = System.currentTimeMillis();
                        mTimeDuration = mCurrentGetTime - mCacheSavetime;
                        if (mTimeDuration < cacheLifeHour) {
                            sb = getCachevalueDI(file);
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("mValueBanner");
                            sb4.append((Object) sb);
                            sb = sb;
                            Tracer.debug(TAG, sb4.toString());
                        } else {
                            sb = null;
                            sb = null;
                            if (mTimeDuration >= cacheLifeHour) {
                                sb = null;
                                CleanCache(context, encode);
                                sb = null;
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
        }
        return sb;
    }

    public static StringBuilder retrieveDfpBanner(Context context, String str, Criteo.ADType aDType, String str2) {
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (!(appConfigInfo == null || appConfigInfo.getCache_period() == null)) {
            cacheLifeHour = Integer.parseInt(JsonParser.appConfigInfo.getCache_period()) * 1000;
        }
        try {
            String encode = URLEncoder.encode(aDType + str2, "UTF-8");
            StringBuilder sb = null;
            if (aDType.toString().equals("BANNER")) {
                File file = new File(getCacheDirectory(context) + "/" + encode + ".srl");
                mCacheSavetime = PreferenceDataUtils.getCacheTimeBanner(context);
                mCurrentGetTime = System.currentTimeMillis();
                mTimeDuration = mCurrentGetTime - mCacheSavetime;
                sb = null;
                if (file.exists()) {
                    sb = null;
                    if (!file.isDirectory()) {
                        if (mTimeDuration < cacheLifeHour) {
                            sb = getCachevalueDI(file);
                        } else {
                            sb = null;
                            if (mTimeDuration >= cacheLifeHour) {
                                CleanCache(context, encode);
                                sb = null;
                            }
                        }
                    }
                }
            }
            return sb;
        } catch (Exception e) {
            Tracer.debug(TAG, "retrieveNative" + e.getMessage());
            return null;
        }
    }

    public static StringBuilder retrieveDfpInterstitial(Context context, String str, Criteo.ADType aDType, String str2) {
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (!(appConfigInfo == null || appConfigInfo.getCache_period() == null)) {
            cacheLifeHour = Integer.parseInt(JsonParser.appConfigInfo.getCache_period()) * 1000;
        }
        try {
            String encode = URLEncoder.encode(aDType + str2, "UTF-8");
            StringBuilder sb = null;
            if (aDType.toString().equals("INTERSTITIAL")) {
                File file = new File(getCacheDirectory(context) + "/" + encode + ".srl");
                mCacheSavetime = PreferenceDataUtils.getCacheTimeBanner(context);
                mCurrentGetTime = System.currentTimeMillis();
                mTimeDuration = mCurrentGetTime - mCacheSavetime;
                sb = null;
                if (file.exists()) {
                    sb = null;
                    if (!file.isDirectory()) {
                        if (mTimeDuration < cacheLifeHour) {
                            sb = getCachevalueDI(file);
                        } else {
                            sb = null;
                            if (mTimeDuration >= cacheLifeHour) {
                                CleanCache(context, encode);
                                sb = null;
                            }
                        }
                    }
                }
            }
            return sb;
        } catch (Exception e) {
            Tracer.debug(TAG, "retrieveNative" + e.getMessage());
            return null;
        }
    }

    public static StringBuilder retrieveInterstitial(Context context, String str, Criteo.ADType aDType, String str2) {
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (!(appConfigInfo == null || appConfigInfo.getCache_period() == null)) {
            cacheLifeHour = Integer.parseInt(JsonParser.appConfigInfo.getCache_period()) * 1000;
        }
        try {
            String encode = URLEncoder.encode(aDType + str2, "UTF-8");
            StringBuilder sb = null;
            if (aDType.toString().equals("INTERSTITIAL")) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getCacheDirectory(context));
                sb2.append("/");
                sb2.append(encode);
                sb2.append(".srl");
                File file = new File(sb2.toString());
                mCacheSavetime = PreferenceDataUtils.getCacheTimeInterstitial(context);
                mCurrentGetTime = System.currentTimeMillis();
                mTimeDuration = mCurrentGetTime - mCacheSavetime;
                sb = null;
                if (file.exists()) {
                    sb = null;
                    if (!file.isDirectory()) {
                        if (mTimeDuration < cacheLifeHour) {
                            sb = getCachevalueDI(file);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("mValueinterstitial");
                            sb3.append((Object) sb);
                            Tracer.debug(TAG, sb3.toString());
                        } else {
                            sb = null;
                            if (mTimeDuration >= cacheLifeHour) {
                                CleanCache(context, encode);
                                sb = null;
                            }
                        }
                    }
                }
            }
            return sb;
        } catch (Exception e) {
            Tracer.debug(TAG, "retrieveNative" + e.getMessage());
            return null;
        }
    }

    public static String retrieveNative(Context context, String str, Criteo.ADType aDType, String str2) {
        String str3;
        String str4 = aDType + str2;
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (!(appConfigInfo == null || appConfigInfo.getCache_period() == null)) {
            cacheLifeHour = Integer.parseInt(JsonParser.appConfigInfo.getCache_period()) * 1000;
        }
        try {
            String encode = URLEncoder.encode(str4, "UTF-8");
            File file = new File(getCacheDirectory(context) + "/" + encode + ".srl");
            if (!file.exists()) {
                return "";
            }
            if (aDType.toString().equals(Constants.AD_TYPE_NATIVE)) {
                mCacheSavetime = PreferenceDataUtils.getCacheTimeNative(context);
                mCurrentGetTime = System.currentTimeMillis();
                mTimeDuration = mCurrentGetTime - mCacheSavetime;
                if (mTimeDuration < cacheLifeHour) {
                    str3 = getCachevalue(file);
                    return str3;
                } else if (mTimeDuration >= cacheLifeHour) {
                    CleanCache(context, encode);
                }
            }
            str3 = null;
            return str3;
        } catch (Exception e) {
            Tracer.debug(TAG, "retrieveNative" + e.getMessage());
            return "";
        }
    }

    public static void saveBanner(Context context, String str, String str2, Criteo.ADType aDType, String str3) {
        try {
            String encode = URLEncoder.encode(aDType + str3, "UTF-8");
            Tracer.debug(TAG, "type" + aDType.getClass().getName() + aDType);
            if (aDType.toString().equals("BANNER")) {
                File file = new File(getCacheDirectory(context) + "/" + encode + ".srl");
                PreferenceDataUtils.setCacheTimeBanner(context, Long.valueOf(System.currentTimeMillis()));
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file.getAbsoluteFile()));
                bufferedWriter.write(str2);
                bufferedWriter.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void saveDfpBanner(Context context, String str, String str2, Criteo.ADType aDType, String str3) {
        try {
            String encode = URLEncoder.encode(aDType + str3, "UTF-8");
            Tracer.debug(TAG, "type" + aDType.getClass().getName() + aDType);
            if (aDType.toString().equals("BANNER")) {
                File file = new File(getCacheDirectory(context) + "/" + encode + ".srl");
                PreferenceDataUtils.setCacheTimeBanner(context, Long.valueOf(System.currentTimeMillis()));
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file.getAbsoluteFile()));
                bufferedWriter.write(str2);
                bufferedWriter.close();
                Tracer.debug(TAG, "inside banner" + str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void saveDfpInterstitial(Context context, String str, String str2, Criteo.ADType aDType, String str3) {
        try {
            String encode = URLEncoder.encode(aDType + str3, "UTF-8");
            Tracer.debug(TAG, "type" + aDType.getClass().getName() + aDType);
            if (aDType.toString().equals("INTERSTITIAL")) {
                File file = new File(getCacheDirectory(context) + "/" + encode + ".srl");
                PreferenceDataUtils.setCacheTimeBanner(context, Long.valueOf(System.currentTimeMillis()));
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file.getAbsoluteFile()));
                bufferedWriter.write(str2);
                bufferedWriter.close();
                Tracer.debug(TAG, "inside banner" + str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void saveInterstitial(Context context, String str, String str2, Criteo.ADType aDType, String str3) {
        try {
            String encode = URLEncoder.encode(aDType + str3, "UTF-8");
            Tracer.debug(TAG, "type" + aDType.getClass().getName() + aDType);
            if (aDType.toString().equals("INTERSTITIAL")) {
                File file = new File(getCacheDirectory(context) + "/" + encode + ".srl");
                PreferenceDataUtils.setCacheTimeInterstitial(context, Long.valueOf(System.currentTimeMillis()));
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file.getAbsoluteFile()));
                bufferedWriter.write(str2);
                bufferedWriter.close();
                Tracer.debug(TAG, "inside interstial" + str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void saveNative(Context context, String str, String str2, Criteo.ADType aDType, String str3) {
        try {
            String encode = URLEncoder.encode(aDType + str3, "UTF-8");
            File file = new File(getCacheDirectory(context) + "/" + encode + ".srl");
            if (aDType.toString().equals(Constants.AD_TYPE_NATIVE)) {
                PreferenceDataUtils.setCacheTimeNative(context, Long.valueOf(System.currentTimeMillis()));
            }
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
            objectOutputStream.writeUTF(str2);
            objectOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
