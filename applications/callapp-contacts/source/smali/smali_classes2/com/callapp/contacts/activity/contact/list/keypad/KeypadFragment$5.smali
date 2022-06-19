.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    move-result-object v0

    const v1, 0x7f0a0550

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060104

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 299
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 1376
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 300
    new-instance p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5$1;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;)V

    .line 1496
    iput-object p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 314
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2381
    iput-object p2, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->r:Ljava/lang/String;

    .line 317
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$moNC-7xrCkhtIRAQc1IRup6UPtA(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 293
    check-cast p1, Ljava/lang/String;

    .line 1296
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/-$$Lambda$KeypadFragment$5$moNC-7xrCkhtIRAQc1IRup6UPtA;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/keypad/-$$Lambda$KeypadFragment$5$moNC-7xrCkhtIRAQc1IRup6UPtA;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
