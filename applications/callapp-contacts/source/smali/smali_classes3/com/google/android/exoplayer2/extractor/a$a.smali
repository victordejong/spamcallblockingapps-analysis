.class public final Lcom/google/android/exoplayer2/extractor/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/extractor/a$d;

.field final b:J

.field final c:J

.field final d:J

.field final e:J

.field final f:J

.field private final g:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/a$d;JJJJJJ)V
    .locals 0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a$a;->a:Lcom/google/android/exoplayer2/extractor/a$d;

    .line 500
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/a$a;->g:J

    .line 501
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/a$a;->b:J

    .line 502
    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/a$a;->c:J

    .line 503
    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/a$a;->d:J

    .line 504
    iput-wide p10, p0, Lcom/google/android/exoplayer2/extractor/a$a;->e:J

    .line 505
    iput-wide p12, p0, Lcom/google/android/exoplayer2/extractor/a$a;->f:J

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 13

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->a:Lcom/google/android/exoplayer2/extractor/a$d;

    .line 517
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a$d;->timeUsToTargetTime(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/a$a;->b:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/a$a;->c:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/a$a;->d:J

    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/a$a;->e:J

    iget-wide v11, p0, Lcom/google/android/exoplayer2/extractor/a$a;->f:J

    .line 516
    invoke-static/range {v1 .. v12}, Lcom/google/android/exoplayer2/extractor/a$c;->a(JJJJJJ)J

    move-result-wide v0

    .line 523
    new-instance v2, Lcom/google/android/exoplayer2/extractor/v$a;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;)V

    return-object v2
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    .line 528
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$a;->g:J

    return-wide v0
.end method
