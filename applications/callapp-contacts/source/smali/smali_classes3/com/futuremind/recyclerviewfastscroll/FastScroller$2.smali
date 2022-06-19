.class final Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuremind/recyclerviewfastscroll/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method constructor <init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 186
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->requestDisallowInterceptTouchEvent(Z)V

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_3

    .line 196
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 197
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->c(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/a/c;

    move-result-object p1

    .line 1080
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->e()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->e()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/futuremind/recyclerviewfastscroll/a/d;->b()V

    .line 1081
    :cond_1
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->f()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->f()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/futuremind/recyclerviewfastscroll/a/d;->b()V

    :cond_2
    return v0

    :cond_3
    return p2

    .line 188
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->b(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/b;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_6

    .line 189
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->c(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/a/c;

    move-result-object p1

    .line 1075
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->e()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->e()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/futuremind/recyclerviewfastscroll/a/d;->a()V

    .line 1076
    :cond_5
    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->f()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/futuremind/recyclerviewfastscroll/a/c;->f()Lcom/futuremind/recyclerviewfastscroll/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/futuremind/recyclerviewfastscroll/a/d;->a()V

    .line 190
    :cond_6
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 191
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Landroid/view/MotionEvent;)F

    move-result p1

    .line 192
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {p2, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(F)V

    .line 193
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p2, p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;F)V

    return v0
.end method
