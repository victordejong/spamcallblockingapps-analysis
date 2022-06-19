.class public final Lcom/google/android/exoplayer2/source/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/Format;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move v1, p1

    .line 60
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/o;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/google/android/exoplayer2/source/o;->a:I

    .line 90
    iput p2, p0, Lcom/google/android/exoplayer2/source/o;->b:I

    .line 91
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/o;->c:Lcom/google/android/exoplayer2/Format;

    .line 92
    iput p4, p0, Lcom/google/android/exoplayer2/source/o;->d:I

    .line 93
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/o;->e:Ljava/lang/Object;

    .line 94
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/o;->f:J

    .line 95
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/o;->g:J

    return-void
.end method
