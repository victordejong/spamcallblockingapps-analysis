.class public final synthetic Lcom/google/android/exoplayer2/audio/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/exoplayer2/audio/l$a;

.field public final synthetic e:I

.field public final synthetic f:J

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/l$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/b;->d:Lcom/google/android/exoplayer2/audio/l$a;

    iput p2, p0, Lcom/google/android/exoplayer2/audio/b;->e:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/b;->f:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/b;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b;->d:Lcom/google/android/exoplayer2/audio/l$a;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/b;->e:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/b;->f:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/b;->g:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/l$a;->j(IJJ)V

    return-void
.end method
