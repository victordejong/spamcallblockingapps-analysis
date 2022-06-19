.class public Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;
    .locals 4

    .line 129
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;-><init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    .line 131
    iget-object p0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    iput-object p0, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->displayName:Ljava/lang/String;

    .line 132
    iget-object p0, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object p0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)I

    move-result p0

    .line 133
    sget-object v1, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 135
    invoke-static {p0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 136
    sget-object v2, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setBadge(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setBadgeId(I)V

    .line 140
    iget-object p0, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object p0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)I

    move-result p0

    invoke-static {p0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setBadgeColor(I)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/model/SectionData;

    const v4, 0x7f120723

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/model/SectionData;

    const v5, 0x7f12087a

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/model/SectionData;

    const v6, 0x7f120134

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    .line 212
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    const/16 v7, -0x18

    .line 214
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 217
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 219
    invoke-virtual {v7}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 221
    invoke-static {v4, v6}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 222
    invoke-virtual {v7, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setSectionId(I)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {v5, v6}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 224
    invoke-virtual {v7, v2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setSectionId(I)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v7, v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setSectionId(I)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static a()V
    .locals 2

    .line 43
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 44
    :try_start_0
    sput-object v1, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->b:Ljava/util/List;

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    return-void
.end method

.method public static getContactPlusItemsData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->b:Ljava/util/List;

    if-nez v1, :cond_0

    .line 51
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->getContactPlusItemsDataInternal()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->b:Ljava/util/List;

    .line 54
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->b:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getContactPlusItemsDataInternal()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->getAllImNotificationData()Ljava/util/List;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-static {}, Lcom/callapp/contacts/loader/FastCacheDataManager;->getAllFastCacheDataWithName()Ljava/util/Map;

    move-result-object v2

    .line 107
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 1146
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    iget-object v6, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 1151
    :cond_1
    new-instance v4, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    invoke-direct {v4, v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;-><init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    .line 1153
    invoke-virtual {v4}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    iget-wide v6, v4, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->contactId:J

    invoke-static {v3, v6, v7}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v3

    .line 1155
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    if-eqz v3, :cond_3

    .line 1157
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->displayName:Ljava/lang/String;

    .line 1160
    :cond_3
    iget-object v3, v4, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->displayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 1165
    :cond_4
    iget-object v3, v4, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)I

    move-result v3

    .line 1166
    sget-object v5, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_5

    .line 1168
    invoke-static {v3}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1169
    sget-object v6, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :cond_5
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setBadge(Landroid/graphics/drawable/Drawable;)V

    .line 1172
    invoke-virtual {v4, v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setBadgeId(I)V

    .line 1173
    iget-object v3, v4, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)I

    move-result v3

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setBadgeColor(I)V

    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_0

    .line 112
    iget-object v3, v5, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->nameT9:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    invoke-static {v5}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 114
    iget-object v3, v5, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    if-eqz v3, :cond_6

    .line 115
    iget-object v3, v5, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 116
    iget-object v4, v5, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->normalNumbers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 117
    iget-object v4, v5, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->normalNumbers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_6
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v1
.end method

.method public static getFavoriteContactPlusItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->getContactPlusItemsData()Ljava/util/List;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 94
    iget-boolean v3, v2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->c:Z

    if-eqz v3, :cond_0

    .line 95
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getLast24ContactPlusItemsData()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->getContactPlusItemsData()Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, -0x1

    .line 64
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 65
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 66
    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 68
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 71
    invoke-virtual {v6, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 72
    invoke-virtual {v6, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x0

    .line 74
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 75
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 76
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v3, :cond_0

    const/4 v6, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    .line 78
    :goto_1
    new-instance v6, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v5, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->contactId:J

    iget-object v12, v5, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->displayName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getBadgeId()I

    move-result v13

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getBadgeColor()I

    move-result v14

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;-><init>(Ljava/lang/String;JZLjava/lang/String;II)V

    .line 79
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static isAllowedToShowAccessRequestPopup()Z
    .locals 8

    .line 179
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cD:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 184
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cD:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    return v3

    .line 189
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cC:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 190
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    return v1

    :cond_2
    return v3
.end method
