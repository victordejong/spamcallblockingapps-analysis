.class public Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CoordinatorLayoutObserverImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

.field private b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;


# direct methods
.method protected constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    return-void
.end method

.method private synthetic b(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V
    .locals 4

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    .line 184
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4;->a:[I

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a(FF)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->b(FF)V

    .line 194
    :cond_2
    :goto_0
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4;->a:[I

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 199
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a(FF)V

    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->b(FF)V

    .line 202
    :goto_1
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    return-void
.end method

.method public static synthetic lambda$gTxNRGsQqZoWSULkjpGuR8HlyC0(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->b(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 5

    .line 208
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;F)F

    .line 209
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)Z

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)Z

    const/16 p1, 0xaf

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v2

    if-nez v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-interface {v3, v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 217
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v0, :cond_2

    const/16 v1, 0xaf

    :cond_2
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->j:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 225
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->j:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V

    .line 228
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 229
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sub-float v0, v2, p2

    const/high16 v1, 0x432f0000    # 175.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 232
    :cond_7
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->e(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 234
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 235
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 236
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->g(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    sub-float v1, v2, p2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 238
    :cond_8
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->h(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    sub-float v1, v2, p2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 243
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->g(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    sub-float v1, v2, p2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 245
    :cond_a
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->j(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    sub-float v1, v2, p2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    :goto_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    sub-float/2addr v2, p2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 252
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->e:Lcom/callapp/contacts/widget/CallAppCheckBox;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setfilterColor(I)V

    .line 253
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->l(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 254
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->m(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 255
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 256
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 257
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 258
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 260
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->o(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    .line 263
    :cond_b
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->p(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/FrameLayout;

    move-result-object p1

    const p2, 0x3e2e147b    # 0.17f

    const v0, 0x3f47ae14    # 0.78f

    mul-float v0, v0, v2

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_5

    .line 261
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->p(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_5
    const p1, 0x7f0700f1

    .line 266
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 267
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->r(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result p2

    if-eqz p2, :cond_d

    const p2, 0x7f070177

    goto :goto_6

    :cond_d
    const p2, 0x7f07017c

    :goto_6
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result p2

    .line 268
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->s(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->r(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, -0x2

    goto :goto_7

    :cond_e
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700ed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_7
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->g(Landroid/view/View;I)V

    .line 269
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0x7f070172

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 271
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    .line 272
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 273
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->t(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    return-void

    .line 275
    :cond_f
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->t(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V
    .locals 2

    .line 180
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl$gTxNRGsQqZoWSULkjpGuR8HlyC0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl$gTxNRGsQqZoWSULkjpGuR8HlyC0;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(FF)V
    .locals 6

    .line 281
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;F)F

    .line 282
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)Z

    .line 283
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)Z

    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v2

    if-nez v3, :cond_1

    .line 285
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-interface {v3, v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V

    .line 287
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)V

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    cmpl-float v3, p2, p1

    if-nez v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 292
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-interface {v3, v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V

    .line 293
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)V

    goto :goto_3

    .line 296
    :cond_2
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)V

    .line 297
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 298
    :goto_0
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v3, :cond_4

    const/16 v3, 0xaf

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_1
    move-object v4, v3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 301
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->e(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v3

    sub-float v4, v2, p2

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 302
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 303
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 304
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->g(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 306
    :cond_6
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v5}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->u(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->o(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    .line 312
    :cond_8
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->p(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/FrameLayout;

    move-result-object v3

    const v5, 0x3e2e147b    # 0.17f

    mul-float v5, v5, v4

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_6

    .line 310
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->p(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_6
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v5, p2, p1

    if-nez v5, :cond_a

    .line 316
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 317
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 318
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 319
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 320
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 322
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->e(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_8

    .line 324
    :cond_a
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d()F

    move-result p1

    mul-float p1, p1, p2

    sub-float/2addr v2, p1

    .line 331
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->v(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->v(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->isFling()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->v(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->isFlingUpwards()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_c

    .line 333
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_d

    .line 338
    :cond_c
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 339
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 341
    :cond_d
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    mul-float v3, v3, v4

    if-eqz v1, :cond_e

    .line 345
    iget v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_f

    .line 349
    :cond_e
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 352
    :cond_f
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f070186

    .line 353
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    neg-float p1, p1

    float-to-int p1, p1

    const v2, 0x7f07018a

    .line 354
    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    neg-float v2, v2

    float-to-int v2, v2

    if-eqz v1, :cond_10

    int-to-float v1, p1

    .line 356
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_11

    .line 361
    :cond_10
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 362
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->e(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object p1

    int-to-float v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_11
    :goto_8
    const p1, 0x7f0700f1

    .line 366
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 367
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->r(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v1, 0x7f070177

    goto :goto_9

    :cond_12
    const v1, 0x7f07017c

    :goto_9
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v1

    .line 368
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->s(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->r(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, -0x2

    goto :goto_a

    :cond_13
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0700ed

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_a
    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->g(Landroid/view/View;I)V

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float p1, p1, v4

    .line 371
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setY(F)V

    .line 372
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 373
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->t(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setY(F)V

    .line 375
    :cond_14
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 376
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 375
    invoke-static {v1, v3, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIF)I

    move-result v1

    const/high16 v3, -0x80000000

    invoke-static {p1, v1, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;II)V

    .line 377
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 378
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 377
    invoke-static {v1, v2, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIF)I

    move-result v1

    invoke-static {p1, v1, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;II)V

    .line 379
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 380
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->g(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b

    .line 382
    :cond_15
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->w(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    :goto_b
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->w(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->w(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 388
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->e:Lcom/callapp/contacts/widget/CallAppCheckBox;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setfilterColor(I)V

    .line 389
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->l(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 390
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->m(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 391
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->w(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 392
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 393
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->w(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;->a(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 394
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->e()I

    move-result v1

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f()I

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIF)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
