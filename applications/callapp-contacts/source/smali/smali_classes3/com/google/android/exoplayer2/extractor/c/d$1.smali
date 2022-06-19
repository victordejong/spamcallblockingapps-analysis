.class final Lcom/google/android/exoplayer2/extractor/c/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/extractor/c/d;->a(Lcom/google/android/exoplayer2/extractor/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/v;

.field final synthetic b:Lcom/google/android/exoplayer2/extractor/c/d;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/extractor/c/d;Lcom/google/android/exoplayer2/extractor/v;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/d$1;->b:Lcom/google/android/exoplayer2/extractor/c/d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/c/d$1;->a:Lcom/google/android/exoplayer2/extractor/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/d$1;->a:Lcom/google/android/exoplayer2/extractor/v;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/v;->a(J)Lcom/google/android/exoplayer2/extractor/v$a;

    move-result-object p1

    .line 69
    new-instance p2, Lcom/google/android/exoplayer2/extractor/v$a;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/w;

    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/v$a;->a:Lcom/google/android/exoplayer2/extractor/w;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/extractor/w;->b:J

    iget-object v3, p1, Lcom/google/android/exoplayer2/extractor/v$a;->a:Lcom/google/android/exoplayer2/extractor/w;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/w;->c:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/c/d$1;->b:Lcom/google/android/exoplayer2/extractor/c/d;

    .line 70
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/c/d;->a(Lcom/google/android/exoplayer2/extractor/c/d;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    new-instance v1, Lcom/google/android/exoplayer2/extractor/w;

    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/v$a;->b:Lcom/google/android/exoplayer2/extractor/w;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/w;->b:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/v$a;->b:Lcom/google/android/exoplayer2/extractor/w;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/extractor/w;->c:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/d$1;->b:Lcom/google/android/exoplayer2/extractor/c/d;

    .line 71
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/c/d;->a(Lcom/google/android/exoplayer2/extractor/c/d;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/w;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>(Lcom/google/android/exoplayer2/extractor/w;Lcom/google/android/exoplayer2/extractor/w;)V

    return-object p2
.end method

.method public final a()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/d$1;->a:Lcom/google/android/exoplayer2/extractor/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/v;->a()Z

    move-result v0

    return v0
.end method

.method public final b()J
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/d$1;->a:Lcom/google/android/exoplayer2/extractor/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/v;->b()J

    move-result-wide v0

    return-wide v0
.end method
