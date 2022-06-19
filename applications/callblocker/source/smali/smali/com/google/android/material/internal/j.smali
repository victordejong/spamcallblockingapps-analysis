.class public Lcom/google/android/material/internal/j;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/j$b;,
        Lcom/google/android/material/internal/j$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;I)F
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .prologue
    .line 47
    packed-switch p0, :pswitch_data_0

    .line 61
    :goto_0
    :pswitch_0
    return-object p1

    .line 49
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 51
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 53
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 55
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 57
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 59
    :pswitch_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 162
    invoke-static {p0}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p0}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    .line 179
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/google/android/material/internal/j$2;

    invoke-direct {v0}, Lcom/google/android/material/internal/j$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Lcom/google/android/material/internal/j$a;)V
    .locals 5

    .prologue
    .line 140
    new-instance v0, Lcom/google/android/material/internal/j$b;

    .line 142
    invoke-static {p0}, Landroidx/core/h/u;->i(Landroid/view/View;)I

    move-result v1

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 144
    invoke-static {p0}, Landroidx/core/h/u;->j(Landroid/view/View;)I

    move-result v3

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/internal/j$b;-><init>(IIII)V

    .line 148
    new-instance v1, Lcom/google/android/material/internal/j$1;

    invoke-direct {v1, p1, v0}, Lcom/google/android/material/internal/j$1;-><init>(Lcom/google/android/material/internal/j$a;Lcom/google/android/material/internal/j$b;)V

    invoke-static {p0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/q;)V

    .line 157
    invoke-static {p0}, Lcom/google/android/material/internal/j;->a(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public static b(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move v2, v0

    .line 188
    :goto_0
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 189
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->n(Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, v2

    .line 190
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move v2, v0

    goto :goto_0

    .line 192
    :cond_0
    return v2
.end method
