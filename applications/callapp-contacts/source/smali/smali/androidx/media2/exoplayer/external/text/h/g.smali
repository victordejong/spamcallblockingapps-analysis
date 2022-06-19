.class public final Landroidx/media2/exoplayer/external/text/h/g;
.super Landroidx/media2/exoplayer/external/text/b;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/text/h/f;

.field private final b:Landroidx/media2/exoplayer/external/util/p;

.field private final c:Landroidx/media2/exoplayer/external/text/h/e$a;

.field private final d:Landroidx/media2/exoplayer/external/text/h/a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 56
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/b;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroidx/media2/exoplayer/external/text/h/f;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/h/f;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/g;->a:Landroidx/media2/exoplayer/external/text/h/f;

    .line 58
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/g;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 59
    new-instance v0, Landroidx/media2/exoplayer/external/text/h/e$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/h/e$a;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/g;->c:Landroidx/media2/exoplayer/external/text/h/e$a;

    .line 60
    new-instance v0, Landroidx/media2/exoplayer/external/text/h/a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/h/a;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/g;->d:Landroidx/media2/exoplayer/external/text/h/a;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/g;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ne v2, v1, :cond_3

    .line 1142
    iget v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 112
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return v2
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 1

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public final a([BIZ)Landroidx/media2/exoplayer/external/text/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 67
    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/h/g;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p3, p1, p2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 69
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/h/g;->c:Landroidx/media2/exoplayer/external/text/h/e$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/h/e$a;->a()V

    .line 70
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/h/g;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 74
    :try_start_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/h/g;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/h/h;->a(Landroidx/media2/exoplayer/external/util/p;)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/h/g;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/g;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/text/h/g;->a(Landroidx/media2/exoplayer/external/util/p;)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 84
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/g;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/text/h/g;->b(Landroidx/media2/exoplayer/external/util/p;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 89
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/g;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    .line 90
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/g;->e:Ljava/util/List;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/h/g;->d:Landroidx/media2/exoplayer/external/text/h/a;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/g;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p3, v0}, Landroidx/media2/exoplayer/external/text/h/a;->a(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 87
    :cond_3
    new-instance p1, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 92
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/g;->a:Landroidx/media2/exoplayer/external/text/h/f;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/h/g;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/g;->c:Landroidx/media2/exoplayer/external/text/h/e$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/h/g;->e:Ljava/util/List;

    invoke-virtual {p2, p3, v0, v1}, Landroidx/media2/exoplayer/external/text/h/f;->a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/text/h/e$a;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 93
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/g;->c:Landroidx/media2/exoplayer/external/text/h/e$a;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/text/h/e$a;->b()Landroidx/media2/exoplayer/external/text/h/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/g;->c:Landroidx/media2/exoplayer/external/text/h/e$a;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/text/h/e$a;->a()V

    goto :goto_0

    .line 98
    :cond_5
    new-instance p2, Landroidx/media2/exoplayer/external/text/h/i;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/text/h/i;-><init>(Ljava/util/List;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 76
    new-instance p2, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
