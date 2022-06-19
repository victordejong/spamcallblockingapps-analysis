.class public Lh1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1;


# direct methods
.method public constructor <init>(Lh1;)V
    .locals 0

    iput-object p1, p0, Lh1$a;->a:Lh1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lh1$a;->a:Lh1;

    invoke-virtual {v0}, Lh1;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh1$a;->a:Lh1;

    iget-object v0, v0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->z()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lh1$a;->a:Lh1;

    iget-object v0, v0, Lh1;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh1$a;->a:Lh1;

    iget-object v0, v0, Lh1;->k:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lh1$a;->a:Lh1;

    invoke-virtual {v0}, Lh1;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
