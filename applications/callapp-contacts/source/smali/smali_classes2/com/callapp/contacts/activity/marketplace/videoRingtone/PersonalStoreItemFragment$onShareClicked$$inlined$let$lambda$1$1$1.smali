.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->run()V
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
        "com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$1$1$onContactSelected$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;

.field final synthetic b:Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;->b:Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 300
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    .line 298
    new-instance v7, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;

    .line 299
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getSelectedItemUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getShareVideoTempFile()Ljava/io/File;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    move-object v6, v1

    check-cast v6, Lcom/linkedin/android/litr/e;

    move-object v1, v7

    .line 298
    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Lcom/linkedin/android/litr/e;)V

    const v1, 0x3f2e147b    # 0.68f

    .line 1105
    iput v1, v7, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->b:F

    const v1, 0x3f47ae14    # 0.78f

    .line 1106
    iput v1, v7, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->c:F

    .line 300
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;->b:Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    .line 2100
    iput-object v1, v7, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->d:Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    .line 300
    invoke-virtual {v0, v7}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->setTransformationBuilder(Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;)V

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getTransformationBuilder()Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->a()V

    :cond_0
    return-void
.end method
