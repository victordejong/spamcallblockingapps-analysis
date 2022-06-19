.class public final Lcom/google/android/exoplayer2/text/i/g;
.super Lcom/google/android/exoplayer2/text/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Lcom/google/android/exoplayer2/text/i/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 48
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/g;->a:Lcom/google/android/exoplayer2/util/u;

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/text/i/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/i/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/g;->b:Lcom/google/android/exoplayer2/text/i/a;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ne v2, v1, :cond_3

    .line 1144
    iget v3, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 100
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v2
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;)V
    .locals 1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public final a([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 56
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/i/g;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/i/g;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/i/h;->a(Lcom/google/android/exoplayer2/util/u;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/i/g;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/i/g;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-static {p3}, Lcom/google/android/exoplayer2/text/i/g;->a(Lcom/google/android/exoplayer2/util/u;)I

    move-result p3

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 71
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/i/g;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-static {p3}, Lcom/google/android/exoplayer2/text/i/g;->b(Lcom/google/android/exoplayer2/util/u;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 73
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 76
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/i/g;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    .line 77
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/i/g;->b:Lcom/google/android/exoplayer2/text/i/a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/g;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/text/i/a;->a(Lcom/google/android/exoplayer2/util/u;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 74
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 80
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/i/g;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/text/i/f;->a(Lcom/google/android/exoplayer2/util/u;Ljava/util/List;)Lcom/google/android/exoplayer2/text/i/e;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 82
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/text/i/i;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/i/i;-><init>(Ljava/util/List;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 63
    new-instance p2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
