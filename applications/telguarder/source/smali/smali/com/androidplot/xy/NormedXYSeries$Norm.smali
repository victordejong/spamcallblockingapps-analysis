.class public Lcom/androidplot/xy/NormedXYSeries$Norm;
.super Ljava/lang/Object;
.source "NormedXYSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/NormedXYSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Norm"
.end annotation


# instance fields
.field final minMax:Lcom/androidplot/Region;

.field final offset:D

.field final useOffsetCompression:Z


# direct methods
.method public constructor <init>(Lcom/androidplot/Region;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/androidplot/xy/NormedXYSeries$Norm;-><init>(Lcom/androidplot/Region;DZ)V

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/Region;DZ)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    .line 44
    iput-wide p2, p0, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    .line 45
    iput-boolean p4, p0, Lcom/androidplot/xy/NormedXYSeries$Norm;->useOffsetCompression:Z

    if-eqz p4, :cond_1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double p1, p2, v0

    if-lez p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p2, v0

    if-gez p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "When useOffsetCompression is true, offset must be > -1 and < 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
