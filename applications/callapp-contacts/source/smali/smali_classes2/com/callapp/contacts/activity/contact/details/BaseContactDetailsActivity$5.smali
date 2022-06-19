.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getStoreItemAssetManager(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 308
    check-cast p1, Ljava/lang/String;

    .line 1311
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-boolean p2, p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalCover:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-boolean p2, p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalStoreItemTypeCover:Z

    if-nez p2, :cond_0

    .line 1312
    new-instance p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5$1;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;)V

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;)V

    sget p1, Lcom/callapp/contacts/util/glide/GlideUtils;->a:I

    sget v0, Lcom/callapp/contacts/util/glide/GlideUtils;->b:I

    .line 1317
    invoke-virtual {p2, p1, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1376
    iput-boolean p2, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 1317
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    :cond_0
    return-void
.end method
