.class final Lcom/google/android/exoplayer2/extractor/d/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:[B

.field b:Z

.field c:I

.field d:J

.field e:I

.field f:I

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 1927
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d$c;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/d/d$b;)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 1968
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/d$c;->c:I

    if-lez v0, :cond_0

    .line 1969
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->X:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/d$c;->d:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/d/d$c;->e:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/d/d$c;->f:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d/d$c;->g:I

    iget-object v7, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->j:Lcom/google/android/exoplayer2/extractor/x$a;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    const/4 p1, 0x0

    .line 1971
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/d/d$c;->c:I

    :cond_0
    return-void
.end method
