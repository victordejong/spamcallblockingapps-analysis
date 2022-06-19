.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->setColorToActionButtons(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/header/ThemeState;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Lcom/callapp/contacts/activity/contact/header/ThemeState;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 655
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->B(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditIconColor()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 657
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->C(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f06001b

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 658
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->D(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditCircleStrokeColor()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->COVER:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getSubtitleTextDefaultColor()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 661
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 662
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->B(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->COVER:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditIconColor()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 663
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->C(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->COVER:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditCircleColor()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 664
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->D(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->COVER:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditCircleStrokeColor()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-eqz v0, :cond_2

    .line 666
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getSubtitleTextDefaultColor()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 667
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 668
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->B(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditIconColor()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 669
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->C(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditCircleColor()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 670
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->D(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;->a:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditCircleStrokeColor()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method
