package com.android.contacts.calllog;

import android.database.Cursor;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f730a = {"_id", "number", "date", "duration", "type", "countryiso", "voicemail_uri", "geocoded_location", ContactDetailCallogActivity.EXTRA_NAME, "numbertype", "numberlabel", PhotoSelectionActivity.LOOKUP_URI, "matched_number", "normalized_number", "photo_id", "formatted_number", "is_read", "presentation", "block", "sim_index", "city_id", SpeedDialList.Columns.ISSIM, PhotoSelectionActivity.PHOTO_URI, "subscription_id", "post_dial_digits"};

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f731b = {"_id", "number", "date", "duration", "type", "countryiso", "voicemail_uri", "geocoded_location", ContactDetailCallogActivity.EXTRA_NAME, "numbertype", "numberlabel", PhotoSelectionActivity.LOOKUP_URI, "matched_number", "normalized_number", "photo_id", "formatted_number", "is_read", "presentation", "block", "sim_index", "city_id", SpeedDialList.Columns.ISSIM, PhotoSelectionActivity.PHOTO_URI, "subscription_id"};
    public static final String[] c = {"_id", "number", "date", "duration", "type", "countryiso", "voicemail_uri", "geocoded_location", ContactDetailCallogActivity.EXTRA_NAME, "numbertype", "numberlabel", PhotoSelectionActivity.LOOKUP_URI, "matched_number", "normalized_number", "photo_id", "formatted_number", "is_read", "presentation", "block", "sim_index", "city_id", SpeedDialList.Columns.ISSIM, "subscription_id"};
    public static final String[] d = {"_id", "number", "date", "duration", "type", "countryiso", "voicemail_uri", "geocoded_location", ContactDetailCallogActivity.EXTRA_NAME, "numbertype", "numberlabel", PhotoSelectionActivity.LOOKUP_URI, "matched_number", "normalized_number", "photo_id", "formatted_number", "is_read", "presentation", "subscription_component_name", "subscription_id", PhotoSelectionActivity.PHOTO_URI, "post_dial_digits"};
    public static final String[] e = {"_id", "number", "date", "duration", "type", "countryiso", "voicemail_uri", "geocoded_location", ContactDetailCallogActivity.EXTRA_NAME, "numbertype", "numberlabel", PhotoSelectionActivity.LOOKUP_URI, "matched_number", "normalized_number", "photo_id", "formatted_number", "is_read", "presentation", "subscription_component_name", "subscription_id", PhotoSelectionActivity.PHOTO_URI};
    public static final String[] f = {"_id", "number", "date", "duration", "type", "countryiso", "voicemail_uri", "geocoded_location", ContactDetailCallogActivity.EXTRA_NAME, "numbertype", "numberlabel", PhotoSelectionActivity.LOOKUP_URI, "matched_number", "normalized_number", "photo_id", "formatted_number", "is_read", "presentation", "subscription_component_name", "subscription_id"};
    public static final String[] g;
    public static final int h;
    public static final int i;
    public static final int j;
    public static final int k;
    public static final String[] l;

    static {
        int i2 = 21;
        int i3 = 20;
        g = PhoneCapabilityTester.IsAsusDevice() ? CompatUtils.isNCompatible() ? f730a : CompatUtils.isMarshmallowCompatible() ? f731b : c : CompatUtils.isNCompatible() ? d : CompatUtils.isMarshmallowCompatible() ? e : f;
        h = PhoneCapabilityTester.IsAsusDevice() ? 18 : -1;
        i = CompatUtils.isMarshmallowCompatible() ? PhoneCapabilityTester.IsAsusDevice() ? 22 : 20 : -1;
        if (CompatUtils.isNCompatible()) {
            i3 = PhoneCapabilityTester.IsAsusDevice() ? 25 : 22;
        } else if (CompatUtils.isMarshmallowCompatible()) {
            i3 = PhoneCapabilityTester.IsAsusDevice() ? 24 : 21;
        } else if (PhoneCapabilityTester.IsAsusDevice()) {
            i3 = 23;
        }
        j = i3;
        if (!CompatUtils.isNCompatible()) {
            i2 = -1;
        } else if (PhoneCapabilityTester.IsAsusDevice()) {
            i2 = 24;
        }
        k = i2;
        l = new String[g.length + 1];
        System.arraycopy(g, 0, l, 0, g.length);
        l[g.length] = "section";
    }

    public static boolean a(Cursor cursor) {
        int i2 = cursor.getInt(j);
        return i2 == 0 || i2 == 2;
    }
}
