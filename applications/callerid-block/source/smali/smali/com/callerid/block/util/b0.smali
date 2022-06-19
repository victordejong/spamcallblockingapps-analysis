.class public Lcom/callerid/block/util/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field a:D

.field b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/callerid/block/util/b0;->a:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/callerid/block/util/b0;->b:D

    iput-wide p1, p0, Lcom/callerid/block/util/b0;->a:D

    iput-wide p3, p0, Lcom/callerid/block/util/b0;->b:D

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8

    iget-wide v0, p0, Lcom/callerid/block/util/b0;->a:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide v4, 0x4005bf0a8b145769L    # Math.E

    neg-float v6, p1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/callerid/block/util/b0;->b:D

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method
