package com.millennialmedia.internal.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.millennialmedia.MMLog;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.bouncycastle.i18n.ErrorBundle;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/CalendarUtils.class */
public class CalendarUtils {
    private static final String TAG = "CalendarUtils";
    @SuppressLint({"SimpleDateFormat"})
    private static final SimpleDateFormat rruleUntilDateFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
    private static final String[] DaysInWeekArray = {"SU", "MO", "TU", "WE", "TH", "FR", "SA", "SU"};
    private static final String[] calendarEventDateFormats = {"yyyy-MM-dd'T'HH:mmZZZ", "yyyy-MM-dd'T'HH:mm:ssZZZ"};

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/CalendarUtils$CalendarListener.class */
    public interface CalendarListener {
        void onError(String str);

        void onUIDisplayed();
    }

    public static void addEvent(Context context, JSONObject jSONObject, CalendarListener calendarListener) {
        if (calendarListener == null) {
            MMLog.m4068e(TAG, "CalendarListener is required");
            return;
        }
        String optString = jSONObject.optString("description", null);
        String optString2 = jSONObject.optString(ErrorBundle.SUMMARY_ENTRY, null);
        String optString3 = jSONObject.optString("location", null);
        String recurrenceRule = getRecurrenceRule(jSONObject.optJSONObject("recurrence"));
        Date parseDate = parseDate(jSONObject.optString(TtmlNode.START, null));
        Date parseDate2 = parseDate(jSONObject.optString(TtmlNode.END, null));
        Integer transparency = getTransparency(jSONObject.optString("transparency", null));
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format("Creating calendar event: title: %s, location: %s, start: %s, end: %s, description: %s, rrule: %s, transparency: %s", optString, optString3, parseDate, parseDate2, optString2, recurrenceRule, transparency));
        }
        if (optString == null || parseDate == null) {
            calendarListener.onError("Description and start are required");
            return;
        }
        Intent data = new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", optString);
        data.putExtra("beginTime", parseDate.getTime());
        if (parseDate2 != null) {
            data.putExtra("endTime", parseDate2.getTime());
        }
        if (optString2 != null) {
            data.putExtra("description", optString2);
        }
        if (optString3 != null) {
            data.putExtra("eventLocation", optString3);
        }
        if (recurrenceRule != null) {
            data.putExtra("rrule", recurrenceRule);
        }
        if (transparency != null) {
            data.putExtra("availability", transparency);
        }
        if (Utils.startActivity(context, data)) {
            calendarListener.onUIDisplayed();
        } else {
            calendarListener.onError("No calendar application installed");
        }
    }

    public static ArrayList<String> convertDaysToRRuleDays(JSONArray jSONArray) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            int optInt = jSONArray.optInt(i, 0);
            if (optInt >= 0) {
                String[] strArr = DaysInWeekArray;
                if (optInt < strArr.length) {
                    arrayList.add(strArr[optInt]);
                }
            }
            MMLog.m4068e(TAG, "Invalid index for day of week <" + optInt + ">");
        }
        return arrayList;
    }

    public static String getRecurrenceRule(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String optString = jSONObject.optString("frequency", null);
        if (optString == null) {
            MMLog.m4068e(TAG, "frequency is required for recurrence rule");
            return null;
        }
        sb.append("FREQ=");
        sb.append(optString);
        sb.append(';');
        Date parseDate = parseDate(jSONObject.optString("expires", null));
        if (parseDate != null) {
            String format = rruleUntilDateFormat.format(parseDate);
            sb.append("UNTIL=");
            sb.append(format);
            sb.append(';');
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("daysInWeek");
        if (optJSONArray != null) {
            ArrayList<String> convertDaysToRRuleDays = convertDaysToRRuleDays(optJSONArray);
            if (convertDaysToRRuleDays.size() > 0) {
                sb.append("BYDAY=");
                sb.append(TextUtils.join(",", convertDaysToRRuleDays));
                sb.append(';');
            }
        }
        String optString2 = jSONObject.optString("daysInMonth", null);
        if (optString2 != null) {
            String replaceAll = optString2.replaceAll("\\[", "").replaceAll("\\]", "");
            sb.append("BYMONTHDAY=");
            sb.append(replaceAll);
            sb.append(';');
        }
        String optString3 = jSONObject.optString("monthsInYear", null);
        if (optString3 != null) {
            String replaceAll2 = optString3.replaceAll("\\[", "").replaceAll("\\]", "");
            sb.append("BYMONTH=");
            sb.append(replaceAll2);
            sb.append(';');
        }
        String optString4 = jSONObject.optString("daysInYear", null);
        if (optString4 != null) {
            sb.append("BYYEARDAY=");
            sb.append(optString4);
            sb.append(';');
        }
        return sb.toString().toUpperCase();
    }

    public static Integer getTransparency(String str) {
        Integer num;
        int i;
        if ("transparent".equals(str)) {
            i = 1;
        } else if (!"opaque".equals(str)) {
            num = null;
            return num;
        } else {
            i = 0;
        }
        num = Integer.valueOf(i);
        return num;
    }

    public static Date parseDate(String str) {
        Date date;
        Date date2;
        Date date3 = null;
        if (str == null) {
            return null;
        }
        String[] strArr = calendarEventDateFormats;
        int length = strArr.length;
        int i = 0;
        while (true) {
            date = date3;
            if (i >= length) {
                break;
            }
            String str2 = strArr[i];
            try {
                date = new SimpleDateFormat(str2).parse(str);
                date2 = date;
            } catch (ParseException e) {
                date2 = date3;
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "Parsing exception for value = " + str + " with pattern = " + str2);
                    date2 = date3;
                }
            }
            if (date != null) {
                break;
            }
            i++;
            date3 = date2;
        }
        if (date == null) {
            MMLog.m4068e(TAG, "Error parsing calendar event date <" + str + ">");
        }
        return date;
    }
}
