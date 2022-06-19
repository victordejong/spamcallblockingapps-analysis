.class final Lcom/explorestack/iab/utils/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/utils/a$a;

.field final synthetic b:Lcom/explorestack/iab/utils/a;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/utils/a;Lcom/explorestack/iab/utils/a$a;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/explorestack/iab/utils/a$2;->b:Lcom/explorestack/iab/utils/a;

    iput-object p2, p0, Lcom/explorestack/iab/utils/a$2;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 238
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 239
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$2;->b:Lcom/explorestack/iab/utils/a;

    iget-object v1, p0, Lcom/explorestack/iab/utils/a$2;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-static {v0, p1, v1}, Lcom/explorestack/iab/utils/a;->a(Lcom/explorestack/iab/utils/a;FLcom/explorestack/iab/utils/a$a;)V

    .line 240
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$2;->b:Lcom/explorestack/iab/utils/a;

    iget-object v1, p0, Lcom/explorestack/iab/utils/a$2;->a:Lcom/explorestack/iab/utils/a$a;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/explorestack/iab/utils/a;->a(Lcom/explorestack/iab/utils/a;FLcom/explorestack/iab/utils/a$a;Z)V

    .line 241
    iget-object p1, p0, Lcom/explorestack/iab/utils/a$2;->b:Lcom/explorestack/iab/utils/a;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/a;->invalidateSelf()V

    return-void
.end method
