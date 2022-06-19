.class public Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a025f

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0a06ed

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f0a025d

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->c:Landroid/view/View;

    const v0, 0x7f0a02e9

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;Z)V
    .locals 5

    if-eqz p2, :cond_0

    .line 63
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->c:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->c:Landroid/view/View;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->d:Landroid/view/View;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->a:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    return-void

    .line 102
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f120349

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getDefaultPhotoImage()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getDefaultPhotoImageTintColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    .line 1371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 2307
    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 104
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 2371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    const/16 v1, 0x12c

    .line 2491
    iput v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->k:I

    .line 104
    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 105
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getSocialId()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeResId(I)I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 106
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getBgColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    return-void
.end method
