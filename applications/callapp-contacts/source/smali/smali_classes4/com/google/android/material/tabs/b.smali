.class Lcom/google/android/material/tabs/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/material/tabs/TabLayout$TabView;)Landroid/graphics/RectF;
    .locals 11

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    .line 3912
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->c:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v9, v1, v2

    if-eqz v9, :cond_2

    .line 3913
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    if-eqz v8, :cond_0

    .line 3914
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v7

    :goto_1
    if-eqz v8, :cond_1

    .line 3915
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v6

    :goto_2
    const/4 v8, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v6, v7

    new-array v1, v0, [Landroid/view/View;

    .line 3934
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->c:Landroid/view/View;

    aput-object v2, v1, v5

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v3, v0, :cond_7

    aget-object v9, v1, v3

    if-eqz v9, :cond_6

    .line 3935
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    if-eqz v8, :cond_4

    .line 3936
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_4

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v7

    :goto_4
    if-eqz v8, :cond_5

    .line 3937
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v2

    :goto_5
    const/4 v8, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    sub-int/2addr v2, v7

    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/google/android/material/internal/r;->a(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    if-ge v6, v0, :cond_8

    move v6, v0

    .line 80
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/2addr v0, v5

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getBottom()I

    move-result p0

    add-int/2addr v1, p0

    div-int/2addr v1, v5

    .line 82
    div-int/2addr v6, v5

    sub-int p0, v0, v6

    .line 83
    div-int/2addr v2, v5

    sub-int v2, v1, v2

    add-int/2addr v6, v0

    .line 85
    div-int/2addr v0, v5

    add-int/2addr v1, v0

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p0, p0

    int-to-float v2, v2

    int-to-float v3, v6

    int-to-float v1, v1

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method static a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 3

    if-nez p1, :cond_0

    .line 105
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    .line 4120
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/tabs/TabLayout;->v:Z

    if-nez p0, :cond_1

    .line 109
    instance-of p0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz p0, :cond_1

    .line 110
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {p1}, Lcom/google/android/material/tabs/b;->a(Lcom/google/android/material/tabs/TabLayout$TabView;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    .line 114
    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method static a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 129
    invoke-static {p0, p1}, Lcom/google/android/material/tabs/b;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    .line 130
    iget p1, p0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    .line 132
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/RectF;->right:F

    float-to-int p0, p0

    .line 134
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 130
    invoke-virtual {p2, p1, v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 161
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/b;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    .line 164
    invoke-static {p1, p3}, Lcom/google/android/material/tabs/b;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    .line 165
    iget p3, p2, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    .line 166
    invoke-static {p3, v0, p4}, Lcom/google/android/material/a/a;->a(IIF)I

    move-result p3

    .line 167
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/RectF;->right:F

    float-to-int p2, p2

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int p1, p1

    .line 168
    invoke-static {p2, p1, p4}, Lcom/google/android/material/a/a;->a(IIF)I

    move-result p1

    .line 169
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 165
    invoke-virtual {p5, p3, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
