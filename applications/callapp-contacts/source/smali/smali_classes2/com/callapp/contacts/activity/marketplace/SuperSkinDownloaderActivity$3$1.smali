.class Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3$1;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 175
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3$1;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3$1;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3$1;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;

    iget-object v3, v3, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;->c:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1376
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 175
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method
