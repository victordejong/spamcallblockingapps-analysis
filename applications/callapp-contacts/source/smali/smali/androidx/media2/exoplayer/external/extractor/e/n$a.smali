.class final Landroidx/media2/exoplayer/external/extractor/e/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:[B


# instance fields
.field b:Z

.field public c:I

.field public d:I

.field public e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 271
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->e:[B

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 4

    .line 326
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    .line 330
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->e:[B

    array-length v1, v0

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->c:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_1

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 331
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->e:[B

    .line 333
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->e:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->c:I

    return-void
.end method
