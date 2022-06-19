.class public final Lfa0$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa0;->N(Lia0;Lud0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Lud0;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Lud0;)V
    .locals 0

    iput-object p1, p0, Lfa0$e;->a:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lfa0$e;->b:Lud0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lfa0$e;->a:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lfa0$e;->b:Lud0;

    invoke-interface {v1}, Lud0;->getElevation()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void
.end method
