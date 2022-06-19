.class public Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$ContactListAdapterDataLoadTask;
    }
.end annotation


# instance fields
.field final A:I

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Lcom/callapp/contacts/widget/RatingView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/ImageView;

.field private H:I

.field u:Lcom/callapp/contacts/activity/base/CallAppRow;

.field v:Lcom/callapp/contacts/widget/ProfilePictureView;

.field w:Landroid/widget/TextView;

.field x:Landroid/widget/FrameLayout;

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 4

    .line 57
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    .line 58
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->u:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v0, 0x7f0a06ed

    .line 59
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->v:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setClickable(Z)V

    .line 61
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    const v2, 0x7f06001b

    .line 62
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->y:I

    const v2, 0x7f06010a

    .line 63
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->z:I

    const v2, 0x7f0601ec

    .line 64
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->H:I

    const v2, 0x7f0601cc

    .line 65
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->A:I

    const v2, 0x7f0a06bc

    .line 67
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->B:Landroid/widget/TextView;

    const v2, 0x7f0a06bd

    .line 68
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->C:Landroid/widget/TextView;

    const v2, 0x7f0a0722

    .line 69
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/RatingView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->D:Lcom/callapp/contacts/widget/RatingView;

    const v2, 0x7f0a06be

    .line 70
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->E:Landroid/widget/TextView;

    const v2, 0x7f0a06b8

    .line 71
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->F:Landroid/widget/TextView;

    const v2, 0x7f0a06bb

    .line 72
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->w:Landroid/widget/TextView;

    const v2, 0x7f0a05e8

    .line 73
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12046e

    .line 74
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a01a0

    .line 77
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->G:Landroid/widget/ImageView;

    .line 78
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->G:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a01a3

    .line 80
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->x:Landroid/widget/FrameLayout;

    .line 81
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->setSwipeable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->G:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a(Landroid/view/View;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V
    .locals 2

    const/4 v0, 0x1

    .line 2173
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 2174
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    const-string v1, "search places"

    invoke-static {p0, v0, p1, v1}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x2

    .line 2177
    invoke-interface {p2, p0}, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;->d(I)V

    :cond_0
    return-void
.end method

.method private setPlaceRatingNumber(D)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->C:Landroid/widget/TextView;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 205
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->C:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->C:Landroid/widget/TextView;

    const p2, 0x7f12070c

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->v:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v1, p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1371
    iput-boolean p2, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    const/4 p2, 0x0

    .line 1491
    iput p2, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->k:I

    .line 85
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void
.end method

.method public getLoaderLoadFields()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_LOAD_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->v:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 95
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$ContactListAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$1;)V

    return-object v0
.end method

.method setPlaceAddress(Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->F:Landroid/widget/TextView;

    iget v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->H:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method setPlaceName(Ljava/lang/CharSequence;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->B:Landroid/widget/TextView;

    iget v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->H:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method setPlaceType(Ljava/lang/String;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->E:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->E:Landroid/widget/TextView;

    iget v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->A:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method setProfileText(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->v:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRating(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->D:Lcom/callapp/contacts/widget/RatingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/RatingView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->D:Lcom/callapp/contacts/widget/RatingView;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/widget/RatingView;->setRating(D)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->D:Lcom/callapp/contacts/widget/RatingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/RatingView;->setVisibility(I)V

    .line 220
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->setPlaceRatingNumber(D)V

    return-void
.end method
