.class Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomPagerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/GalleryActivity;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/GalleryActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;->a:Lcom/callapp/contacts/activity/GalleryActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    const-string p1, "layout_inflater"

    .line 71
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;->b:Landroid/view/LayoutInflater;

    .line 72
    iput-object p3, p0, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0114

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04b8

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0846

    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a07f4

    .line 91
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 93
    iget-object v4, p0, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;->c:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    new-instance v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v6, p0, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;->a:Lcom/callapp/contacts/activity/GalleryActivity;

    invoke-direct {v5, v1, v4, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 96
    iget-object v1, p0, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->getSocialId()I

    move-result p2

    invoke-static {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeResId(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f0805c4

    .line 97
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/GalleryActivity$CustomPagerAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
