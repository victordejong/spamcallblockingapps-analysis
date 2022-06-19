.class public final Llc0$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llc0$e;->a:F

    iput p3, p0, Llc0$e;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    div-float p2, p1, p2

    iput p2, p0, Llc0$e;->c:F

    invoke-virtual {p0, p1}, Llc0$e;->a(F)F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Llc0$e;->d:F

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 4

    iget v0, p0, Llc0$e;->a:F

    float-to-double v0, v0

    neg-float v2, p1

    iget v3, p0, Llc0$e;->c:F

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Llc0$e;->b:F

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method public getInterpolation(F)F
    .locals 1

    invoke-virtual {p0, p1}, Llc0$e;->a(F)F

    move-result p1

    iget v0, p0, Llc0$e;->d:F

    mul-float p1, p1, v0

    return p1
.end method
