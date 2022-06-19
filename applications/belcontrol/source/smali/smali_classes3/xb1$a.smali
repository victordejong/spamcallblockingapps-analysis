.class public Lxb1$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb1;->i(FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lxb1;


# direct methods
.method public constructor <init>(Lxb1;)V
    .locals 0

    iput-object p1, p0, Lxb1$a;->b:Lxb1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxb1$a;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lxb1$a;->b:Lxb1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lxb1;->a(Lxb1;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-boolean p1, p0, Lxb1$a;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lxb1$a;->b:Lxb1;

    invoke-static {p1}, Lxb1;->b(Lxb1;)V

    :cond_0
    return-void
.end method
