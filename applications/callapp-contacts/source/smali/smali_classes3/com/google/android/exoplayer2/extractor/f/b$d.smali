.class final Lcom/google/android/exoplayer2/extractor/f/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/util/u;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f/a$b;Lcom/google/android/exoplayer2/Format;)V
    .locals 3

    .line 1746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1747
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/b$d;->c:Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0xc

    .line 1748
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1749
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v0

    .line 1750
    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1751
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v1, p2}, Lcom/google/android/exoplayer2/util/af;->c(II)I

    move-result p2

    if-eqz v0, :cond_0

    .line 1752
    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    .line 1756
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 1765
    :cond_2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$d;->a:I

    .line 1766
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/b$d;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1771
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$d;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1776
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$d;->a:I

    return v0
.end method

.method public final c()I
    .locals 2

    .line 1781
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$d;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v0

    :cond_0
    return v0
.end method
