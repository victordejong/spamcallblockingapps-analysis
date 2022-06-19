.class public Lgo0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgo0;


# direct methods
.method public constructor <init>(Lgo0;)V
    .locals 0

    iput-object p1, p0, Lgo0$a;->a:Lgo0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lgo0$a;->a:Lgo0;

    invoke-static {v0}, Lgo0;->a(Lgo0;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgo0$a;->a:Lgo0;

    invoke-static {v0}, Lgo0;->b(Lgo0;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgo0$a;->a:Lgo0;

    invoke-static {v0}, Lgo0;->b(Lgo0;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgo0$a;->a:Lgo0;

    invoke-static {v0}, Lgo0;->b(Lgo0;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgo0$a;->a:Lgo0;

    invoke-static {v0}, Lgo0;->c(Lgo0;)Lgo0$d;

    move-result-object v0

    invoke-virtual {v0}, Lgo0$d;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgo0$a;->a:Lgo0;

    invoke-static {v0}, Lgo0;->c(Lgo0;)Lgo0$d;

    move-result-object v0

    invoke-virtual {v0}, Lgo0$d;->g()V

    :cond_1
    :goto_0
    return-void
.end method
