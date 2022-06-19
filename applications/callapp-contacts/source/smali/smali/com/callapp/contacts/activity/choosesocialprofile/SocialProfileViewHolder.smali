.class public Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# instance fields
.field final A:I

.field final B:I

.field final C:I

.field D:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private E:Landroid/view/View;

.field private final F:Lcom/callapp/contacts/model/contact/ContactData;

.field s:Lcom/callapp/contacts/widget/ProfilePictureView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/TextView;

.field v:Landroid/view/View;

.field w:Landroid/view/View;

.field x:Lcom/callapp/contacts/widget/CallAppRadioButton;

.field final y:I

.field final z:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 6

    .line 53
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    .line 55
    iput-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->F:Lcom/callapp/contacts/model/contact/ContactData;

    const p2, 0x7f060088

    .line 56
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->z:I

    .line 57
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->y:I

    .line 58
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->A:I

    .line 59
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->B:I

    .line 60
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060244

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->C:I

    .line 61
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070376

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    const v0, 0x7f0a06ed

    .line 64
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f0a0847

    .line 65
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    const v0, 0x7f0a084e

    .line 66
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->u:Landroid/widget/TextView;

    const v0, 0x7f0a08c6

    .line 68
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->E:Landroid/view/View;

    const v0, 0x7f0a084b

    .line 70
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->v:Landroid/view/View;

    const v0, 0x7f0a084c

    .line 71
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a084d

    .line 72
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0848

    .line 74
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->w:Landroid/view/View;

    const v2, 0x7f0a0849

    .line 75
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a084a

    .line 76
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0717

    .line 78
    invoke-virtual {p1, v4}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/widget/CallAppRadioButton;

    iput-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->x:Lcom/callapp/contacts/widget/CallAppRadioButton;

    .line 81
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v0, 0x7f120223

    .line 82
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v0, 0x7f1202ba

    .line 85
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f060026

    .line 88
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->setBackgroundColor(I)V

    return-void
.end method

.method static a(Lcom/callapp/contacts/model/contact/SocialMatchesData;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method static a(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method final a(ZZ)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->E:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->v:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->w:Landroid/view/View;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method setPhotoWithBadge(II)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Z)V

    .line 263
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 264
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    return-void
.end method

.method setTitleVisibleOnly(Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->u:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->E:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->v:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->w:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
