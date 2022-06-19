.class final Lcom/google/android/exoplayer2/extractor/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/g/a;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/g/a;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/g/a;Lcom/google/android/exoplayer2/extractor/g/a$1;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/g/a$a;-><init>(Lcom/google/android/exoplayer2/extractor/g/a;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 10

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    .line 1031
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/g/a;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    .line 250
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/g/h;->b(J)J

    move-result-wide v0

    .line 251
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    .line 2031
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/g/a;->a:J

    .line 252
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    .line 3031
    iget-wide v4, v4, Lcom/google/android/exoplayer2/extractor/g/a;->b:J

    .line 253
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    .line 4031
    iget-wide v6, v6, Lcom/google/android/exoplayer2/extractor/g/a;->a:J

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    .line 253
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    .line 5031
    iget-wide v4, v4, Lcom/google/android/exoplayer2/extractor/g/a;->d:J

    .line 253
    div-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    .line 6031
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/g/a;->a:J

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    .line 7031
    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/g/a;->b:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    .line 256
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/af;->a(JJJ)J

    move-result-wide v0

    .line 257
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
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    .line 8031
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/g/a;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    .line 262
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/g/a$a;->a:Lcom/google/android/exoplayer2/extractor/g/a;

    .line 9031
    iget-wide v1, v1, Lcom/google/android/exoplayer2/extractor/g/a;->d:J

    .line 262
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/g/h;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
