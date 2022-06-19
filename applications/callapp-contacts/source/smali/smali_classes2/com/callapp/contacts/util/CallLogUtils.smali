.class public Lcom/callapp/contacts/util/CallLogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PRIVATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "P"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RES"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UNAVAILABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UNA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "U"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PRIVATENUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PRIVATE NUMBER"

    aput-object v2, v0, v1

    const v1, 0x7f120198

    .line 66
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/callapp/contacts/util/CallLogUtils;->a:[Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/CallLogUtils;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IJ)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/16 p0, 0x1770

    return p0

    :cond_0
    return p1

    :cond_1
    const/16 p0, 0x28

    :cond_2
    return p0
.end method

.method public static a(J)I
    .locals 2

    .line 296
    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/CallLogUtils;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x5265c00

    add-long/2addr p0, v0

    .line 298
    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)I
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getTotalInteractionCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getTotalInteractionCount()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 202
    :cond_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 205
    :cond_1
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/framework/dao/RowContext;)I
    .locals 3

    const-string v0, "type"

    .line 7501
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v0

    const-string v1, "duration"

    .line 7502
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v1

    .line 7503
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/CallLogUtils;->a(IJ)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/callapp/contacts/model/call/CallData;)I
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->isMissedCall()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->isCallAnswered()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f080338

    return p0

    :cond_1
    :goto_0
    const p0, 0x7f08033e

    return p0

    .line 691
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->isMissedCall()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/callapp/contacts/model/call/CallData;->isCallAnswered()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const p0, 0x7f080342

    return p0

    :cond_4
    :goto_1
    const p0, 0x7f08033f

    return p0
.end method

