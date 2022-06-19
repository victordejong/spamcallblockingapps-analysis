.class final Lcom/google/android/material/internal/i$1;
.super Lcom/google/android/material/h/f;
.source "SourceFile"


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

    .line 44
    iput-object p1, p0, Lcom/google/android/material/internal/i$1;->a:Lcom/google/android/material/internal/i;

    invoke-direct {p0}, Lcom/google/android/material/h/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/google/android/material/internal/i$1;->a:Lcom/google/android/material/internal/i;

    const/4 v0, 0x1

    .line 3039
    iput-boolean v0, p1, Lcom/google/android/material/internal/i;->b:Z

    .line 61
    iget-object p1, p0, Lcom/google/android/material/internal/i$1;->a:Lcom/google/android/material/internal/i;

    .line 4039
    iget-object p1, p1, Lcom/google/android/material/internal/i;->c:Ljava/lang/ref/WeakReference;

    .line 61
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/i$a;

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/google/android/material/internal/i$a;->b()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/i$1;->a:Lcom/google/android/material/internal/i;

    const/4 p2, 0x1

    .line 1039
    iput-boolean p2, p1, Lcom/google/android/material/internal/i;->b:Z

    .line 51
    iget-object p1, p0, Lcom/google/android/material/internal/i$1;->a:Lcom/google/android/material/internal/i;

    .line 2039
    iget-object p1, p1, Lcom/google/android/material/internal/i;->c:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/i$a;

    if-eqz p1, :cond_1

    .line 53
    invoke-interface {p1}, Lcom/google/android/material/internal/i$a;->b()V

    :cond_1
    return-void
.end method
