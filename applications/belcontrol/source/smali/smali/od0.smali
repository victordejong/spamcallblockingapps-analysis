.class public Lod0;
.super Lnd0;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lnd0;-><init>(F)V

    return-void
.end method


# virtual methods
.method public c(FFLxd0;)V
    .locals 4

    iget v0, p0, Lnd0;->a:F

    mul-float v0, v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    sub-float v2, v1, p1

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v0, v1, v2}, Lxd0;->h(FFFF)V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float p1, v2

    iget v2, p0, Lnd0;->a:F

    mul-float p1, p1, v2

    mul-float p1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lnd0;->a:F

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    invoke-virtual {p3, p1, v0}, Lxd0;->f(FF)V

    return-void
.end method
