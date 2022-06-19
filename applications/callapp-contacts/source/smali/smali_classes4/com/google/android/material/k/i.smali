.class public final Lcom/google/android/material/k/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/google/android/material/k/d;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1043
    new-instance p0, Lcom/google/android/material/k/l;

    invoke-direct {p0}, Lcom/google/android/material/k/l;-><init>()V

    return-object p0

    .line 35
    :cond_0
    new-instance p0, Lcom/google/android/material/k/e;

    invoke-direct {p0}, Lcom/google/android/material/k/e;-><init>()V

    return-object p0

    .line 33
    :cond_1
    new-instance p0, Lcom/google/android/material/k/l;

    invoke-direct {p0}, Lcom/google/android/material/k/l;-><init>()V

    return-object p0
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    instance-of v1, v0, Lcom/google/android/material/k/h;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Lcom/google/android/material/k/h;

    invoke-static {p0, v0}, Lcom/google/android/material/k/i;->a(Landroid/view/View;Lcom/google/android/material/k/h;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 58
    instance-of v0, p0, Lcom/google/android/material/k/h;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lcom/google/android/material/k/h;

    invoke-virtual {p0, p1}, Lcom/google/android/material/k/h;->r(F)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/google/android/material/k/h;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/k/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/google/android/material/internal/r;->c(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/k/h;->q(F)V

    :cond_0
    return-void
.end method
