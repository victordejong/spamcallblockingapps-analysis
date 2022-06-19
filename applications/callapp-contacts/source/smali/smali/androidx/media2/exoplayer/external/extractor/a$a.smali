.class public final Landroidx/media2/exoplayer/external/extractor/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/extractor/a$d;

.field final b:J

.field final c:J

.field final d:J

.field final e:J

.field final f:J

.field private final g:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/a$d;JJJJJJ)V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->a:Landroidx/media2/exoplayer/external/extractor/a$d;

    .line 539
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->g:J

    .line 540
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->b:J

    .line 541
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->c:J

    .line 542
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->d:J

    .line 543
    iput-wide p10, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->e:J

    .line 544
    iput-wide p12, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->f:J

    return-void
.end method


# virtual methods
.method public final a(J)Landroidx/media2/exoplayer/external/extractor/o$a;
    .locals 13

    .line 554
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->a:Landroidx/media2/exoplayer/external/extractor/a$d;

    .line 556
    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/a$d;->a(J)J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->b:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->c:J

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->d:J

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->e:J

    iget-wide v11, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->f:J

    .line 555
    invoke-static/range {v1 .. v12}, Landroidx/media2/exoplayer/external/extractor/a$c;->a(JJJJJJ)J

    move-result-wide v0

    .line 562
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/o$a;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v3, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object v2
.end method

.method public final b()J
    .locals 2

    .line 567
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/a$a;->g:J

    return-wide v0
.end method

.method public final j_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
