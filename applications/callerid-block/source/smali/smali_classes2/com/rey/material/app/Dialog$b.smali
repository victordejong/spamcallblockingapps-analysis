.class Lcom/rey/material/app/Dialog$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/app/Dialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/rey/material/app/Dialog;


# direct methods
.method constructor <init>(Lcom/rey/material/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/Dialog$b;->b:Lcom/rey/material/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/Dialog$b;->b:Lcom/rey/material/app/Dialog;

    invoke-static {v0}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog$b;->b:Lcom/rey/material/app/Dialog;

    invoke-static {v0}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/app/Dialog$b;->b:Lcom/rey/material/app/Dialog;

    iget v1, v1, Lcom/rey/material/app/Dialog;->u:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/app/Dialog$b;->b:Lcom/rey/material/app/Dialog;

    invoke-static {v1}, Lcom/rey/material/app/Dialog;->b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    return v0
.end method
