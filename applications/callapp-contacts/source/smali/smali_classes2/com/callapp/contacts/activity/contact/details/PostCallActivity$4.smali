.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 204
    check-cast p1, Ljava/lang/String;

    .line 1207
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1210
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$300(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const v0, 0x7f0a0685

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 1212
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4$1;-><init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity$4;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
