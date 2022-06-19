.class Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;I)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$4;->c:Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;

    iput p3, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$4;->c:Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$4;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;->setCoverImageUrl(Ljava/lang/String;)V

    return-void
.end method
