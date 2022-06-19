.class Lcom/rey/material/app/Dialog$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/app/Dialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/app/Dialog;


# direct methods
.method constructor <init>(Lcom/rey/material/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/Dialog$c;->a:Lcom/rey/material/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/rey/material/app/Dialog$c;->a:Lcom/rey/material/app/Dialog;

    invoke-static {p1}, Lcom/rey/material/app/Dialog;->g(Lcom/rey/material/app/Dialog;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/rey/material/app/Dialog$c;->a:Lcom/rey/material/app/Dialog;

    invoke-static {v0}, Lcom/rey/material/app/Dialog;->f(Lcom/rey/material/app/Dialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
