.class public Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;
.super Lcom/callapp/contacts/activity/base/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;->a:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d010a

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p2, 0x7f0a02c1

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;->a:Landroid/widget/ImageView;

    .line 34
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;->setCoverImageUrl(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment$1;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment$1;-><init>(Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method

.method public setCoverImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;->b:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1376
    iput-boolean v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 62
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    :cond_0
    return-void
.end method
