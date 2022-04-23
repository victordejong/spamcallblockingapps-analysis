package com.privacystar.core.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.os.Build;
import android.os.Parcel;
import android.provider.CallLog;
import android.support.p001v4.app.ActivityCompat;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.format.DateFormat;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.application.AppManagerImpl;
import com.privacystar.core.application.CrashLibrary;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.call.call_event.LogItem;
import com.privacystar.core.data.model.LogItemFields;
import com.privacystar.core.data.providers.standard.CallLogDataProvider;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.EventValueNotSetException;
import com.privacystar.core.util.enums.CarrierMobileCode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.Vector;
import org.apache.commons.cli.HelpFormatter;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/InformationUtil.class */
public class InformationUtil {
    private static final String APP_VERSION = "appVersion";
    private static final int BLOCKED_TYPE_LG = 6504;
    private static final String DEFAULT_STATE_ABBR = "--";
    private static final String DEVICE_CARRIER = "carrierName";
    private static final String DEVICE_MANUFACTURER = "maker";
    private static final String DEVICE_MODEL = "model";
    private static final String DEVICE_OS_VERSION = "OS";
    private static final String DEVICE_PIN = "HID";
    private static final String HTC_CARRIER_NAME = "cname";
    private static final int LOGTYPE_CALL_S2 = 100;
    private static final String LOGTYPE_COLUMN_S2 = "logtype";
    private static final int MISSED_TYPE_LG = 6503;
    private static final int QUERY_VARIABLE_LIMIT = 500;
    private static final int REJECTED_TYPE_LG = 10;
    private static final int REJECTED_TYPE_S2 = 4;
    private static final int REJECTED_TYPE_S3 = 5;
    private static final String SAMSUNG_CARRIER_NAME = "cnapname";
    private static final String VARIABLES = "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?";
    private static String cnamField;
    private static String deviceId;

    public static void appendEventPayload(StringBuilder sb, Object obj) {
        appendEventPayload(sb, obj, '|');
    }

    public static void appendEventPayload(StringBuilder sb, Object obj, char c) {
        if (sb.length() > 0) {
            sb.append(c);
        }
        sb.append(obj);
    }

