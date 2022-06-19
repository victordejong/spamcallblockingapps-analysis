.class public Lnb$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnb;->g(Landroid/view/View;Lob;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lob;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lnb;Lob;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lnb$a;->a:Lob;

    iput-object p3, p0, Lnb$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lnb$a;->a:Lob;

    iget-object v0, p0, Lnb$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lob;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lnb$a;->a:Lob;

    iget-object v0, p0, Lnb$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lob;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lnb$a;->a:Lob;

    iget-object v0, p0, Lnb$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lob;->c(Landroid/view/View;)V

    return-void
.end method
