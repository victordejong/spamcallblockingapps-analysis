.class public abstract Lcom/google/android/exoplayer2/source/e0/a;
.super Ljava/lang/Object;
.source "BaseMediaChunkIterator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/e0/e;


# instance fields
.field private final b:J

.field private final c:J

.field private d:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/e0/a;->b:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/e0/a;->c:J

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/e0/a;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/e0/a;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/e0/a;->d:J

    return-void
.end method
