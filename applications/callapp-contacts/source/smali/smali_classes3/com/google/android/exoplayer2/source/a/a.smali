.class public abstract Lcom/google/android/exoplayer2/source/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/j;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/Format;

.field public final e:I

.field public final f:Ljava/lang/Object;

.field public final g:J

.field public final h:J

.field protected final i:Lcom/google/android/exoplayer2/upstream/t;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/j;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/upstream/t;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Lcom/google/android/exoplayer2/upstream/h;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/a;->i:Lcom/google/android/exoplayer2/upstream/t;

    .line 92
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/j;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/a;->b:Lcom/google/android/exoplayer2/upstream/j;

    .line 93
    iput p3, p0, Lcom/google/android/exoplayer2/source/a/a;->c:I

    .line 94
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/a/a;->d:Lcom/google/android/exoplayer2/Format;

    .line 95
    iput p5, p0, Lcom/google/android/exoplayer2/source/a/a;->e:I

    .line 96
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/a/a;->f:Ljava/lang/Object;

    .line 97
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/a/a;->g:J

    .line 98
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/a/a;->h:J

    .line 99
    invoke-static {}, Lcom/google/android/exoplayer2/source/l;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/a/a;->a:J

    return-void
.end method
