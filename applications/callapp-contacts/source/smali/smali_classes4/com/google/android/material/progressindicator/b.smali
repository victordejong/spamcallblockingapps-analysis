.class public abstract Lcom/google/android/material/progressindicator/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 57
    iput-object v1, p0, Lcom/google/android/material/progressindicator/b;->c:[I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$d;->mtrl_progress_track_thickness:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 78
    sget-object v4, Lcom/google/android/material/a$l;->BaseProgressIndicator:[I

    new-array v7, v0, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 79
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 81
    sget p3, Lcom/google/android/material/a$l;->BaseProgressIndicator_trackThickness:I

    .line 82
    invoke-static {p1, p2, p3, v1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/progressindicator/b;->a:I

    .line 84
    sget p3, Lcom/google/android/material/a$l;->BaseProgressIndicator_trackCornerRadius:I

    .line 86
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p3

    iget p4, p0, Lcom/google/android/material/progressindicator/b;->a:I

    div-int/lit8 p4, p4, 0x2

    .line 85
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/progressindicator/b;->b:I

    .line 89
    sget p3, Lcom/google/android/material/a$l;->BaseProgressIndicator_showAnimationBehavior:I

    .line 90
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/progressindicator/b;->e:I

    .line 93
    sget p3, Lcom/google/android/material/a$l;->BaseProgressIndicator_hideAnimationBehavior:I

    .line 94
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/progressindicator/b;->f:I

    .line 1113
    sget p3, Lcom/google/android/material/a$l;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 p4, -0x1

    const/4 v1, 0x1

    if-nez p3, :cond_0

    new-array p3, v1, [I

    .line 1115
    sget v2, Lcom/google/android/material/a$b;->colorPrimary:I

    invoke-static {p1, v2, p4}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;II)I

    move-result v2

    aput v2, p3, v0

    iput-object p3, p0, Lcom/google/android/material/progressindicator/b;->c:[I

    goto :goto_0

    .line 1119
    :cond_0
    sget p3, Lcom/google/android/material/a$l;->BaseProgressIndicator_indicatorColor:I

    .line 1120
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p3

    .line 1122
    iget p3, p3, Landroid/util/TypedValue;->type:I

    if-eq p3, v1, :cond_1

    new-array p3, v1, [I

    .line 1123
    sget v2, Lcom/google/android/material/a$l;->BaseProgressIndicator_indicatorColor:I

    .line 1124
    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, p3, v0

    iput-object p3, p0, Lcom/google/android/material/progressindicator/b;->c:[I

    goto :goto_0

    .line 1130
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/google/android/material/a$l;->BaseProgressIndicator_indicatorColor:I

    .line 1132
    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1131
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/progressindicator/b;->c:[I

    .line 1133
    array-length p3, p3

    if-eqz p3, :cond_3

    .line 1148
    :goto_0
    sget p3, Lcom/google/android/material/a$l;->BaseProgressIndicator_trackColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1149
    sget p1, Lcom/google/android/material/a$l;->BaseProgressIndicator_trackColor:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/progressindicator/b;->d:I

    goto :goto_1

    .line 1153
    :cond_2
    iget-object p3, p0, Lcom/google/android/material/progressindicator/b;->c:[I

    aget p3, p3, v0

    iput p3, p0, Lcom/google/android/material/progressindicator/b;->d:I

    .line 1156
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    new-array p3, v1, [I

    const p4, 0x1010033

    aput p4, p3, v0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p3, 0x3e4ccccd    # 0.2f

    .line 1157
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 1158
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float p3, p3, p1

    float-to-int p1, p3

    .line 1161
    iget p3, p0, Lcom/google/android/material/progressindicator/b;->d:I

    invoke-static {p3, p1}, Lcom/google/android/material/b/a;->a(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/progressindicator/b;->d:I

    .line 101
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 1134
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "indicatorColors cannot be empty when indicatorColor is not used."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 165
    iget v0, p0, Lcom/google/android/material/progressindicator/b;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 169
    iget v0, p0, Lcom/google/android/material/progressindicator/b;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method abstract c()V
.end method
