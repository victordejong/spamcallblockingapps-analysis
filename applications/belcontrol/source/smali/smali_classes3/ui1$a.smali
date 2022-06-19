.class public Lui1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui1;->c(Lhi1$a;)Lsi1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi1$a;


# direct methods
.method public constructor <init>(Lui1;Lhi1$a;)V
    .locals 0

    iput-object p2, p0, Lui1$a;->a:Lhi1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lui1$a;->a:Lhi1$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lhi1$a;->a(Lhi1;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lui1$a;->a:Lhi1$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lhi1$a;->d(Lhi1;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lui1$a;->a:Lhi1$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lhi1$a;->b(Lhi1;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lui1$a;->a:Lhi1$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lhi1$a;->c(Lhi1;)V

    return-void
.end method
