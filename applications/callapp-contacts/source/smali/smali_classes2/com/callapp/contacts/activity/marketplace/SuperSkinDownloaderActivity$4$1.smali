.class Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;->a(Lcom/callapp/contacts/widget/ProgressCardView;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/ProgressCardView;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;Lcom/callapp/contacts/widget/ProgressCardView;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1;->b:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1;->a:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/widget/ProgressCardView;Ljava/lang/String;)V
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/ProgressCardView;->setSuperSkinCardImage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dx6lVEdVsKjNrIflcKyyJo6CtBo(Lcom/callapp/contacts/widget/ProgressCardView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1;->a(Lcom/callapp/contacts/widget/ProgressCardView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 198
    check-cast p1, Ljava/lang/String;

    .line 1201
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1;->b:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;

    iget-object p2, p2, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4$1;->a:Lcom/callapp/contacts/widget/ProgressCardView;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$4$1$dx6lVEdVsKjNrIflcKyyJo6CtBo;

    invoke-direct {v1, v0, p1}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$4$1$dx6lVEdVsKjNrIflcKyyJo6CtBo;-><init>(Lcom/callapp/contacts/widget/ProgressCardView;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
