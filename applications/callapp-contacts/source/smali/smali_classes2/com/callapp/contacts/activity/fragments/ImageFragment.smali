.class public Lcom/callapp/contacts/activity/fragments/ImageFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/callapp/contacts/activity/fragments/ImageFragment;
    .locals 3

    .line 31
    new-instance v0, Lcom/callapp/contacts/activity/fragments/ImageFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/fragments/ImageFragment;-><init>()V

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    .line 33
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "target_size"

    const/16 v2, 0x258

    .line 34
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/fragments/ImageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/ImageFragment;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "target_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/16 p1, 0x258

    :goto_1
    iput p1, p0, Lcom/callapp/contacts/activity/fragments/ImageFragment;->a:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0119

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a04c5

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 55
    iget-object p3, p0, Lcom/callapp/contacts/activity/fragments/ImageFragment;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 56
    new-instance p3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/ImageFragment;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/ImageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, p2, v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    new-instance p2, Lcom/callapp/contacts/activity/fragments/ImageFragment$1;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/fragments/ImageFragment$1;-><init>(Lcom/callapp/contacts/activity/fragments/ImageFragment;Landroid/view/View;)V

    .line 1496
    iput-object p2, p3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    const/4 p2, 0x1

    .line 2376
    iput-boolean p2, p3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 75
    invoke-virtual {p3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    :cond_0
    return-object p1
.end method
