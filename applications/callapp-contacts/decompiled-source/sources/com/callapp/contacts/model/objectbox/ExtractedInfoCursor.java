package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.objectbox.Converters;
import com.callapp.contacts.model.objectbox.ExtractedInfo_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ExtractedInfoCursor.class */
public final class ExtractedInfoCursor extends Cursor<ExtractedInfo> {
    private static final ExtractedInfo_.ExtractedInfoIdGetter ID_GETTER = ExtractedInfo_.__ID_GETTER;
    private static final int __ID_recognizedPersonOrigin = ExtractedInfo_.recognizedPersonOrigin.f36237c;
    private static final int __ID_comType = ExtractedInfo_.comType.f36237c;
    private static final int __ID_senderName = ExtractedInfo_.senderName.f36237c;
    private static final int __ID_groupName = ExtractedInfo_.groupName.f36237c;
    private static final int __ID_phoneAsRaw = ExtractedInfo_.phoneAsRaw.f36237c;
    private static final int __ID_when = ExtractedInfo_.when.f36237c;
    private static final int __ID_firstSeen = ExtractedInfo_.firstSeen.f36237c;
    private static final int __ID_lastNotificationShowed = ExtractedInfo_.lastNotificationShowed.f36237c;
    private static final int __ID_seenCount = ExtractedInfo_.seenCount.f36237c;
    private static final int __ID_disableNotification = ExtractedInfo_.disableNotification.f36237c;
    private static final int __ID_starred = ExtractedInfo_.starred.f36237c;
    private static final int __ID_displayName = ExtractedInfo_.displayName.f36237c;
    private static final int __ID_nameT9Format = ExtractedInfo_.nameT9Format.f36237c;
    private static final int __ID_nameT9FormatNoZero = ExtractedInfo_.nameT9FormatNoZero.f36237c;
    private static final int __ID_unAccentName = ExtractedInfo_.unAccentName.f36237c;
    private static final int __ID_t9Indexes = ExtractedInfo_.t9Indexes.f36237c;
    private static final int __ID_namesMap = ExtractedInfo_.namesMap.f36237c;
    private final IMDataExtractionUtils.RecognizedPersonOriginConverter recognizedPersonOriginConverter = new IMDataExtractionUtils.RecognizedPersonOriginConverter();
    private final IMDataExtractionUtils.ComTypeConverter comTypeConverter = new IMDataExtractionUtils.ComTypeConverter();
    private final Converters.ListIntegersConverter t9IndexesConverter = new Converters.ListIntegersConverter();
    private final Converters.MapStringIntConverter namesMapConverter = new Converters.MapStringIntConverter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ExtractedInfoCursor$Factory.class */
    static final class Factory implements b<ExtractedInfo> {
        @Override // io.objectbox.b.b
        public final Cursor<ExtractedInfo> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new ExtractedInfoCursor(transaction, j, boxStore);
        }
    }

    public ExtractedInfoCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, ExtractedInfo_.__INSTANCE, boxStore);
    }

    public final long getId(ExtractedInfo extractedInfo) {
        return ID_GETTER.getId(extractedInfo);
    }

    public final long put(ExtractedInfo extractedInfo) {
        String str = extractedInfo.senderName;
        int i = str != null ? __ID_senderName : 0;
        String str2 = extractedInfo.groupName;
        int i2 = str2 != null ? __ID_groupName : 0;
        String str3 = extractedInfo.phoneAsRaw;
        int i3 = str3 != null ? __ID_phoneAsRaw : 0;
        String str4 = extractedInfo.displayName;
        collect400000(this.cursor, 0L, 1, i, str, i2, str2, i3, str3, str4 != null ? __ID_displayName : 0, str4);
        String str5 = extractedInfo.nameT9Format;
        int i4 = str5 != null ? __ID_nameT9Format : 0;
        String str6 = extractedInfo.nameT9FormatNoZero;
        int i5 = str6 != null ? __ID_nameT9FormatNoZero : 0;
        String str7 = extractedInfo.unAccentName;
        int i6 = str7 != null ? __ID_unAccentName : 0;
        List<Integer> list = extractedInfo.t9Indexes;
        int i7 = list != null ? __ID_t9Indexes : 0;
        String str8 = null;
        collect400000(this.cursor, 0L, 0, i4, str5, i5, str6, i6, str7, i7, i7 != 0 ? this.t9IndexesConverter.convertToDatabaseValue(list) : null);
        Map<String, Integer> map = extractedInfo.namesMap;
        int i8 = map != null ? __ID_namesMap : 0;
        IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin = extractedInfo.recognizedPersonOrigin;
        int i9 = recognizedPersonOrigin != null ? __ID_recognizedPersonOrigin : 0;
        IMDataExtractionUtils.ComType comType = extractedInfo.comType;
        int i10 = comType != null ? __ID_comType : 0;
        long j = this.cursor;
        if (i8 != 0) {
            str8 = this.namesMapConverter.convertToDatabaseValue(map);
        }
        collect313311(j, 0L, 0, i8, str8, 0, null, 0, null, 0, null, __ID_when, extractedInfo.when, __ID_firstSeen, extractedInfo.firstSeen, __ID_lastNotificationShowed, extractedInfo.lastNotificationShowed, i9, i9 != 0 ? this.recognizedPersonOriginConverter.convertToDatabaseValue(recognizedPersonOrigin).intValue() : 0, i10, i10 != 0 ? this.comTypeConverter.convertToDatabaseValue(comType).intValue() : 0, __ID_seenCount, extractedInfo.seenCount, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        Long l = extractedInfo.id;
        long collect004000 = collect004000(this.cursor, l != null ? l.longValue() : 0L, 2, __ID_disableNotification, extractedInfo.disableNotification ? 1L : 0L, __ID_starred, extractedInfo.starred ? 1L : 0L, 0, 0L, 0, 0L);
        extractedInfo.id = Long.valueOf(collect004000);
        return collect004000;
    }
}
