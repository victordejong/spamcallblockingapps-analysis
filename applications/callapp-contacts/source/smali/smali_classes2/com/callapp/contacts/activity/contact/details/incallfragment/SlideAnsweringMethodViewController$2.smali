.class Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;
.super Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-direct {p0}, Lcom/callapp/contacts/widget/SingleAndMultiOnTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 6

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    return p1

    .line 230
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    .line 231
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, p1, :cond_9

    if-eq v1, v3, :cond_1

    goto/16 :goto_3

    .line 241
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->g(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F

    move-result v1

    add-float/2addr p2, v1

    .line 242
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)I

    move-result v1

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->c(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)I

    move-result p3

    if-eq v0, p3, :cond_9

    .line 245
    :cond_2
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F

    move-result p3

    cmpl-float p3, p2, p3

    if-lez p3, :cond_3

    .line 246
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F

    move-result p2

    .line 249
    :cond_3
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F

    move-result p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_4

    .line 250
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F

    move-result p2

    .line 253
    :cond_4
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 254
    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 v0, 0x0

    .line 255
    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 256
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 261
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->c(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)I

    move-result p3

    div-int/lit8 p3, p3, 0x3

    int-to-float p3, p3

    cmpl-float v0, p2, p3

    if-lez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    sub-float/2addr p2, p3

    const v0, -0xff0100

    .line 266
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F

    move-result v1

    sub-float/2addr v1, p3

    div-float/2addr p2, v1

    goto :goto_0

    :cond_6
    sub-float p2, p3, p2

    const/high16 v0, -0x10000

    .line 270
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F

    move-result v1

    sub-float/2addr p3, v1

    div-float/2addr p2, p3

    .line 273
    :goto_0
    new-instance p3, Landroid/animation/ArgbEvaluator;

    invoke-direct {p3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p2, v2, v0}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    float-to-double v2, p2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v2, v4

    if-lez v0, :cond_8

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v0, p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;I)I

    .line 276
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->j(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->k(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->k(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 280
    :cond_7
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->j(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 283
    :cond_8
    :goto_1
    const-class p3, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string v0, "percentage "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->j(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->invalidate()V

    .line 285
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->k(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->invalidate()V

    return p1

    .line 292
    :cond_9
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getY()F

    move-result p2

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->h(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F

    move-result p3

    cmpl-float p2, p2, p3

    if-nez p2, :cond_a

    .line 293
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->getCallback()Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 295
    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;->onActionSelected(I)V

    goto/16 :goto_2

    .line 297
    :cond_a
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->i(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_b

    .line 298
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->getCallback()Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 300
    invoke-interface {p1, v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;->onActionSelected(I)V

    goto :goto_2

    .line 304
    :cond_b
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)I

    move-result p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/2addr p1, v3

    .line 305
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->c(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v3

    .line 306
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    int-to-float p1, p1

    .line 307
    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, p2

    .line 308
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    .line 309
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 311
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 312
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->e(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 318
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->f(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)V

    :goto_3
    return v2

    .line 235
    :cond_d
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p2

    invoke-static {p3, v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;F)F

    .line 236
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->clearAnimation()V

    return p1
.end method

.method public final a(Z)Z
    .locals 2

    if-nez p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->a(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)I

    move-result p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->c(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 212
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float p1, p1

    .line 213
    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float v0, v0

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 215
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 217
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->d(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->b(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->e(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;->f(Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
