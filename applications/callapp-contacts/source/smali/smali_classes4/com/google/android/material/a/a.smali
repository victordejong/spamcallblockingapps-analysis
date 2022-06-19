.class public final Lcom/google/android/material/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:Landroid/animation/TimeInterpolator;

.field public static final c:Landroid/animation/TimeInterpolator;

.field public static final d:Landroid/animation/TimeInterpolator;

.field public static final e:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    .line 38
    new-instance v0, Landroidx/g/a/a/b;

    invoke-direct {v0}, Landroidx/g/a/a/b;-><init>()V

    sput-object v0, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    .line 40
    new-instance v0, Landroidx/g/a/a/a;

    invoke-direct {v0}, Landroidx/g/a/a/a;-><init>()V

    sput-object v0, Lcom/google/android/material/a/a;->c:Landroid/animation/TimeInterpolator;

    .line 42
    new-instance v0, Landroidx/g/a/a/c;

    invoke-direct {v0}, Landroidx/g/a/a/c;-><init>()V

    sput-object v0, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/material/a/a;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .locals 4

    const/4 v0, 0x0

    const v1, 0x3e428f5c    # 0.19f

    cmpg-float v2, p0, v1

    if-gez v2, :cond_0

    return v0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v2

    if-lez v3, :cond_1

    return v2

    :cond_1
    sub-float/2addr p0, v1

    const v1, 0x3f4f5c29    # 0.81f

    div-float/2addr p0, v1

    mul-float p0, p0, v2

    add-float/2addr p0, v0

    return p0
.end method

.method public static a(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static a(IIF)I
    .locals 0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float p2, p2, p1

    .line 53
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
