.class public final Lqr$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lqr$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lgs;

.field public final b:F

.field public c:J

.field public d:[[J


# direct methods
.method public constructor <init>(Lgs;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqr$c;->a:Lgs;

    iput p2, p0, Lqr$c;->b:F

    return-void
.end method


# virtual methods
.method public a()J
    .locals 11

    iget-object v0, p0, Lqr$c;->a:Lgs;

    invoke-interface {v0}, Lgs;->getBitrateEstimate()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lqr$c;->b:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    iget-wide v2, p0, Lqr$c;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lqr$c;->d:[[J

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lqr$c;->d:[[J

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

    aget-object v5, v4, v5

    aget-object v3, v4, v3

    aget-wide v7, v5, v6

    sub-long/2addr v0, v7

    long-to-float v0, v0

    aget-wide v7, v3, v6

    aget-wide v9, v5, v6

    sub-long/2addr v7, v9

    long-to-float v1, v7

    div-float/2addr v0, v1

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

.method public b([[J)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->a(Z)V

    iput-object p1, p0, Lqr$c;->d:[[J

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lqr$c;->c:J

    return-void
.end method
