.class Landroidx/appcompat/widget/ab$a;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ab;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ab;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Landroidx/appcompat/widget/ab$a;->a:Landroidx/appcompat/widget/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Landroidx/appcompat/widget/ab$a;->a:Landroidx/appcompat/widget/ab;

    iget-object v0, v0, Landroidx/appcompat/widget/ab;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 325
    :cond_0
    return-void
.end method
