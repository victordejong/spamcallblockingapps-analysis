package com.android.contacts.util;

import android.net.Uri;
import android.provider.BaseColumns;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/SpeedDialList.class */
public class SpeedDialList {
    public static final String AUTHORITY = "speeddiallist";
    public static final String TABLE_NAME = "speeddiallist";
    public static final Uri CONTENT_URI = Uri.parse("content://speeddiallist/speeddiallist");
    public static final Uri CONTENT_FILTER_URI = Uri.parse("content://speeddiallistspeeddiallist/filter");

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/SpeedDialList$Columns.class */
    public interface Columns extends BaseColumns {
        public static final String CONTACTSID = "contactid";
        public static final String DATAID = "dataid";
        public static final String DISPLAYNAME = "displayname";
        public static final String ID = "_id";
        public static final String ISSIM = "isSim";
        public static final String PHONENUMBER = "phonenumber";
        public static final String PHONETYPE = "phonetype";
        public static final String PHONETYPENUMBER = "phonetypenumber";
    }
}
