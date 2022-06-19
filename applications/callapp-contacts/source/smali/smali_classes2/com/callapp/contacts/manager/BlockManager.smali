.class public Lcom/callapp/contacts/manager/BlockManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/BlockManager$BlockMethod;
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    const-string v1, "send_to_voicemail"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/column/BooleanColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/manager/BlockManager;->a:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/BlockManager;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2

    .line 415
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/SpamData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/SpamData_;->phoneAsRaw:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v5, 0x1f4

    const/4 v6, 0x1

    if-nez v0, :cond_3

    .line 77
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->bK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 78
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 79
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v7, v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 83
    :try_start_0
    invoke-static {p0, v5}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    :goto_3
    move v12, v7

    move-object v7, v0

    move v0, v12

    goto :goto_4

    :cond_3
    move-object v7, v2

    :goto_4
    if-nez v0, :cond_7

    .line 95
    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->bL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v7, :cond_5

    .line 98
    :try_start_1
    invoke-static {p0, v5}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v8

    cmp-long v0, v8, v3

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v0

    goto :goto_6

    :catch_1
    nop

    :cond_5
    :goto_6
    if-eqz v7, :cond_6

    .line 104
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    if-nez v0, :cond_8

    .line 110
    invoke-static {p0}, Lcom/callapp/contacts/manager/BlockManager;->c(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v6

    :cond_8
    if-nez v0, :cond_c

    .line 116
    invoke-static {}, Lcom/callapp/contacts/manager/BlockManager;->getAllBlockedRules()Ljava/util/List;

    move-result-object v8

    .line 117
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/BlockedRule;

    .line 118
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/objectbox/BlockedRule;->isBlocked(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v7, :cond_b

    .line 122
    :try_start_2
    invoke-static {p0, v5}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v9

    cmp-long v11, v9, v3

    if-nez v11, :cond_a

    const/4 v9, 0x1

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :goto_9
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_2
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    nop

    :goto_a
    if-eqz v7, :cond_b

    .line 126
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_b

    const/4 v0, 0x0

    :cond_b
    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    if-nez v0, :cond_d

    .line 139
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 140
    invoke-static {p0}, Lcom/callapp/contacts/manager/BlockManager;->d(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    .line 144
    :cond_d
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 352
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    return-void
.end method

.method public static a(JLjava/lang/String;Lcom/callapp/framework/phone/Phone;)V
    .locals 8

    .line 1156
    new-instance v0, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v1, Lcom/callapp/contacts/manager/BlockManager;->a:Lcom/callapp/contacts/framework/dao/column/BooleanColumn;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    .line 1157
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v0, v2, v4, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/manager/BlockManager$1;

    invoke-direct {v2}, Lcom/callapp/contacts/manager/BlockManager$1;-><init>()V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, p0, v2

    if-lez v7, :cond_0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    invoke-static {p3}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    .line 2148
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentUpdate;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v2, v4, p0}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->b(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/contacts/framework/dao/ContentUpdate;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2149
    invoke-virtual {p0, v1, p1}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/lang/Boolean;)Lcom/callapp/contacts/framework/dao/ContentUpdate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/ContentUpdate;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 2326
    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2327
    invoke-static {p3}, Lcom/callapp/contacts/manager/BlockManager;->e(Lcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    move-result-wide p0

    cmp-long v0, p0, v2

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 177
    :goto_1
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    :goto_2
    if-eqz p0, :cond_5

    const p0, 0x7f120041

    new-array p1, v5, [Ljava/lang/Object;

    .line 179
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v6

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const p0, 0x7f120040

    new-array p1, v5, [Ljava/lang/Object;

    .line 181
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v6

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 183
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;Ljava/lang/String;)V
    .locals 2

    .line 242
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BlockedRule;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/callapp/contacts/model/objectbox/BlockedRule;

    invoke-direct {v1, p1, p0}, Lcom/callapp/contacts/model/objectbox/BlockedRule;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;)V

    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;I)V
    .locals 4

    .line 356
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CommonSpammer_;->commonSpammerPhone:Lio/objectbox/g;

    .line 359
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;

    if-nez v1, :cond_0

    .line 362
    new-instance v1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;

    invoke-direct {v1}, Lcom/callapp/contacts/model/objectbox/CommonSpammer;-><init>()V

    .line 364
    :cond_0
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->setCommonSpammerName(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->setCommonSpammerScore(I)V

    .line 366
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/model/objectbox/CommonSpammer;->setCommonSpammerPhone(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 188
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    invoke-static {p1, p0}, Lcom/callapp/contacts/manager/BlockManager;->a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const p0, 0x7f12003f

    new-array v1, v1, [Ljava/lang/Object;

    .line 190
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    invoke-static {p0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const p0, 0x7f12003e

    new-array v1, v1, [Ljava/lang/Object;

    .line 192
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    invoke-static {p0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 194
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)Z
    .locals 13

    const/4 v0, 0x1

    .line 198
    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/manager/BlockManager;->a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3229
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 3230
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3231
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v4, 0x7f0800a9

    new-array v2, v2, [C

    invoke-static {p1, v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0601db

    const p1, 0x7f120106

    .line 3232
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const p1, 0x7f1204ea

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/callapp/contacts/manager/BlockManager$4;

    invoke-direct {v9}, Lcom/callapp/contacts/manager/BlockManager$4;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 3231
    invoke-virtual {p2, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return v0

    .line 201
    :cond_1
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    .line 202
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const p2, 0x7f12003e

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return v2
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 4

    .line 385
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/SpamData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 387
    sget-object v1, Lcom/callapp/contacts/manager/BlockManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p0

    if-nez p0, :cond_0

    .line 390
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v3, Lcom/callapp/contacts/model/objectbox/SpamData_;->phoneAsRaw:Lio/objectbox/g;

    invoke-virtual {p0, v3, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/SpamData;

    if-nez p0, :cond_1

    .line 392
    new-instance p0, Lcom/callapp/contacts/model/objectbox/SpamData;

    invoke-direct {p0}, Lcom/callapp/contacts/model/objectbox/SpamData;-><init>()V

    .line 393
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/model/objectbox/SpamData;->setPhoneAsRaw(Ljava/lang/String;)V

    .line 394
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/callapp/contacts/model/objectbox/SpamData;->setWhen(J)V

    .line 395
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 396
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->ek:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x1

    .line 4039
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 397
    new-instance p0, Lcom/callapp/contacts/manager/BlockManager$5;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/BlockManager$5;-><init>()V

    .line 402
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/BlockManager$5;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 403
    monitor-exit v1

    return v0

    .line 406
    :cond_0
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/SpamData_;->phoneAsRaw:Lio/objectbox/g;

    invoke-virtual {p0, v0, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    move-result-wide v2

    .line 407
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->ek:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    long-to-int v0, v2

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    :cond_1
    const/4 p0, 0x0

    .line 410
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 411
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {p0}, Lcom/callapp/contacts/manager/BlockManager;->e(Lcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    if-eqz p0, :cond_0

    .line 291
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 292
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->setFullName(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Z)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 279
    new-instance v9, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    move-object v2, v9

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJ)V

    invoke-virtual {v1, v9}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-lez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method static synthetic b()J
    .locals 6

    .line 4427
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/SpamData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 5280
    invoke-virtual {v0}, Lio/objectbox/a;->b()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4432
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/SpamData_;->when:Lio/objectbox/g;

    const/4 v5, 0x1

    .line 5283
    invoke-virtual {v1, v2, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 4432
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lio/objectbox/query/Query;->a(J)Ljava/util/List;

    move-result-object v1

    .line 4433
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/SpamData;

    .line 4435
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/SpamData_;->when:Lio/objectbox/g;

    iget-wide v3, v1, Lcom/callapp/contacts/model/objectbox/SpamData;->when:J

    invoke-virtual {v0, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->f()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V
    .locals 10

    .line 209
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogSimpleMessageWithIcon;

    const v1, 0x7f12010a

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const v3, 0x7f120107

    invoke-static {v3, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120105

    .line 210
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1201a9

    .line 211
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/manager/BlockManager$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/callapp/contacts/manager/BlockManager$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    new-instance v7, Lcom/callapp/contacts/manager/BlockManager$3;

    invoke-direct {v7}, Lcom/callapp/contacts/manager/BlockManager$3;-><init>()V

    const v8, 0x7f08030b

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessageWithIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;I)V

    .line 209
    invoke-virtual {v0, p0, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static b(Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;Ljava/lang/String;)V
    .locals 3

    .line 248
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BlockedRule;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->rawNumber:Lio/objectbox/g;

    invoke-virtual {v0, v1, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->blockRuleType:Lio/objectbox/g;

    iget p0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->type:I

    int-to-long v1, p0

    .line 251
    invoke-virtual {p1, v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

.method public static b(Lcom/callapp/framework/phone/Phone;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {p0}, Lcom/callapp/contacts/manager/BlockManager;->e(Lcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->isBlockCall()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-static {p0}, Lcom/callapp/contacts/manager/BlockManager;->e(Lcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    if-eqz p0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->getFullName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lcom/callapp/framework/phone/Phone;)Z
    .locals 2

    .line 372
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CommonSpammer;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CommonSpammer_;->commonSpammerPhone:Lio/objectbox/g;

    .line 376
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 377
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/CommonSpammer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Lcom/callapp/framework/phone/Phone;)Lio/objectbox/query/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            ")",
            "Lio/objectbox/query/Query<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation

    .line 346
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->phoneNum:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    return-object p0
.end method

.method public static getAllBlockedRules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BlockedRule;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllSpamData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/SpamData;",
            ">;"
        }
    .end annotation

    .line 421
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/SpamData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/SpamData_;->when:Lio/objectbox/g;

    const/4 v2, 0x1

    .line 4283
    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBlockedNumbersForIncoming()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->blockCall:Lio/objectbox/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
