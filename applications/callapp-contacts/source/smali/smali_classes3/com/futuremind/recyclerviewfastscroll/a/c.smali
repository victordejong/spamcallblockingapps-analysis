.class public abstract Lcom/futuremind/recyclerviewfastscroll/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/futuremind/recyclerviewfastscroll/a/d;

.field private b:Lcom/futuremind/recyclerviewfastscroll/a/d;

.field public c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public abstract a(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract b()Landroid/widget/TextView;
.end method

.method public abstract c()I
.end method

.method protected abstract d()Lcom/futuremind/recyclerviewfastscroll/a/d;
.end method

.method public e()Lcom/futuremind/recyclerviewfastscroll/a/d;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->a:Lcom/futuremind/recyclerviewfastscroll/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->a:Lcom/futuremind/recyclerviewfastscroll/a/d;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->a:Lcom/futuremind/recyclerviewfastscroll/a/d;

    return-object v0
.end method

.method public f()Lcom/futuremind/recyclerviewfastscroll/a/d;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->b:Lcom/futuremind/recyclerviewfastscroll/a/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/a/c;->d()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->b:Lcom/futuremind/recyclerviewfastscroll/a/d;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->b:Lcom/futuremind/recyclerviewfastscroll/a/d;

    return-object v0
.end method
