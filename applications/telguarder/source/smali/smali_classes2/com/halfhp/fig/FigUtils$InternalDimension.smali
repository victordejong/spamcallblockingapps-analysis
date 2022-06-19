.class Lcom/halfhp/fig/FigUtils$InternalDimension;
.super Ljava/lang/Object;
.source "FigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/halfhp/fig/FigUtils;
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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/halfhp/fig/FigUtils$InternalDimension;->value:F

    .line 43
    iput p2, p0, Lcom/halfhp/fig/FigUtils$InternalDimension;->unit:I

    return-void
.end method
