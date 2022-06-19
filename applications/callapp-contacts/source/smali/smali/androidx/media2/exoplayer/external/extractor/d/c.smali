.class public final Landroidx/media2/exoplayer/external/extractor/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;


# instance fields
.field private b:Landroidx/media2/exoplayer/external/extractor/i;

.field private c:Landroidx/media2/exoplayer/external/extractor/d/i;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/d/d;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/d/c;->a:Landroidx/media2/exoplayer/external/extractor/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 41
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/d/c;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/d/c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 94
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/d/f;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/d/f;-><init>()V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/d/f;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/d/f;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/d/f;->i:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 100
    new-instance v2, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    .line 101
    iget-object v4, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {p1, v4, v3, v0}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 2116
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 103
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/d/b;->a(Landroidx/media2/exoplayer/external/util/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/d/b;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/d/b;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    goto :goto_0

    .line 3116
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 105
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/d/k;->a(Landroidx/media2/exoplayer/external/util/p;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/d/k;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/d/k;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    goto :goto_0

    .line 4116
    :cond_2
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 107
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/d/h;->a(Landroidx/media2/exoplayer/external/util/p;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/d/h;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/d/h;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    if-nez v0, :cond_1

    .line 79
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d/c;->b(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Failed to determine bitstream type"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->b:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v0

    .line 86
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->b:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    .line 87
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->b:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-virtual {v3, v4, v0}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/q;)V

    .line 88
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->d:Z

    .line 90
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    .line 1114
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->c:I

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    if-eq v3, v2, :cond_4

    if-ne v3, v4, :cond_3

    .line 1122
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I

    move-result p1

    return p1

    .line 1125
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1118
    :cond_4
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->b:J

    long-to-int p2, v2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 1119
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->c:I

    return v1

    .line 1116
    :cond_5
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result p1

    return p1
.end method

.method public final a(JJ)V
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(JJ)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 0

    .line 60
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/c;->b:Landroidx/media2/exoplayer/external/extractor/i;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d/c;->b(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
