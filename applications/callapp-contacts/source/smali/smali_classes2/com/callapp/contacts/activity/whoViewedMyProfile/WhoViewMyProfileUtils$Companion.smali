.class public final Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;",
        "",
        "()V",
        "getSectionMap",
        "",
        "",
        "Lcom/callapp/contacts/model/SectionData;",
        "dataList",
        "",
        "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/model/SectionData;

    const v4, 0x7f120723

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/model/SectionData;

    const v5, 0x7f12087a

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/model/SectionData;

    const v6, 0x7f120134

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    const/16 v7, -0x18

    .line 28
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    const-string v8, "itemCalendar"

    .line 31
    invoke-static {v6, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->c:J

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 32
    invoke-static {v4, v6}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 33
    iput v1, v7, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->h:I

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v5, v6}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 35
    iput v2, v7, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->h:I

    goto :goto_0

    .line 37
    :cond_2
    iput v3, v7, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->h:I

    goto :goto_0

    :cond_3
    return-object v0
.end method
