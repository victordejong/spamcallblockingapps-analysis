.class public Lcom/google/android/material/q/h;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# direct methods
.method static a()Lcom/google/android/material/q/d;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/material/q/j;

    invoke-direct {v0}, Lcom/google/android/material/q/j;-><init>()V

    return-object v0
.end method

.method static a(I)Lcom/google/android/material/q/d;
    .locals 1

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 37
    invoke-static {}, Lcom/google/android/material/q/h;->a()Lcom/google/android/material/q/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    new-instance v0, Lcom/google/android/material/q/j;

    invoke-direct {v0}, Lcom/google/android/material/q/j;-><init>()V

    goto :goto_0

    .line 35
    :pswitch_1
    new-instance v0, Lcom/google/android/material/q/e;

    invoke-direct {v0}, Lcom/google/android/material/q/e;-><init>()V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    instance-of v1, v0, Lcom/google/android/material/q/g;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Lcom/google/android/material/q/g;

    invoke-static {p0, v0}, Lcom/google/android/material/q/h;->a(Landroid/view/View;Lcom/google/android/material/q/g;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    instance-of v1, v0, Lcom/google/android/material/q/g;

    if-eqz v1, :cond_0

    .line 59
    check-cast v0, Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->r(F)V

    .line 61
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/google/android/material/q/g;)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/q/g;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/google/android/material/internal/j;->b(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/q/g;->q(F)V

    .line 86
    :cond_0
    return-void
.end method

.method static b()Lcom/google/android/material/q/f;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/material/q/f;

    invoke-direct {v0}, Lcom/google/android/material/q/f;-><init>()V

    return-object v0
.end method
