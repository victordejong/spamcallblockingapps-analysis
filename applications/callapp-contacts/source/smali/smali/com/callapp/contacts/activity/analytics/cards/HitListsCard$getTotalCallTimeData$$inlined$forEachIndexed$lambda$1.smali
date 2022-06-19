.class public final Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->getTotalCallTimeData()Lkotlin/n;
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "com/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$1$1",
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

.field final synthetic f:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Ljava/util/ArrayList;

.field final synthetic i:Lkotlin/jvm/internal/ab$b;

.field final synthetic j:F


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/api/ContactLoader;Ljava/lang/String;IILcom/callapp/contacts/activity/analytics/cards/HitListsCard;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/jvm/internal/ab$b;F)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->b:Ljava/lang/String;

    iput p3, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->c:I

    iput p4, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->d:I

    iput-object p5, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->e:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    iput-object p6, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p7, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->g:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->h:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->i:Lkotlin/jvm/internal/ab$b;

    iput p10, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->j:F

    .line 368
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 22

    move-object/from16 v1, p0

    .line 370
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 372
    :try_start_0
    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 373
    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->g:Ljava/util/ArrayList;

    new-instance v15, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    const-string v3, "contactData"

    .line 374
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v6

    .line 375
    iget-object v7, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->b:Ljava/lang/String;

    .line 376
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v8

    .line 377
    iget v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 379
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f060089

    .line 382
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v13, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x442

    const/16 v19, 0x0

    move-object v3, v15

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    .line 373
    invoke-direct/range {v3 .. v18}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Float;FII[IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->h:Ljava/util/ArrayList;

    new-instance v15, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;

    .line 385
    iget-object v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->i:Lkotlin/jvm/internal/ab$b;

    iget v11, v3, Lkotlin/jvm/internal/ab$b;->a:F

    .line 386
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v5

    .line 388
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v8

    .line 389
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v6

    .line 390
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->e:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->d:I

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->getColorByIndex(I)[I

    move-result-object v13

    .line 391
    iget v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->c:I

    int-to-float v0, v0

    iget v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->j:F

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v9, 0x0

    const/4 v12, 0x2

    const/4 v14, 0x0

    const/16 v0, 0x210

    const/16 v16, 0x0

    move-object v3, v15

    move-object/from16 v21, v15

    move v15, v0

    .line 384
    invoke-direct/range {v3 .. v16}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;FI[IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
