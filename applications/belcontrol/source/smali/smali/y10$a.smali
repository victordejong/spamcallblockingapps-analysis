.class public Ly10$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly10;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly10$c;

.field public final synthetic b:Ly10;


# direct methods
.method public constructor <init>(Ly10;Ly10$c;)V
    .locals 0

    iput-object p1, p0, Ly10$a;->b:Ly10;

    iput-object p2, p0, Ly10$a;->a:Ly10$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Ly10$a;->b:Ly10;

    iget-object v1, p0, Ly10$a;->a:Ly10$c;

    invoke-virtual {v0, p1, v1}, Ly10;->n(FLy10$c;)V

    iget-object v0, p0, Ly10$a;->b:Ly10;

    iget-object v1, p0, Ly10$a;->a:Ly10$c;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ly10;->b(FLy10$c;Z)V

    iget-object p1, p0, Ly10$a;->b:Ly10;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
