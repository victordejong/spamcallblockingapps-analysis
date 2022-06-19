.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 196
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 196
    check-cast p1, Ljava/lang/String;

    .line 1199
    new-instance p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;)V

    .line 1496
    iput-object p1, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 1199
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    .line 2432
    iput-object p1, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 1215
    invoke-virtual {p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->c()Lcom/bumptech/glide/e/c;

    return-void
.end method
