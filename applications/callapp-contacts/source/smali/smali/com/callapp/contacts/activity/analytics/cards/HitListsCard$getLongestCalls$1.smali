.class public final Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->getLongestCalls()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/api/ContactLoader;

.field final synthetic b:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

.field final synthetic c:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:J


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/api/ContactLoader;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/ArrayList;J)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->b:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->c:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p4, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->d:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->e:J

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 20

    move-object/from16 v1, p0

    .line 302
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->b:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 304
    :try_start_0
    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 305
    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->d:Ljava/util/ArrayList;

    new-instance v15, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    .line 306
    iget-object v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->b:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 307
    iget-wide v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->e:J

    long-to-float v12, v3

    const-string v3, "contactData"

    .line 308
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v8

    .line 311
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->b:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v7

    .line 312
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->b:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v13

    long-to-int v0, v13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v0, 0x7f060088

    .line 314
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc02

    const/16 v18, 0x0

    move-object v3, v15

    move-object/from16 v19, v15

    move-object v15, v0

    .line 305
    invoke-direct/range {v3 .. v18}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Float;FII[IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
