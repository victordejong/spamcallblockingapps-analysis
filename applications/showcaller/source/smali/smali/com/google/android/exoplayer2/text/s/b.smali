.class public final Lcom/google/android/exoplayer2/text/s/b;
.super Lcom/google/android/exoplayer2/text/c;
.source "Mp4WebvttDecoder.java"


# instance fields
.field private final o:Lcom/google/android/exoplayer2/util/v;

.field private final p:Lcom/google/android/exoplayer2/text/s/e$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Mp4WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/s/b;->o:Lcom/google/android/exoplayer2/util/v;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/text/s/e$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/s/e$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/s/b;->p:Lcom/google/android/exoplayer2/text/s/e$b;

    return-void
.end method

.method private static C(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/text/s/e$b;I)Lcom/google/android/exoplayer2/text/b;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/s/e$b;->g()V

    :cond_0
    :goto_0
    if-lez p2, :cond_3

    const/16 v0, 0x8

    if-lt p2, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v2

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v1, v0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v3

    invoke-static {v0, v3, v1}, Lcom/google/android/exoplayer2/util/h0;->w([BII)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    sub-int/2addr p2, v1

    const v1, 0x73747467

    if-ne v2, v1, :cond_1

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/text/s/f;->j(Ljava/lang/String;Lcom/google/android/exoplayer2/text/s/e$b;)V

    goto :goto_0

    :cond_1
    const v1, 0x7061796c

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/text/s/f;->k(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/s/e$b;Ljava/util/List;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p1, "Incomplete vtt cue box header found."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/s/e$b;->a()Lcom/google/android/exoplayer2/text/s/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected z([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/s/b;->o:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/v;->K([BI)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/b;->o:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result p2

    if-lez p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/b;->o:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_1

    .line 5
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/b;->o:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result p2

    .line 6
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/s/b;->o:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result p3

    const v0, 0x76747463

    if-ne p3, v0, :cond_0

    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/s/b;->o:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/s/b;->p:Lcom/google/android/exoplayer2/text/s/e$b;

    add-int/lit8 p2, p2, -0x8

    invoke-static {p3, v0, p2}, Lcom/google/android/exoplayer2/text/s/b;->C(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/text/s/e$b;I)Lcom/google/android/exoplayer2/text/b;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/s/b;->o:Lcom/google/android/exoplayer2/util/v;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p2, Lcom/google/android/exoplayer2/text/s/c;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/s/c;-><init>(Ljava/util/List;)V

    return-object p2
.end method
