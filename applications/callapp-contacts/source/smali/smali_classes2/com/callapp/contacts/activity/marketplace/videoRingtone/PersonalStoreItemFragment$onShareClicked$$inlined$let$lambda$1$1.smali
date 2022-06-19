.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$1$1$onContactSelected$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    .line 282
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Personal Store Item"

    const-string v4, "ClickShareInDialog"

    invoke-virtual {v1, v3, v4, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f080593

    .line 287
    invoke-static {v1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 289
    new-instance v1, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;-><init>(Landroid/content/Context;)V

    .line 290
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v11, v2

    const v6, 0x7f080587

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3f3d70a4    # 0.74f

    const v2, 0x3f51eb85    # 0.82f

    .line 291
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a(IZFFLjava/lang/Float;)Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    move-result-object v12

    const v13, 0x7f080585

    const/4 v14, 0x1

    const v15, 0x3f2b851f    # 0.67f

    const v16, 0x3e19999a    # 0.15f

    const v2, 0x3e851eb8    # 0.26f

    .line 292
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v12 .. v17}, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a(IZFFLjava/lang/Float;)Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    move-result-object v12

    const v2, 0x3dcccccd    # 0.1f

    .line 293
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 1150
    iget-object v13, v12, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->b:Ljava/util/List;

    new-instance v14, Lcom/callapp/contacts/util/video/VideoOverlayData;

    iget-object v3, v12, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3e3851ec    # 0.18f

    const/4 v10, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v10}, Lcom/callapp/contacts/util/video/VideoOverlayData;-><init>(Landroid/content/Context;Ljava/lang/String;ZFFFLjava/lang/Float;Lcom/callapp/contacts/util/video/VideoOverlayData$1;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const v8, 0x3e8f5c29    # 0.28f

    const/high16 v2, 0x42040000    # 33.0f

    div-float v9, v11, v2

    const v2, 0x3d23d70a    # 0.04f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    move-object v5, v12

    invoke-virtual/range {v5 .. v10}, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a(Ljava/lang/String;ZFFLjava/lang/Float;)Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    move-result-object v13

    const v3, 0x7f1203c4

    .line 295
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const v16, 0x3ecccccd    # 0.4f

    const v17, 0x3e99999a    # 0.3f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v13 .. v18}, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a(Ljava/lang/String;ZFFLjava/lang/Float;)Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    .line 297
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;

    invoke-direct {v3, v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
