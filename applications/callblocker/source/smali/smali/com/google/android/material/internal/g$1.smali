.class Lcom/google/android/material/internal/g$1;
.super Lcom/google/android/material/n/f;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/g;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    invoke-direct {p0}, Lcom/google/android/material/n/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/internal/g;->a(Lcom/google/android/material/internal/g;Z)Z

    .line 61
    iget-object v0, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    invoke-static {v0}, Lcom/google/android/material/internal/g;->a(Lcom/google/android/material/internal/g;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/g$a;

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/google/android/material/internal/g$a;->e()V

    .line 65
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 2

    .prologue
    .line 47
    if-eqz p2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/internal/g;->a(Lcom/google/android/material/internal/g;Z)Z

    .line 51
    iget-object v0, p0, Lcom/google/android/material/internal/g$1;->a:Lcom/google/android/material/internal/g;

    invoke-static {v0}, Lcom/google/android/material/internal/g;->a(Lcom/google/android/material/internal/g;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/g$a;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lcom/google/android/material/internal/g$a;->e()V

    goto :goto_0
.end method
