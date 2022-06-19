.class public final Lcom/google/android/exoplayer2/extractor/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/j;


# instance fields
.field private final b:J

.field private final c:Lcom/google/android/exoplayer2/extractor/j;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/extractor/j;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/c/d;->b:J

    .line 39
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/c/d;->c:Lcom/google/android/exoplayer2/extractor/j;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/c/d;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/d;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a(II)Lcom/google/android/exoplayer2/extractor/x;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/d;->c:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/d;->c:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/v;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/d;->c:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/c/d$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/extractor/c/d$1;-><init>(Lcom/google/android/exoplayer2/extractor/c/d;Lcom/google/android/exoplayer2/extractor/v;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    return-void
.end method
