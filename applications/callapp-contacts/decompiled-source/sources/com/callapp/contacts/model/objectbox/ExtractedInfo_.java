package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.objectbox.Converters;
import com.callapp.contacts.model.objectbox.ExtractedInfoCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ExtractedInfo_.class */
public final class ExtractedInfo_ implements c<ExtractedInfo> {
    public static final g<ExtractedInfo>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ExtractedInfo";
    public static final int __ENTITY_ID = 13;
    public static final String __ENTITY_NAME = "ExtractedInfo";
    public static final g<ExtractedInfo> __ID_PROPERTY;
    public static final ExtractedInfo_ __INSTANCE;
    public static final g<ExtractedInfo> comType;
    public static final g<ExtractedInfo> disableNotification;
    public static final g<ExtractedInfo> displayName;
    public static final g<ExtractedInfo> firstSeen;
    public static final g<ExtractedInfo> groupName;
    public static final g<ExtractedInfo> id;
    public static final g<ExtractedInfo> lastNotificationShowed;
    public static final g<ExtractedInfo> nameT9Format;
    public static final g<ExtractedInfo> nameT9FormatNoZero;
    public static final g<ExtractedInfo> namesMap;
    public static final g<ExtractedInfo> phoneAsRaw;
    public static final g<ExtractedInfo> recognizedPersonOrigin;
    public static final g<ExtractedInfo> seenCount;
    public static final g<ExtractedInfo> senderName;
    public static final g<ExtractedInfo> starred;
    public static final g<ExtractedInfo> t9Indexes;
    public static final g<ExtractedInfo> unAccentName;
    public static final g<ExtractedInfo> when;
    public static final Class<ExtractedInfo> __ENTITY_CLASS = ExtractedInfo.class;
    public static final b<ExtractedInfo> __CURSOR_FACTORY = new ExtractedInfoCursor.Factory();
    static final ExtractedInfoIdGetter __ID_GETTER = new ExtractedInfoIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ExtractedInfo_$ExtractedInfoIdGetter.class */
    static final class ExtractedInfoIdGetter implements io.objectbox.b.c<ExtractedInfo> {
        ExtractedInfoIdGetter() {
        }

        public final long getId(ExtractedInfo extractedInfo) {
            Long l = extractedInfo.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        ExtractedInfo_ extractedInfo_ = new ExtractedInfo_();
        __INSTANCE = extractedInfo_;
        g<ExtractedInfo> gVar = new g<>(extractedInfo_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<ExtractedInfo> gVar2 = new g<>(extractedInfo_, 1, 2, Integer.TYPE, "recognizedPersonOrigin", false, "recognizedPersonOrigin", IMDataExtractionUtils.RecognizedPersonOriginConverter.class, IMDataExtractionUtils.RecognizedPersonOrigin.class);
        recognizedPersonOrigin = gVar2;
        g<ExtractedInfo> gVar3 = new g<>(extractedInfo_, 2, 3, Integer.TYPE, "comType", false, "comType", IMDataExtractionUtils.ComTypeConverter.class, IMDataExtractionUtils.ComType.class);
        comType = gVar3;
        g<ExtractedInfo> gVar4 = new g<>(extractedInfo_, 3, 4, String.class, "senderName");
        senderName = gVar4;
        g<ExtractedInfo> gVar5 = new g<>(extractedInfo_, 4, 5, String.class, "groupName");
        groupName = gVar5;
        g<ExtractedInfo> gVar6 = new g<>(extractedInfo_, 5, 6, String.class, "phoneAsRaw");
        phoneAsRaw = gVar6;
        g<ExtractedInfo> gVar7 = new g<>(extractedInfo_, 6, 7, Long.TYPE, "when");
        when = gVar7;
        g<ExtractedInfo> gVar8 = new g<>(extractedInfo_, 7, 8, Long.TYPE, "firstSeen");
        firstSeen = gVar8;
        g<ExtractedInfo> gVar9 = new g<>(extractedInfo_, 8, 9, Long.TYPE, "lastNotificationShowed");
        lastNotificationShowed = gVar9;
        g<ExtractedInfo> gVar10 = new g<>(extractedInfo_, 9, 10, Integer.TYPE, "seenCount");
        seenCount = gVar10;
        g<ExtractedInfo> gVar11 = new g<>(extractedInfo_, 10, 11, Boolean.TYPE, "disableNotification");
        disableNotification = gVar11;
        g<ExtractedInfo> gVar12 = new g<>(extractedInfo_, 11, 13, Boolean.TYPE, "starred");
        starred = gVar12;
        g<ExtractedInfo> gVar13 = new g<>(extractedInfo_, 12, 14, String.class, "displayName");
        displayName = gVar13;
        g<ExtractedInfo> gVar14 = new g<>(extractedInfo_, 13, 15, String.class, "nameT9Format");
        nameT9Format = gVar14;
        g<ExtractedInfo> gVar15 = new g<>(extractedInfo_, 14, 16, String.class, "nameT9FormatNoZero");
        nameT9FormatNoZero = gVar15;
        g<ExtractedInfo> gVar16 = new g<>(extractedInfo_, 15, 17, String.class, "unAccentName");
        unAccentName = gVar16;
        g<ExtractedInfo> gVar17 = new g<>(extractedInfo_, 16, 19, String.class, "t9Indexes", false, "t9Indexes", Converters.ListIntegersConverter.class, List.class);
        t9Indexes = gVar17;
        g<ExtractedInfo> gVar18 = new g<>(extractedInfo_, 17, 20, String.class, "namesMap", false, "namesMap", Converters.MapStringIntConverter.class, Map.class);
        namesMap = gVar18;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9, gVar10, gVar11, gVar12, gVar13, gVar14, gVar15, gVar16, gVar17, gVar18};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<ExtractedInfo>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<ExtractedInfo> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "ExtractedInfo";
    }

    @Override // io.objectbox.c
    public final Class<ExtractedInfo> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 13;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "ExtractedInfo";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<ExtractedInfo> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<ExtractedInfo> getIdProperty() {
        return __ID_PROPERTY;
    }
}
