.class public Lsd0;
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
    .locals 8

    iget v0, p0, Lnd0;->a:F

    mul-float v1, v0, p2

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v3, v2, p1

    const/4 v4, 0x0

    invoke-virtual {p3, v4, v1, v2, v3}, Lxd0;->h(FFFF)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    mul-float v5, v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    move-object v1, p3

    move v4, v5

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Lxd0;->a(FFFFFF)V

    return-void
.end method
