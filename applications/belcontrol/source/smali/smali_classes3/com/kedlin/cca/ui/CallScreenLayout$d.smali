.class public Lcom/kedlin/cca/ui/CallScreenLayout$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/CallScreenLayout;->w0(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:Lcom/kedlin/cca/ui/CallScreenLayout;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$d;->c:Lcom/kedlin/cca/ui/CallScreenLayout;

    iput-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$d;->a:Landroid/view/View;

    iput p3, p0, Lcom/kedlin/cca/ui/CallScreenLayout$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$d;->c:Lcom/kedlin/cca/ui/CallScreenLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->k(Lcom/kedlin/cca/ui/CallScreenLayout;Z)Z

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$d;->a:Landroid/view/View;

    iget v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout$d;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$d;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
