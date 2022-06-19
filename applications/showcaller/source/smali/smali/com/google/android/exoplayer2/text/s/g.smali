.class public final Lcom/google/android/exoplayer2/text/s/g;
.super Lcom/google/android/exoplayer2/text/c;
.source "WebvttDecoder.java"


# instance fields
.field private final o:Lcom/google/android/exoplayer2/text/s/f;

.field private final p:Lcom/google/android/exoplayer2/util/v;

.field private final q:Lcom/google/android/exoplayer2/text/s/e$b;

.field private final r:Lcom/google/android/exoplayer2/text/s/a;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/s/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/text/s/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/s/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/s/g;->o:Lcom/google/android/exoplayer2/text/s/f;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/s/g;->p:Lcom/google/android/exoplayer2/util/v;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/text/s/e$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/s/e$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/s/g;->q:Lcom/google/android/exoplayer2/text/s/e$b;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/text/s/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/s/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/s/g;->r:Lcom/google/android/exoplayer2/text/s/a;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/s/g;->s:Ljava/util/List;

    return-void
.end method

.method private static C(Lcom/google/android/exoplayer2/util/v;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ne v2, v1, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->m()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    return v2
.end method

.method private static D(Lcom/google/android/exoplayer2/util/v;)V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected z([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/s/g;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/v;->K([BI)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/s/g;->q:Lcom/google/android/exoplayer2/text/s/e$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/s/e$b;->g()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/s/g;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/s/g;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/s/h;->e(Lcom/google/android/exoplayer2/util/v;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/s/g;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/g;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/s/g;->C(Lcom/google/android/exoplayer2/util/v;)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 8
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/g;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/s/g;->D(Lcom/google/android/exoplayer2/util/v;)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/g;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/v;->m()Ljava/lang/String;

    .line 11
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/g;->s:Ljava/util/List;

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/s/g;->r:Lcom/google/android/exoplayer2/text/s/a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/s/g;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/text/s/a;->d(Lcom/google/android/exoplayer2/util/v;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 12
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 13
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/g;->o:Lcom/google/android/exoplayer2/text/s/f;

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/s/g;->p:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/s/g;->q:Lcom/google/android/exoplayer2/text/s/e$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/s/g;->s:Ljava/util/List;

    invoke-virtual {p2, p3, v0, v1}, Lcom/google/android/exoplayer2/text/s/f;->h(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/text/s/e$b;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/g;->q:Lcom/google/android/exoplayer2/text/s/e$b;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/s/e$b;->a()Lcom/google/android/exoplayer2/text/s/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/s/g;->q:Lcom/google/android/exoplayer2/text/s/e$b;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/s/e$b;->g()V

    goto :goto_1

    .line 16
    :cond_5
    new-instance p2, Lcom/google/android/exoplayer2/text/s/i;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/s/i;-><init>(Ljava/util/List;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
