.class public final synthetic Lu80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lja0;


# direct methods
.method public synthetic constructor <init>(Lja0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu80;->a:Lja0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lu80;->a:Lja0;

    invoke-static {v0, p1}, Lfa0;->q(Lja0;Landroid/animation/ValueAnimator;)V

    return-void
.end method
