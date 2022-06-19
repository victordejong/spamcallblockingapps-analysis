.class Lcom/google/android/material/internal/i$a;
.super Lc/c/a/b/u/f;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/i$a;->a:Lcom/google/android/material/internal/i;

    invoke-direct {p0}, Lc/c/a/b/u/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/internal/i$a;->a:Lcom/google/android/material/internal/i;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/internal/i;->a(Lcom/google/android/material/internal/i;Z)Z

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/i$a;->a:Lcom/google/android/material/internal/i;

    invoke-static {p1}, Lcom/google/android/material/internal/i;->b(Lcom/google/android/material/internal/i;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/i$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/material/internal/i$b;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/i$a;->a:Lcom/google/android/material/internal/i;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/material/internal/i;->a(Lcom/google/android/material/internal/i;Z)Z

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/i$a;->a:Lcom/google/android/material/internal/i;

    invoke-static {p1}, Lcom/google/android/material/internal/i;->b(Lcom/google/android/material/internal/i;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/i$b;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/android/material/internal/i$b;->a()V

    :cond_1
    return-void
.end method