.method private static a(Landroid/database/Cursor;Lcom/callapp/framework/phone/Phone;Ljava/util/Date;I)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;
    .locals 15

    move-object v0, p0

    .line 423
    invoke-static {p0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object v1

    .line 424
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/database/Cursor;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v11

    .line 425
    new-instance v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    const-string v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "name"

    .line 426
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v3, "numbertype"

    .line 427
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v3, "numberlabel"

    .line 428
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v3, v2

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    move/from16 v12, p3

    invoke-direct/range {v3 .. v14}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;-><init>(ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;IILjava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;IJ)V

    return-object v2
.end method

.method public static a(Z)Lcom/callapp/contacts/util/CallLogEntry;
    .locals 6

    .line 644
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "type"

    const-string v2, "number"

    const-string v3, "date"

    const-string v4, "duration"

    const-string v5, "_id"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a([Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const/4 v2, 0x0

    .line 646
    invoke-virtual {v0, v3, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    .line 647
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;)V

    if-eqz p0, :cond_0

    const-string p0, "="

    const-string v2, "2"

    .line 650
    invoke-virtual {v0, v1, p0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 652
    :cond_0
    new-instance p0, Lcom/callapp/contacts/util/CallLogUtils$5;

    invoke-direct {p0}, Lcom/callapp/contacts/util/CallLogUtils$5;-><init>()V

    const/4 v1, 0x0

    .line 6185
    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 652
    check-cast p0, Lcom/callapp/contacts/util/CallLogEntry;

    return-object p0
.end method

.method public static a(Ljava/util/Date;I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 797
    invoke-static {p0}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 799
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation

    .line 725
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLog()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 727
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 728
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 730
    new-instance v3, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v5, 0x1a

    new-array v5, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->googlePlaces:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->deviceData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->callHistoryData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v8, 0x5

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v8, 0x6

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v8, 0x7

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->id:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x8

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x9

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0xa

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0xb

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0xc

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->facebookSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0xd

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->foursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0xe

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->foursquareData:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0xf

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->foursquareSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x10

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->instagramId:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x11

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->instagramData:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x12

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->instagramSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x13

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x14

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x15

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->twitterSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x16

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->pinterestId:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x17

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->pinterestData:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x18

    aput-object v6, v5, v8

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->pinterestSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v8, 0x19

    aput-object v6, v5, v8

    .line 731
    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    .line 739
    invoke-virtual {v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndDataLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-direct {v4, v7}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    .line 740
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/CompoundSyncLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/CompoundSyncLoader;-><init>()V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/device/CallHistoryLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/device/CallHistoryLoader;-><init>()V

    .line 741
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    .line 742
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    .line 743
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v3

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-lez p0, :cond_2

    .line 746
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 748
    invoke-virtual {v4}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v5

    .line 749
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 750
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-virtual {v4}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 753
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 755
    invoke-static {v4}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 757
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 758
    invoke-static {v4}, Lcom/callapp/contacts/loader/FastCacheDataManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 761
    :cond_1
    invoke-static {v4}, Lcom/callapp/contacts/loader/FastCacheDataManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    add-int/lit8 p0, p0, -0x1

    .line 764
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static a(Lcom/callapp/contacts/framework/dao/ContentQuery;Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/ContentQuery;",
            "Lcom/callapp/contacts/framework/dao/RowCallback<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 455
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 457
    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no such column"

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 458
    :cond_0
    throw p0
.end method

.method private static a(Lcom/callapp/contacts/framework/dao/ContentQuery;Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/util/Collection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/framework/dao/ContentQuery;",
            "Lcom/callapp/contacts/framework/dao/RowCallback<",
            "TT;>;",
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 273
    invoke-static {p0, p2}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;Ljava/util/Collection;)V

    .line 274
    invoke-static {p0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Lcom/callapp/contacts/framework/dao/ContentQuery;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 275
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/SingleCallLogData;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 238
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getBaseCallLogRowCallback()Lcom/callapp/contacts/framework/dao/RowCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 239
    invoke-static {v1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    .line 240
    invoke-static {v1, v0, p0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Date;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/CallLogEntry;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "number"

    .line 92
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "type"

    .line 93
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "date"

    .line 94
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v2, "duration"

    .line 95
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v2, "_id"

    .line 96
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v2, ">"

    invoke-virtual {v0, v1, v2, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 99
    sget-object p0, Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek;->INSTANCE:Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/Stack;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Stack<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    if-eqz p0, :cond_c

    .line 280
    invoke-interface {p0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 285
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "date"

    .line 286
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 287
    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CallLogUtils;->a(J)I

    move-result v3

    .line 1352
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    const-string v5, "number"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    .line 1353
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1354
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 1371
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->isCallTypesFull()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_7

    .line 1394
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 1395
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-wide/32 v10, 0xa4cb80

    if-eqz v3, :cond_3

    if-eq v3, v8, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    goto :goto_2

    .line 1414
    :cond_1
    iget-object v6, v5, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v9, v10}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    const-wide/32 v11, 0x1499700

    cmp-long v6, v9, v11

    if-gtz v6, :cond_5

    goto :goto_1

    .line 1409
    :cond_2
    iget-object v6, v5, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v9, v12}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    cmp-long v6, v12, v10

    if-gtz v6, :cond_5

    :goto_1
    const/4 v6, 0x1

    goto :goto_3

    .line 1398
    :cond_3
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v9, v6, v12}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    cmp-long v6, v12, v10

    if-gtz v6, :cond_4

    .line 1399
    iget-object v6, v5, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v9, v10}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    const-wide/32 v11, 0xdbba0

    cmp-long v6, v9, v11

    if-gtz v6, :cond_5

    goto :goto_1

    .line 1403
    :cond_4
    iget-object v6, v5, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v9, v10}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    const-wide/32 v11, 0x36ee80

    cmp-long v6, v9, v11

    if-gtz v6, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_7

    .line 1372
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1374
    invoke-static {p0, v4, v6, v3}, Lcom/callapp/contacts/util/CallLogUtils;->a(Landroid/database/Cursor;Lcom/callapp/framework/phone/Phone;Ljava/util/Date;I)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object v6

    .line 2383
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v9

    invoke-virtual {v9}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 2385
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v9

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v6

    if-eq v9, v6, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_7

    const/4 v7, 0x1

    :cond_7
    if-eqz v7, :cond_8

    .line 1376
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    :cond_8
    if-eqz v7, :cond_9

    .line 1357
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 1358
    invoke-static {p0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object v4

    const-string v5, "_id"

    .line 1359
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->a(JIJLjava/util/Date;)Z

    .line 1360
    iget-object v4, v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    invoke-virtual {v4, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1361
    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1363
    :cond_9
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v4, v5, v3}, Lcom/callapp/contacts/util/CallLogUtils;->a(Landroid/database/Cursor;Lcom/callapp/framework/phone/Phone;Ljava/util/Date;I)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1366
    :cond_a
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v4, v5, v3}, Lcom/callapp/contacts/util/CallLogUtils;->a(Landroid/database/Cursor;Lcom/callapp/framework/phone/Phone;Ljava/util/Date;I)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToPrevious()Z

    goto/16 :goto_0

    :cond_b
    return-object v0

    .line 281
    :cond_c
    :goto_6
    const-class p0, Lcom/callapp/contacts/util/CallLogUtils;

    const-string v1, "Cursor is null or empty (getCallLogInternal)"

    invoke-static {p0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/util/Stack;)Ljava/util/Stack;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
            ">;)",
            "Ljava/util/Stack<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 171
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 173
    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 177
    iget-object v4, v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 179
    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, -0x1

    .line 180
    invoke-virtual {v3, v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setSectionId(I)V

    .line 181
    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_2
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getAggregateSize()I

    move-result v3

    .line 185
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 186
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 194
    iget-object v4, v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setTotalInteractionCount(I)V

    goto :goto_1

    .line 196
    :cond_5
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result p0

    sget-object v2, Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD-9o_WoI;->INSTANCE:Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD-9o_WoI;

    invoke-direct {v1, p0, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 210
    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 211
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_6
    new-instance p0, Ljava/util/Stack;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 214
    :goto_3
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 217
    :cond_7
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setSectionId(I)V

    :cond_8
    return-object p0
.end method

.method public static a()V
    .locals 3

    .line 163
    sget-object v0, Lcom/callapp/contacts/util/CallLogUtils;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 164
    :try_start_0
    sput-object v1, Lcom/callapp/contacts/util/CallLogUtils;->c:Ljava/util/Stack;

    .line 165
    const-class v1, Lcom/callapp/contacts/util/CallLogUtils;

    const-string v2, "resetCallLogList"

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Lcom/callapp/contacts/framework/dao/ContentQuery;)V
    .locals 2

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->getSimIdColumnName()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    .line 130
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "subscription_id"

    .line 131
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    const-string v0, "subscription_component_name"

    .line 132
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    :cond_1
    return-void
.end method

.method private static a(Lcom/callapp/contacts/framework/dao/ContentQuery;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/framework/dao/ContentQuery;",
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)V"
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 245
    new-array v1, v0, [Ljava/lang/String;

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/framework/phone/Phone;

    .line 249
    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->getNationalNumber()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v5

    .line 253
    :cond_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "number LIKE ? "

    .line 254
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_1

    const-string v4, " OR "

    .line 256
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1142
    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 531
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->d(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentDelete;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/Constants;->CALLLOG_ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    const/4 v2, 0x1

    .line 5021
    invoke-virtual {v0, v2, v1, p0}, Lcom/callapp/contacts/framework/dao/ContentDelete;->a(ZLcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)V

    .line 531
    invoke-virtual {v0}, Lcom/callapp/contacts/framework/dao/ContentDelete;->b()Ljava/lang/Object;

    .line 532
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->a()V

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 6786
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 6788
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/callapp/contacts/util/CallLogUtils;->getCallHistoryIcon(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 776
    :cond_1
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->setVisibility(I)V

    .line 777
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->setIconsToEvents([I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 566
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 569
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/String;

    .line 573
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object p0, Lcom/callapp/contacts/model/Constants;->DISPLAY_NAME_COLUMN:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    new-instance v1, Lcom/callapp/contacts/util/CallLogUtils$3;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/CallLogUtils$3;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z

    return-object v0
.end method

.method private static b(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    .line 432
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "duration"

    .line 433
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 434
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/CallLogUtils;->a(IJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static b(Lcom/callapp/contacts/framework/dao/ContentQuery;)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 3

    .line 467
    invoke-static {}, Lcom/callapp/contacts/util/DeviceDetector;->isSamsung()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ag:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "messageid"

    const-string v2, "="

    .line 468
    invoke-virtual {p0, v1, v2, v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    :cond_0
    return-object p0
.end method

.method private static b(Z)Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 3

    .line 508
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "number"

    .line 509
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "numbertype"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "numberlabel"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "type"

    .line 510
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const/4 v2, 0x0

    .line 511
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    if-eqz p0, :cond_0

    const/16 p0, 0x1f4

    .line 3175
    iput p0, v0, Lcom/callapp/contacts/framework/dao/ContentQuery;->a:I

    .line 515
    :cond_0
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;)V

    return-object v0
.end method

.method private static synthetic b(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/contacts/util/CallLogEntry;
    .locals 9

    .line 100
    new-instance v8, Lcom/callapp/contacts/util/CallLogEntry;

    const-string v0, "type"

    .line 101
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->d(Ljava/lang/String;)I

    move-result v1

    const-string v0, "number"

    .line 102
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "date"

    .line 103
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    const-string v0, "duration"

    .line 104
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "_id"

    .line 105
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->c(Ljava/lang/String;)J

    move-result-wide v6

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/util/CallLogEntry;-><init>(ILjava/lang/String;Ljava/util/Date;JJ)V

    return-object v8
.end method

.method public static b(Ljava/util/Date;I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 808
    invoke-static {p0}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const p0, 0x7f12087a

    .line 810
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 812
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/CallHistoryData;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 267
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLogHistoryRowCallback()Lcom/callapp/contacts/framework/dao/RowCallback;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLogHistoryBaseQuery()Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    .line 269
    invoke-static {v1, v0, p0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 1

    .line 536
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->d(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentDelete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/dao/ContentDelete;->b()Ljava/lang/Object;

    .line 537
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->a()V

    const/4 v0, 0x0

    .line 538
    invoke-static {v0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Z)V

    .line 539
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->c()V

    return-void
.end method

.method private static b(J)Z
    .locals 3

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 7

    .line 666
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6671
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 6673
    sget-object v0, Lcom/callapp/contacts/util/CallLogUtils;->a:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    .line 6674
    invoke-static {p0, v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    :goto_2
    return v1
.end method

.method public static c()V
    .locals 6

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    sget-object v1, Lcom/callapp/contacts/util/CallLogUtils;->a:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v3, v2, 0x3

    .line 545
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 546
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, ""

    .line 547
    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    const-string v5, "IS NULL"

    .line 548
    aput-object v5, v3, v1

    add-int/lit8 v1, v2, 0x2

    const-string v5, "-%"

    .line 549
    aput-object v5, v3, v1

    :goto_0
    if-ge v4, v2, :cond_0

    const-string v1, "number = ? COLLATE NOCASE OR "

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "number = ? OR "

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "number LIKE ?"

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static d()Z
    .locals 4

    .line 593
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "type"

    .line 594
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    .line 595
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;)V

    .line 597
    new-instance v1, Lcom/callapp/contacts/util/CallLogUtils$4;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/CallLogUtils$4;-><init>(Z)V

    const/4 v3, 0x0

    .line 5185
    invoke-virtual {v0, v1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 597
    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return v2

    .line 639
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static getBaseCallLogRowCallback()Lcom/callapp/contacts/framework/dao/RowCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/framework/dao/RowCallback<",
            "Lcom/callapp/contacts/activity/calllog/SingleCallLogData;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Lcom/callapp/contacts/util/CallLogUtils$1;

    invoke-direct {v0}, Lcom/callapp/contacts/util/CallLogUtils$1;-><init>()V

    return-object v0
.end method

.method public static getCallHistoryIcon(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1770

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x7f08033f

    goto :goto_0

    :cond_1
    const p0, 0x7f08033e

    goto :goto_0

    :cond_2
    const p0, 0x7f080342

    goto :goto_0

    :cond_3
    const p0, 0x7f080338

    :goto_0
    return p0
.end method

.method public static getCallLog()Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
            ">;"
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/callapp/contacts/util/CallLogUtils;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/util/CallLogUtils;->c:Ljava/util/Stack;

    if-nez v1, :cond_0

    .line 226
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLogInternal()Ljava/util/Stack;

    move-result-object v1

    .line 227
    sput-object v1, Lcom/callapp/contacts/util/CallLogUtils;->c:Ljava/util/Stack;

    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->createCacheKeysAsync(Ljava/util/Collection;)V

    .line 230
    :cond_0
    sget-object v1, Lcom/callapp/contacts/util/CallLogUtils;->c:Ljava/util/Stack;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getCallLogHistoryBaseQuery()Lcom/callapp/contacts/framework/dao/ContentQuery;
    .locals 3

    .line 522
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v2, "type"

    .line 523
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const/4 v2, 0x0

    .line 524
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    const/4 v1, 0x5

    .line 4175
    iput v1, v0, Lcom/callapp/contacts/framework/dao/ContentQuery;->a:I

    .line 525
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;)V

    return-object v0
.end method

.method private static getCallLogHistoryRowCallback()Lcom/callapp/contacts/framework/dao/RowCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/framework/dao/RowCallback<",
            "Lcom/callapp/contacts/model/contact/CallHistoryData;",
            ">;"
        }
    .end annotation

    .line 488
    new-instance v0, Lcom/callapp/contacts/util/CallLogUtils$2;

    invoke-direct {v0}, Lcom/callapp/contacts/util/CallLogUtils$2;-><init>()V

    return-object v0
.end method

.method private static getCallLogInternal()Ljava/util/Stack;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
            ">;"
        }
    .end annotation

    .line 311
    const-class v0, Lcom/callapp/contacts/util/CallLogUtils;

    const/4 v1, 0x1

    .line 313
    invoke-static {v1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    .line 314
    invoke-static {v2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Lcom/callapp/contacts/framework/dao/ContentQuery;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    const/4 v3, 0x0

    .line 316
    :try_start_0
    invoke-virtual {v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :try_start_1
    invoke-static {v2}, Lcom/callapp/contacts/util/CallLogUtils;->a(Landroid/database/Cursor;)Ljava/util/Stack;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 341
    :goto_0
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    goto/16 :goto_7

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v1

    move-object v2, v3

    .line 339
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v4

    move-object v2, v3

    .line 319
    :goto_2
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 321
    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid token LIMIT"

    invoke-static {v5, v6}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    .line 322
    invoke-static {v1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    goto :goto_3

    .line 323
    :cond_0
    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no such column"

    invoke-static {v5, v6}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 324
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->ag:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 325
    invoke-static {v1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :cond_1
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_2

    .line 330
    :try_start_3
    invoke-virtual {v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 331
    :try_start_4
    invoke-static {v1}, Lcom/callapp/contacts/util/CallLogUtils;->a(Landroid/database/Cursor;)Ljava/util/Stack;

    move-result-object v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_8

    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 333
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v3

    :goto_5
    move-object v3, v1

    goto :goto_6

    :cond_2
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .line 337
    :goto_6
    :try_start_6
    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 341
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    move-object v3, v2

    :goto_7
    if-nez v3, :cond_3

    .line 345
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    :cond_3
    return-object v3

    :catchall_2
    move-exception v0

    move-object v3, v2

    .line 341
    :goto_8
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 342
    throw v0
.end method

.method public static synthetic lambda$RQ7aAfwQ7ixdupwYTjjaIvFRLek(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/contacts/util/CallLogEntry;
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/contacts/util/CallLogEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$_cMpZ9whXzfbzAtLP2tD-9o_WoI(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/CallLogUtils;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)I

    move-result p0

    return p0
.end method