    public static String buildEventPayload(Object... objArr) {
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            appendEventPayload(sb, obj);
        }
        return sb.toString();
    }

    private static void cacheDeviceId(Context context) {
        deviceId = Device.getDeviceId(context);
        CrashLibrary.logDeviceIdentifier(deviceId);
        if (BuildUtil.INSTANCE.isDevelopmentBuild()) {
            deviceId += "x" + context.getResources().getInteger(C1566R.integer.dev_id_suffix);
        }
    }

    public static String customStripSeparators(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            int digit = Character.digit(charAt, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (PhoneNumberUtils.isISODigit(charAt)) {
                sb.append(charAt);
            }
        }
        Timber.m37d("%s to %s", str, sb.toString());
        return sb.toString();
    }

    public static String eventValFromBoolean(Boolean bool) throws EventValueNotSetException {
        if (bool == null) {
            throw new EventValueNotSetException("Null (unset) boolean value passed. Initialize your Event before tracking / dispatching");
        }
        return bool.booleanValue() ? "1" : "0";
    }

    public static String getApplicationVersion(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Timber.m32e(e, "Unable to find package name", new Object[0]);
            str = "";
        }
        return str;
    }

    public static Vector<LogItem> getCallHistory(String str, int i, int i2, int i3, Context context) {
        int i4;
        String str2;
        String num = i2 == 0 ? "99999999" : Integer.toString(i2);
        Vector<LogItem> vector = new Vector<>();
        if (!Text.isBlank(str) && str.length() > 3 && !Text.equalsIgnoreCase(str, "unknown") && !Text.equalsIgnoreCase(str, "restricted")) {
            str2 = "PHONE_NUMBERS_EQUAL(number,'" + str + "')";
            String str3 = "PHONE_NUMBERS_EQUAL(address,'" + str + "')";
            i4 = i;
        } else if (i == 2) {
            return vector;
        } else {
            i4 = i;
            if (i == 3) {
                i4 = 1;
            }
            str2 = "length(number) < 3 OR number == 'unknown' OR number == 'restricted'";
        }
        if (i4 == 1 || i4 == 3) {
            Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, null, str2, null, "date DESC LIMIT " + num + " OFFSET 0");
            if (query != null) {
                vector.addAll(getCallLogUsingCursor(context, query, "number date name status duration"));
            }
        }
        if (!vector.isEmpty() && i4 == 3) {
            Collections.sort(vector, InformationUtil$$Lambda$0.$instance);
            if (vector.size() > i2 && i2 > 0) {
                vector.setSize(i2);
            }
            for (int i5 = 0; i5 < vector.size(); i5++) {
                vector.get(i5).setItemId(i5);
            }
        }
        return vector;
    }

    public static Cursor getCallLog(Context context, String[] strArr) {
        String str = "";
        for (String str2 : strArr) {
            str = str + str2 + " ";
        }
        String callLogTypeFilter = getCallLogTypeFilter(str);
        String cnamField2 = getCnamField(context);
        String[] strArr2 = (cnamField2 == null || cnamField2.length() <= 0) ? new String[]{"number", "name", LogItemFields.DATE, "duration", "type", "_id"} : new String[]{"number", "name", LogItemFields.DATE, "duration", "type", "_id", cnamField2};
        if (ActivityCompat.checkSelfPermission(context, "android.permission.READ_CALL_LOG") != 0) {
            Timber.m34e("Application doesn't have permission to read from the call log.", new Object[0]);
            return null;
        }
        return context.getContentResolver().query(CallLog.Calls.CONTENT_URI, strArr2, Text.isBlank(callLogTypeFilter) ? null : callLogTypeFilter, null, "date desc");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
        if (r9.equals("") != false) goto L_0x0024;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
        if (r10.equals("") != false) goto L_0x0037;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000d, code lost:
        if (r8.equals("") != false) goto L_0x0010;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Vector<com.privacystar.core.data.call.call_event.LogItem> getCallLog(android.content.Context r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
        /*
            r0 = r8
            if (r0 == 0) goto L_0x0010
            r0 = r8
            r12 = r0
            r0 = r8
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0014
        L_0x0010:
            java.lang.String r0 = "99999999"
            r12 = r0
        L_0x0014:
            r0 = r9
            if (r0 == 0) goto L_0x0024
            r0 = r9
            r13 = r0
            r0 = r9
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0028
        L_0x0024:
            java.lang.String r0 = "0"
            r13 = r0
        L_0x0028:
            r0 = r10
            if (r0 == 0) goto L_0x0037
            r0 = r10
            r8 = r0
            r0 = r10
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x003b
        L_0x0037:
            java.lang.String r0 = "number date name duration"
            r8 = r0
        L_0x003b:
            r0 = r11
            java.lang.String r0 = getCallLogTypeFilter(r0)
            r9 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: SecurityException -> 0x0095
            r10 = r0
            android.net.Uri r0 = android.provider.CallLog.Calls.CONTENT_URI     // Catch: SecurityException -> 0x0095
            r11 = r0
            r0 = r9
            boolean r0 = com.privacystar.core.util.Text.isBlank(r0)     // Catch: SecurityException -> 0x0095
            if (r0 == 0) goto L_0x0057
            r0 = 0
            r9 = r0
            goto L_0x0057
        L_0x0057:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: SecurityException -> 0x0095
            r14 = r0
            r0 = r14
            r0.<init>()     // Catch: SecurityException -> 0x0095
            r0 = r14
            java.lang.String r1 = "date DESC LIMIT "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: SecurityException -> 0x0095
            r0 = r14
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: SecurityException -> 0x0095
            r0 = r14
            java.lang.String r1 = " OFFSET "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: SecurityException -> 0x0095
            r0 = r14
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: SecurityException -> 0x0095
            r0 = r10
            r1 = r11
            r2 = 0
            r3 = r9
            r4 = 0
            r5 = r14
            java.lang.String r5 = r5.toString()     // Catch: SecurityException -> 0x0095
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: SecurityException -> 0x0095
            r9 = r0
            goto L_0x00a3
        L_0x0095:
            r9 = move-exception
            r0 = r9
            java.lang.String r1 = "while getting CallLog"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            timber.log.Timber.m32e(r0, r1, r2)
            r0 = 0
            r9 = r0
        L_0x00a3:
            r0 = r7
            r1 = r9
            r2 = r8
            java.util.Vector r0 = getCallLogUsingCursor(r0, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.InformationUtil.getCallLog(android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String):java.util.Vector");
    }

    public static String getCallLogTypeFilter(String str) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        if (Text.containsIgnoreCase(str, CallLogDataProvider.CALL_TYPE_INCOMING) || Text.isBlank(str)) {
            arrayList.add(1);
        }
        if (Text.containsIgnoreCase(str, CallLogDataProvider.CALL_TYPE_OUTGOING) || Text.isBlank(str)) {
            arrayList.add(2);
        }
        if (Text.containsIgnoreCase(str, CallLogDataProvider.CALL_TYPE_MISSED) || Text.isBlank(str)) {
            arrayList.add(3);
            arrayList.add(4);
            arrayList.add(5);
            arrayList.add(10);
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (i > 0) {
                sb.append(" OR ");
            }
            sb.append("type");
            sb.append(" = ");
            sb.append(arrayList.get(i));
        }
        return sb.toString();
    }

    public static Vector<LogItem> getCallLogUsingCursor(Context context, Cursor cursor, String str) {
        Vector<LogItem> vector = new Vector<>();
        try {
            cursor.moveToFirst();
            int count = cursor.getCount();
            int columnIndex = cursor.getColumnIndex("number");
            int columnIndex2 = cursor.getColumnIndex(LogItemFields.DATE);
            int columnIndex3 = cursor.getColumnIndex("type");
            int columnIndex4 = cursor.getColumnIndex("duration");
            int columnIndex5 = cursor.getColumnIndex(LOGTYPE_COLUMN_S2);
            int i = 0;
            for (int i2 = 0; i2 < count; i2++) {
                LogItem logItem = new LogItem();
                if (columnIndex5 <= -1 || cursor.getInt(columnIndex5) == 100) {
                    if (str.toLowerCase().contains(LogItemFields.DATE)) {
                        logItem.setDate(cursor.getLong(columnIndex2));
                    }
                    if (str.toLowerCase().contains("name")) {
                        logItem.setName(getNameFromCursor(cursor));
                    }
                    if (str.toLowerCase().contains("number")) {
                        logItem.setPhoneNumber(normalizeNumber(cursor.getString(columnIndex)));
                    }
                    if (str.toLowerCase().contains("duration")) {
                        logItem.setDuration(cursor.getLong(columnIndex4));
                    }
                    if (str.toLowerCase().contains("status")) {
                        int i3 = cursor.getInt(columnIndex3);
                        if (i3 == 1) {
                            logItem.setCallStatus(CallLogDataProvider.CALL_TYPE_INCOMING);
                            logItem.setDirection(CallHistoryHelper.CallDirection.INCOMING_RECEIVED);
                        } else if (i3 == 2) {
                            logItem.setCallStatus(CallLogDataProvider.CALL_TYPE_OUTGOING);
                            logItem.setDirection(CallHistoryHelper.CallDirection.OUTGOING_RECEIVED);
                        } else if (i3 == 3 || i3 == 10 || i3 == 4 || i3 == 5) {
                            logItem.setCallStatus(CallLogDataProvider.CALL_TYPE_MISSED);
                            logItem.setDirection(CallHistoryHelper.CallDirection.INCOMING_MISSED);
                        } else {
                            Timber.m25w("Unknown call type %d, treating as missed.", Integer.valueOf(i3));
                            logItem.setCallStatus(CallLogDataProvider.CALL_TYPE_MISSED);
                        }
                    }
                    logItem.setType(LogItem.LogItemType.CALL);
                    logItem.setItemId(i);
                    vector.add(logItem);
                    i++;
                    cursor.moveToNext();
                } else {
                    cursor.moveToNext();
                }
            }
            return vector;
        } finally {
            cursor.close();
        }
    }

    public static CarrierMobileCode getCarrierCode(Context context) {
        String mcc = getMcc(context);
        String mnc = getMnc(context);
        String gid1 = getGid1(context);
        Timber.m37d("Found MCC/MNC/GID1: " + mcc + "/" + mnc + "/" + gid1, new Object[0]);
        return CarrierMobileCode.Companion.matchCarrier(mcc, mnc, gid1);
    }

    public static String getCarrierName(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c3, code lost:
        if (r7 == null) goto L_0x00c9;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getCnamField(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.InformationUtil.getCnamField(android.content.Context):java.lang.String");
    }

    public static String getCnamNameFromCallLog(Context context, String str) {
        Throwable th;
        String cnamField2 = getCnamField(context);
        Cursor cursor = null;
        if (cnamField2 == null || cnamField2.length() <= 0) {
            return null;
        }
        try {
            Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{cnamField2}, null, null, "date desc LIMIT 1");
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndex(cnamField2));
                        if (query != null) {
                            query.close();
                        }
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query == null) {
                return null;
            }
            query.close();
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String getCurrencyFormat() {
        return NumberFormat.getCurrencyInstance().getCurrency().getSymbol();
    }

    public static String getDateFormat(Context context) {
        return ((SimpleDateFormat) DateFormat.getDateFormat(context)).toLocalizedPattern();
    }

    public static String getDeviceManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getDeviceName() {
        return Build.MODEL;
    }

    public static String getDevicePin(Context context) {
        if (deviceId == null) {
            cacheDeviceId(context);
        }
        return deviceId;
    }

    public static String getDevicePinOrNothing(Context context) {
        if (PermissionUtils.checkOwnedPermissions(context, "android.permission.READ_PHONE_STATE") || AppManagerImpl.INSTANCE.flavorUsesGuidID()) {
            return getDevicePin(context);
        }
        Timber.m25w("Application doesn't have permission to read device ID.", new Object[0]);
        return "";
    }

    public static String getDeviceType(TelephonyManager telephonyManager) {
        switch (telephonyManager.getPhoneType()) {
            case 0:
                return "NONE";
            case 1:
                return "GSM";
            case 2:
                return "CDMA";
            default:
                return "";
        }
    }

    public static boolean getDtsActive() {
        return TimeZone.getDefault().inDaylightTime(new Date());
    }

    public static Cursor getEvent72CallLog(Context context, String str) {
        String str2;
        if (Text.isBlank(str)) {
            return null;
        }
        String callLogTypeFilter = getCallLogTypeFilter("incoming missed");
        if (Text.isBlank(callLogTypeFilter)) {
            str2 = "";
        } else {
            str2 = "(" + callLogTypeFilter;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(Text.isBlank(str2) ? "" : ") AND ");
        return context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"number", LogItemFields.DATE}, sb.toString() + "number IN " + str, null, "date desc");
    }

    public static String getFormattedIMSI(Context context) {
        String str;
        String simOperator = getSimOperator(context);
        String imsi = getIMSI(context);
        String str2 = HelpFormatter.DEFAULT_OPT_PREFIX;
        int length = simOperator.length();
        if (Text.isBlank(imsi) || imsi.length() < 7) {
            str = getLineOneMDN(context);
            if (!Text.isBlank(str)) {
                str2 = HelpFormatter.DEFAULT_OPT_PREFIX + "P";
            } else {
                str2 = HelpFormatter.DEFAULT_OPT_PREFIX + "D";
                str = getDevicePin(context);
            }
        } else {
            str = imsi.substring(length);
        }
        return simOperator + str2 + str;
    }

    public static String getGid1(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        try {
            telephonyManager.getGroupIdLevel1();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return telephonyManager.getGroupIdLevel1();
    }

    @SuppressLint({"HardwareIds"})
    public static String getIMSI(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
    }

    @SuppressLint({"HardwareIds"})
    public static String getImei(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
    }

    @SuppressLint({"HardwareIds"})
    public static String getLineOneMDN(Context context) {
        if (!PermissionUtils.hasDeviceNumberPermissions(context)) {
            Timber.m25w("Tried to get MDN without granted permissions.", new Object[0]);
            return "";
        } else if (!Text.equals(context.getString(C1566R.string.international), "false")) {
            return getFormattedIMSI(context);
        } else {
            String line1Number = ((TelephonyManager) context.getSystemService("phone")).getLine1Number();
            String str = line1Number;
            if (Text.isBlank(line1Number)) {
                str = NumbersUtil.getDebugNumber();
            }
            String str2 = str;
            if (!Text.isBlank(str)) {
                String normalizeNumber = normalizeNumber(str, true);
                str2 = normalizeNumber;
                if (normalizeNumber.length() > PreferenceUtil.getMatchTrimLength()) {
                    str2 = NumbersUtil.getLast10Digits(normalizeNumber);
                }
            }
            return str2;
        }
    }

    public static String getLocale() {
        return Locale.getDefault().toString();
    }

    public static String getMcc(Context context) {
        String networkOperator = getNetworkOperator(context);
        return Text.isBlank(networkOperator) ? "" : networkOperator.substring(0, 3);
    }

    public static String getMnc(Context context) {
        String networkOperator = getNetworkOperator(context);
        return Text.isBlank(networkOperator) ? "" : networkOperator.substring(3);
    }

    private static String getNameForDevice() {
        String lowerCase = getDeviceManufacturer().toLowerCase();
        return lowerCase.contains("samsung") ? SAMSUNG_CARRIER_NAME : lowerCase.contains("htc") ? HTC_CARRIER_NAME : "name";
    }

    private static String getNameFromCursor(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("name");
        String str = "";
        if (columnIndex >= 0) {
            String string = cursor.getString(columnIndex);
            str = string;
            if (string != null) {
                str = string;
                if (!string.equals("null")) {
                    return string;
                }
            }
        }
        int columnIndex2 = cursor.getColumnIndex(SAMSUNG_CARRIER_NAME);
        if (columnIndex2 >= 0) {
            return cursor.getString(columnIndex2);
        }
        int columnIndex3 = cursor.getColumnIndex(HTC_CARRIER_NAME);
        return columnIndex3 >= 0 ? cursor.getString(columnIndex3) : str;
    }

    public static String getNetworkOperator(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return telephonyManager == null ? "" : telephonyManager.getNetworkOperator();
    }

    public static String getNumberFormat() {
        return ((DecimalFormat) NumberFormat.getNumberInstance()).toLocalizedPattern();
    }

    public static String getOffenderListString(ArrayList<String> arrayList, int i, int i2) {
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i3 = size - i2;
        int i4 = i;
        if (i3 < i) {
            i4 = i3;
        }
        if (size <= 0 || size <= i2 || i4 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("('");
        if (i4 > 0) {
            sb.append(arrayList.get(i2));
        }
        for (int i5 = i2 + 1; i5 < i2 + i4; i5++) {
            sb.append("','");
            sb.append(arrayList.get(i5));
        }
        sb.append("')");
        return sb.toString();
    }

    public static String getPhoneNumber(Context context) {
        String storedPhoneNumber = PreferenceUtil.getStoredPhoneNumber();
        String str = storedPhoneNumber;
        if (Text.isBlank(storedPhoneNumber)) {
            str = Text.equals(context.getString(C1566R.string.international), "true") ? getFormattedIMSI(context) : getLineOneMDN(context);
        }
        return str;
    }

    public static String getPlatformNumber() {
        return Build.VERSION.RELEASE;
    }

    public static String getPlatformNumberForPSA() {
        return "" + getPlatformNumber();
    }

    public static String getSimOperator(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
    }

    @SuppressLint({"HardwareIds"})
    public static String getSimSerialNumber(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
    }

    public static Cursor getSimplifiedCallLog(Context context) {
        if (!PermissionUtils.checkOwnedPermissions(context, "android.permission.READ_CALL_LOG")) {
            return null;
        }
        String callLogTypeFilter = getCallLogTypeFilter("incoming outgoing missed");
        String cnamField2 = getCnamField(context);
        return context.getContentResolver().query(CallLog.Calls.CONTENT_URI, (cnamField2 == null || cnamField2.length() <= 0) ? new String[]{"number", "name", LogItemFields.DATE, "duration", "type"} : new String[]{"number", "name", LogItemFields.DATE, "duration", "type", cnamField2}, Text.isBlank(callLogTypeFilter) ? null : callLogTypeFilter, null, "date desc");
    }

    public static String getTimeFormat(Context context) {
        return ((SimpleDateFormat) DateFormat.getTimeFormat(context)).toLocalizedPattern();
    }

    public static String getTimeZoneFormat() {
        return TimeZone.getDefault().getDisplayName();
    }

    public static String getTimeZoneTZ() {
        return TimeZone.getDefault().getID();
    }

    public static String getUserState() {
        return PreferenceUtil.getAGState();
    }

    public static boolean isFirstInstall() {
        boolean z = true;
        try {
            if (PSApplication.context().getPackageManager().getPackageInfo(PSApplication.context().getPackageName(), 0).firstInstallTime != PSApplication.context().getPackageManager().getPackageInfo(PSApplication.context().getPackageName(), 0).lastUpdateTime) {
                z = false;
            }
            return z;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return true;
        }
    }

    protected static boolean isValidStateAbbr(String str) {
        return !Text.isBlank(str) && str.length() == 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ int lambda$getCallHistory$0$InformationUtil(LogItem logItem, LogItem logItem2) {
        if (logItem.getDate() < logItem2.getDate()) {
            return 1;
        }
        return logItem.getDate() == logItem2.getDate() ? 0 : -1;
    }

    public static String normalizeNumber(String str) {
        return normalizeNumber(str, false);
    }

    public static String normalizeNumber(String str, boolean z) {
        if (str == null) {
            return "";
        }
        if (!z && str.length() <= 3) {
            return str;
        }
        String str2 = str;
        if (str.contains(";")) {
            str2 = str.substring(0, str.indexOf(";"));
        }
        String replaceAll = customStripSeparators(str2).replaceAll("N", "");
        String str3 = replaceAll;
        if (replaceAll.length() > 10) {
            str3 = replaceAll.substring(replaceAll.length() - 10);
        }
        return str3;
    }

    private static String[] quickSubArray(String[] strArr, int i, int i2) {
        int i3 = i * i2;
        int length = strArr.length;
        int i4 = 0;
        if (i3 >= length) {
            return new String[0];
        }
        int i5 = i3 + i2;
        if (i5 > length) {
            i2 = length - i3;
        } else {
            length = i5;
        }
        String[] strArr2 = new String[i2];
        while (i3 < length) {
            strArr2[i4] = strArr[i3];
            i3++;
            i4++;
        }
        return strArr2;
    }

    public static String removeDivider(String str) {
        return removeDivider(str, "|");
    }

    public static String removeDivider(String str, String str2) {
        return str.replaceAll(str2, "");
    }

    protected static String sanitizeStateAbbr(String str) {
        if (!isValidStateAbbr(str)) {
            str = "--";
        }
        return str;
    }

    public static void setAttorneyGeneralPrefs(Context context, Boolean bool, String str) {
        boolean z = false;
        Timber.m37d("Attempting to apply Attorney General preferences from server: Alerts Enabled: [%s], State: [%s]", bool, str);
        PreferenceUtil.putAGStateSet(true);
        if (bool != null) {
            z = bool.booleanValue();
        }
        PreferenceUtil.putAGAlertsEnabled(z);
        setUserState(str);
        PreferenceUtil.putAGServiceEligible(Arrays.asList(context.getResources().getStringArray(C1566R.array.attorney_general_enabled_states)).contains(str));
    }

    public static boolean setDevicePhoneNumber(String str) {
        try {
            PreferenceUtil.putStoredPhoneNumber(str);
            return true;
        } catch (Exception e) {
            Timber.m32e(e, "while setting phone number", new Object[0]);
            return false;
        }
    }

    public static void setUserState(String str) {
        PreferenceUtil.putAGState(sanitizeStateAbbr(str));
    }

    public static Boolean unparcelBoolean(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt >= 1) {
            return true;
        }
        return readInt == 0 ? false : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.os.Parcel] */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static void writeBooleanToParcel(Boolean bool, Parcel parcel) {
        parcel.writeInt(bool == null ? -1 : bool.booleanValue());
    }
}
