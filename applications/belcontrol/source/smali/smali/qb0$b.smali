.class public Lqb0$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqb0;->s(Lqb0$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqb0;


# direct methods
.method public constructor <init>(Lqb0;)V
    .locals 0

    iput-object p1, p0, Lqb0$b;->a:Lqb0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lqb0$b;->a:Lqb0;

    invoke-static {p1}, Lqb0;->e(Lqb0;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method
