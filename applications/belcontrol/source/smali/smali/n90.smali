.class public final synthetic Ln90;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lud0;


# direct methods
.method public synthetic constructor <init>(Lud0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln90;->a:Lud0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Ln90;->a:Lud0;

    invoke-static {v0, p1}, Lfa0;->L(Lud0;Landroid/animation/ValueAnimator;)V

    return-void
.end method
