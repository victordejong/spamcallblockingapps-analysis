.class public final Landroidx/media2/exoplayer/external/extractor/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroidx/media2/exoplayer/external/extractor/o$a;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/o$b;->a:J

    .line 54
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 55
    sget-object p2, Landroidx/media2/exoplayer/external/extractor/p;->a:Landroidx/media2/exoplayer/external/extractor/p;

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {p2, v0, v1, p3, p4}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/o$b;->b:Landroidx/media2/exoplayer/external/extractor/o$a;

    return-void
.end method


# virtual methods
.method public final a(J)Landroidx/media2/exoplayer/external/extractor/o$a;
    .locals 0

    .line 70
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/o$b;->b:Landroidx/media2/exoplayer/external/extractor/o$a;

    return-object p1
.end method

.method public final b()J
    .locals 2

    .line 65
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/o$b;->a:J

    return-wide v0
.end method

.method public final j_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
