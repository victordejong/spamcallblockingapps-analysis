.class final Landroidx/media2/exoplayer/external/trackselection/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:[[J

.field private final b:Landroidx/media2/exoplayer/external/upstream/c;

.field private final c:F

.field private final d:J


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/upstream/c;FJ)V
    .locals 0

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/a$b;->b:Landroidx/media2/exoplayer/external/upstream/c;

    .line 621
    iput p2, p0, Landroidx/media2/exoplayer/external/trackselection/a$b;->c:F

    .line 622
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/trackselection/a$b;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 11

    .line 627
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/a$b;->b:Landroidx/media2/exoplayer/external/upstream/c;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/c;->a()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/a$b;->c:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 628
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/trackselection/a$b;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 629
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/a$b;->a:[[J

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 633
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/trackselection/a$b;->a:[[J

    array-length v5, v4

    sub-int/2addr v5, v2

    const/4 v6, 0x0

    if-ge v3, v5, :cond_1

    aget-object v5, v4, v3

    aget-wide v7, v5, v6

    cmp-long v5, v7, v0

    if-gez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v3, -0x1

    .line 637
    aget-object v5, v4, v5

    .line 638
    aget-object v3, v4, v3

    .line 639
    aget-wide v7, v5, v6

    sub-long/2addr v0, v7

    long-to-float v0, v0

    aget-wide v7, v3, v6

    aget-wide v9, v5, v6

    sub-long/2addr v7, v9

    long-to-float v1, v7

    div-float/2addr v0, v1

    .line 641
    aget-wide v6, v5, v2

    aget-wide v8, v3, v2

    aget-wide v1, v5, v2

    sub-long/2addr v8, v1

    long-to-float v1, v8

    mul-float v0, v0, v1

    float-to-long v0, v0

    add-long/2addr v6, v0

    return-wide v6
.end method
