.class Lcom/androidplot/util/PixelUtils$InternalDimension;
.super Ljava/lang/Object;
.source "PixelUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/util/PixelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalDimension"
.end annotation


# instance fields
.field unit:I

.field value:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/androidplot/util/PixelUtils$InternalDimension;->value:F

    .line 132
    iput p2, p0, Lcom/androidplot/util/PixelUtils$InternalDimension;->unit:I

    return-void
.end method
