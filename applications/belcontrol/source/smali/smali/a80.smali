.class public final synthetic La80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lhe0;


# direct methods
.method public synthetic constructor <init>(Lhe0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La80;->a:Lhe0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, La80;->a:Lhe0;

    invoke-static {v0, p1}, Ld80;->A(Lhe0;Landroid/animation/ValueAnimator;)V

    return-void
.end method
