package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.objectbox.Converters;
import com.callapp.contacts.model.objectbox.ExtractedInfoCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ExtractedInfo_.class */
public final class ExtractedInfo_ implements AbstractC17957c<ExtractedInfo> {
    public static final C17978g<ExtractedInfo>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ExtractedInfo";
    public static final int __ENTITY_ID = 13;
    public static final String __ENTITY_NAME = "ExtractedInfo";
    public static final C17978g<ExtractedInfo> __ID_PROPERTY;
    public static final ExtractedInfo_ __INSTANCE;
    public static final C17978g<ExtractedInfo> comType;
    public static final C17978g<ExtractedInfo> disableNotification;
    public static final C17978g<ExtractedInfo> displayName;
    public static final C17978g<ExtractedInfo> firstSeen;
    public static final C17978g<ExtractedInfo> groupName;

    /* renamed from: id */
    public static final C17978g<ExtractedInfo> f26772id;
    public static final C17978g<ExtractedInfo> lastNotificationShowed;
    public static final C17978g<ExtractedInfo> nameT9Format;
    public static final C17978g<ExtractedInfo> nameT9FormatNoZero;
    public static final C17978g<ExtractedInfo> namesMap;
    public static final C17978g<ExtractedInfo> phoneAsRaw;
    public static final C17978g<ExtractedInfo> recognizedPersonOrigin;
    public static final C17978g<ExtractedInfo> seenCount;
    public static final C17978g<ExtractedInfo> senderName;
    public static final C17978g<ExtractedInfo> starred;
    public static final C17978g<ExtractedInfo> t9Indexes;
    public static final C17978g<ExtractedInfo> unAccentName;
    public static final C17978g<ExtractedInfo> when;
    public static final Class<ExtractedInfo> __ENTITY_CLASS = ExtractedInfo.class;
    public static final AbstractC17949b<ExtractedInfo> __CURSOR_FACTORY = new ExtractedInfoCursor.Factory();
    static final ExtractedInfoIdGetter __ID_GETTER = new ExtractedInfoIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ExtractedInfo_$ExtractedInfoIdGetter.class */
    public static final class ExtractedInfoIdGetter implements AbstractC17950c<ExtractedInfo> {
        ExtractedInfoIdGetter() {
        }

        public final long getId(ExtractedInfo extractedInfo) {
            Long l = extractedInfo.f26771id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        ExtractedInfo_ extractedInfo_ = new ExtractedInfo_();
        __INSTANCE = extractedInfo_;
        C17978g<ExtractedInfo> c17978g = new C17978g<>(extractedInfo_, 0, 1, Long.class, "id", true, "id");
        f26772id = c17978g;
        C17978g<ExtractedInfo> c17978g2 = new C17978g<>(extractedInfo_, 1, 2, Integer.TYPE, "recognizedPersonOrigin", false, "recognizedPersonOrigin", IMDataExtractionUtils.RecognizedPersonOriginConverter.class, IMDataExtractionUtils.RecognizedPersonOrigin.class);
        recognizedPersonOrigin = c17978g2;
        C17978g<ExtractedInfo> c17978g3 = new C17978g<>(extractedInfo_, 2, 3, Integer.TYPE, "comType", false, "comType", IMDataExtractionUtils.ComTypeConverter.class, IMDataExtractionUtils.ComType.class);
        comType = c17978g3;
        C17978g<ExtractedInfo> c17978g4 = new C17978g<>(extractedInfo_, 3, 4, String.class, "senderName");
        senderName = c17978g4;
        C17978g<ExtractedInfo> c17978g5 = new C17978g<>(extractedInfo_, 4, 5, String.class, "groupName");
        groupName = c17978g5;
        C17978g<ExtractedInfo> c17978g6 = new C17978g<>(extractedInfo_, 5, 6, String.class, "phoneAsRaw");
        phoneAsRaw = c17978g6;
        C17978g<ExtractedInfo> c17978g7 = new C17978g<>(extractedInfo_, 6, 7, Long.TYPE, "when");
        when = c17978g7;
        C17978g<ExtractedInfo> c17978g8 = new C17978g<>(extractedInfo_, 7, 8, Long.TYPE, "firstSeen");
        firstSeen = c17978g8;
        C17978g<ExtractedInfo> c17978g9 = new C17978g<>(extractedInfo_, 8, 9, Long.TYPE, "lastNotificationShowed");
        lastNotificationShowed = c17978g9;
        C17978g<ExtractedInfo> c17978g10 = new C17978g<>(extractedInfo_, 9, 10, Integer.TYPE, "seenCount");
        seenCount = c17978g10;
        C17978g<ExtractedInfo> c17978g11 = new C17978g<>(extractedInfo_, 10, 11, Boolean.TYPE, "disableNotification");
        disableNotification = c17978g11;
        C17978g<ExtractedInfo> c17978g12 = new C17978g<>(extractedInfo_, 11, 13, Boolean.TYPE, "starred");
        starred = c17978g12;
        C17978g<ExtractedInfo> c17978g13 = new C17978g<>(extractedInfo_, 12, 14, String.class, "displayName");
        displayName = c17978g13;
        C17978g<ExtractedInfo> c17978g14 = new C17978g<>(extractedInfo_, 13, 15, String.class, "nameT9Format");
        nameT9Format = c17978g14;
        C17978g<ExtractedInfo> c17978g15 = new C17978g<>(extractedInfo_, 14, 16, String.class, "nameT9FormatNoZero");
        nameT9FormatNoZero = c17978g15;
        C17978g<ExtractedInfo> c17978g16 = new C17978g<>(extractedInfo_, 15, 17, String.class, "unAccentName");
        unAccentName = c17978g16;
        C17978g<ExtractedInfo> c17978g17 = new C17978g<>(extractedInfo_, 16, 19, String.class, "t9Indexes", false, "t9Indexes", Converters.ListIntegersConverter.class, List.class);
        t9Indexes = c17978g17;
        C17978g<ExtractedInfo> c17978g18 = new C17978g<>(extractedInfo_, 17, 20, String.class, "namesMap", false, "namesMap", Converters.MapStringIntConverter.class, Map.class);
        namesMap = c17978g18;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7, c17978g8, c17978g9, c17978g10, c17978g11, c17978g12, c17978g13, c17978g14, c17978g15, c17978g16, c17978g17, c17978g18};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<ExtractedInfo>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<ExtractedInfo> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "ExtractedInfo";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<ExtractedInfo> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 13;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "ExtractedInfo";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<ExtractedInfo> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<ExtractedInfo> getIdProperty() {
        return __ID_PROPERTY;
    }
}
