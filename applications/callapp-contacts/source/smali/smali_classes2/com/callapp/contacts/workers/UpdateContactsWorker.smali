.class public final Lcom/callapp/contacts/workers/UpdateContactsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/UpdateContactsWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "CALLAPP_PLUS_THRESHOLD",
        "",
        "CONTACT_THRESHOLD",
        "",
        "HALF_DAY",
        "",
        "ROUNDED_FORMAT",
        "",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "normalizedPhoneNumbers",
        "",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;

.field private static final f:Ljava/lang/String;


# instance fields
.field private final b:J

.field private final c:D

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;

    const-string v0, "job_update_contacts_tag"

    .line 119
    sput-object v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const-wide/16 p1, 0xc

    .line 26
    iput-wide p1, p0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->b:J

    const-wide p1, 0x3feccccccccccccdL    # 0.9

    .line 27
    iput-wide p1, p0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->c:D

    const/16 p1, 0xa

    .line 28
    iput p1, p0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->d:I

    const-string p1, "%.2f"

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "contactLookupDataBox.que\u2026.namesMap).build().find()"

    const-string v2, ", validDisplayName: "

    const-string v3, ", contactLookupDataTotal "

    const-string v4, "contactsTotal "

    const-string v5, "CallAppApplication.get()"

    const-string v6, "Migration process"

    .line 32
    const-class v7, Lcom/callapp/contacts/workers/UpdateContactsWorker;

    const-string v8, "UpdateContactsWorker doWork"

    invoke-static {v7, v8}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 34
    :try_start_0
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->hb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x1

    .line 35
    invoke-static {v7}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Z)V

    .line 1102
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v8

    const-class v9, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v8, v9}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v8

    .line 1103
    invoke-virtual {v8}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v9

    sget-object v10, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->phoneNumbers:Lio/objectbox/g;

    invoke-virtual {v9, v10}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v9

    sget-object v10, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->phoneNumbers:Lio/objectbox/g;

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v9

    invoke-virtual {v9}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v9

    const-string v10, "box.query().notNull(Cont\u2026mbers, \"\").build().find()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    .line 1145
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    .line 1106
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v12, Ljava/util/Set;

    const-string v13, "contactLookupData"

    .line 1107
    invoke-static {v11, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v13

    const-string v14, "contactLookupData.phoneNumbers"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v12, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1108
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1109
    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 1110
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1111
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1112
    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1115
    :cond_1
    check-cast v9, Ljava/util/Collection;

    invoke-virtual {v8, v9}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 37
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v8

    const-class v9, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v8, v9}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v8

    const-string v9, "CallAppApplication.get()\u2026ctLookupData::class.java)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactsWithPhoneNumber()Ljava/util/List;

    move-result-object v9

    const-string v10, "ContactUtils.getContactsWithPhoneNumber()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-static {v10}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 41
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 1280
    invoke-virtual {v8}, Lio/objectbox/a;->b()J

    move-result-wide v12

    .line 43
    invoke-virtual {v8}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v10

    sget-object v14, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->namesMap:Lio/objectbox/g;

    invoke-virtual {v10, v14}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v10

    invoke-virtual {v10}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Iterable;

    .line 139
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    check-cast v14, Ljava/util/Collection;

    .line 140
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v11, "it.namesMap"

    if-eqz v15, :cond_3

    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v7, v15

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    .line 43
    iget-object v7, v7, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    invoke-static {v7, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    const/4 v11, 0x1

    xor-int/2addr v7, v11

    if-eqz v7, :cond_2

    invoke-interface {v14, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    .line 141
    :cond_3
    check-cast v14, Ljava/util/List;

    .line 139
    check-cast v14, Ljava/util/Collection;

    .line 43
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float v10, v7

    int-to-float v14, v9

    div-float/2addr v10, v14

    move-object v15, v5

    move-object/from16 v23, v6

    float-to-double v5, v10

    move/from16 v24, v14

    move-object/from16 v25, v15

    .line 45
    :try_start_2
    iget-wide v14, v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->c:D

    cmpg-double v16, v5, v14

    if-gez v16, :cond_8

    .line 46
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v16

    const-string v17, "Migration process"

    const-string v18, "ContactLookupData bad ratio"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v7, 0x0

    new-array v10, v7, [Ljava/lang/String;

    move-wide/from16 v20, v5

    move-object/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->e()V

    .line 49
    invoke-virtual {v8}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->namesMap:Lio/objectbox/g;

    invoke-virtual {v5, v6}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 143
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    .line 49
    iget-object v7, v7, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    invoke-static {v7, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    if-eqz v7, :cond_4

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 142
    check-cast v1, Ljava/util/Collection;

    .line 49
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-float v5, v1

    div-float v10, v5, v24

    float-to-double v5, v10

    .line 52
    iget-wide v7, v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->c:D

    cmpg-double v11, v5, v7

    if-gez v11, :cond_6

    .line 53
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v16

    const-string v17, "Migration process"

    const-string v18, "ContactLookupData ratio not fixed after update"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    move-wide/from16 v20, v5

    move-object/from16 v22, v2

    invoke-virtual/range {v16 .. v22}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    goto :goto_3

    .line 55
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v16

    const-string v17, "Migration process"

    const-string v18, "ContactLookupData ratio fixed after update"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    move-wide/from16 v20, v5

    move-object/from16 v22, v2

    invoke-virtual/range {v16 .. v22}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object/from16 v25, v5

    move-object/from16 v23, v6

    const/high16 v10, 0x3f800000    # 1.0f

    .line 62
    :cond_8
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    const-string v2, "CallAppApplication.get()\u2026xtractedInfo::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->getInvalidExtractInfoContactsCount()J

    move-result-wide v2

    .line 64
    iget v4, v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->d:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_a

    .line 65
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const-string v5, "extractedInfo bad ratio"

    const-string v6, "count: "

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v6, v23

    :try_start_3
    invoke-virtual {v4, v6, v5, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->f()V

    .line 2280
    invoke-virtual {v1}, Lio/objectbox/a;->b()J

    move-result-wide v1

    .line 69
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->getInvalidExtractInfoContactsCount()J

    move-result-wide v3

    .line 71
    iget v5, v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    int-to-long v7, v5

    const-string v5, "total: "

    cmp-long v9, v3, v7

    if-lez v9, :cond_9

    .line 72
    :try_start_4
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v7

    const-string v8, "ExtractedInfo ratio not fixed after update"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v6, v8, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 74
    :cond_9
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v7

    const-string v8, "ExtractedInfo ratio fixed after update"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v6, v8, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-wide v2, v3

    goto :goto_5

    :cond_a
    move-object/from16 v6, v23

    .line 78
    :goto_5
    iget v1, v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->d:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    int-to-long v4, v1

    const-string v1, ", contactLookupDataRatio: "

    const-string v7, "extractedInfoInvalidCount: "

    cmp-long v8, v2, v4

    if-gtz v8, :cond_b

    float-to-double v4, v10

    :try_start_5
    iget-wide v8, v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->c:D

    cmpl-double v11, v4, v8

    if-lez v11, :cond_b

    .line 79
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->hb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const-string v5, "UpdateContactsWorker completed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v5, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 83
    :cond_b
    iget-object v4, v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->e:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String.format(this, *args)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->hd:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    if-nez v5, :cond_d

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->he:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-eqz v5, :cond_e

    .line 85
    :cond_d
    :goto_6
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->hd:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 86
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->he:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 87
    sget-object v4, Lcom/callapp/contacts/workers/UpdateContactsWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;

    iget-wide v8, v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->b:J

    invoke-virtual {v4, v8, v9}, Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;->a(J)V

    .line 90
    :cond_e
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const-string v5, "UpdateContactsWorker Rescheduling"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v5, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_0
    move-object/from16 v6, v23

    .line 94
    :catch_1
    sget-object v1, Lcom/callapp/contacts/workers/UpdateContactsWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;

    iget-wide v2, v0, Lcom/callapp/contacts/workers/UpdateContactsWorker;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;->a(J)V

    .line 95
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Error updating ContactLookupData & ExtractedInfo"

    invoke-virtual {v1, v6, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    :cond_f
    :goto_7
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v2, "Result.success()"

    .line 98
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
