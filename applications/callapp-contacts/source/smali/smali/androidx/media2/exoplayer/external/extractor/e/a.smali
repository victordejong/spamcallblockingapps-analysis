.class public final Landroidx/media2/exoplayer/external/extractor/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;


# instance fields
.field private final b:Landroidx/media2/exoplayer/external/extractor/e/c;

.field private final c:Landroidx/media2/exoplayer/external/util/p;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/e/b;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/e/a;->a:Landroidx/media2/exoplayer/external/extractor/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/c;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/e/c;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->b:Landroidx/media2/exoplayer/external/extractor/e/c;

    .line 64
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->c:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 46
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/a;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/e/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 135
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/h;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 141
    :cond_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 142
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 144
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->d:Z

    if-nez p1, :cond_1

    .line 146
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->b:Landroidx/media2/exoplayer/external/extractor/e/c;

    const-wide/16 v1, 0x0

    .line 1110
    iput-wide v1, p1, Landroidx/media2/exoplayer/external/extractor/e/c;->a:J

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->d:Z

    .line 151
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->b:Landroidx/media2/exoplayer/external/extractor/e/c;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/extractor/e/c;->a(Landroidx/media2/exoplayer/external/util/p;)V

    return v0
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->d:Z

    .line 124
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->b:Landroidx/media2/exoplayer/external/extractor/e/c;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/e/c;->a()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 4

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/a;->b:Landroidx/media2/exoplayer/external/extractor/e/c;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/ah$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/e/c;->a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V

    .line 117
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    .line 118
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/o$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 72
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 75
    :goto_0
    iget-object v4, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {p1, v4, v2, v1}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 76
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 77
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v4

    const v5, 0x494433

    if-ne v4, v5, :cond_0

    const/4 v4, 0x3

    .line 80
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 81
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->m()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 83
    invoke-interface {p1, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 86
    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 91
    :goto_2
    iget-object v5, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v6, 0x6

    invoke-interface {p1, v5, v2, v6}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 92
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 93
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_2

    .line 96
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_1

    return v2

    .line 100
    :cond_1
    invoke-interface {p1, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x4

    if-lt v1, v6, :cond_3

    return v5

    .line 105
    :cond_3
    iget-object v5, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v5}, Landroidx/media2/exoplayer/external/audio/a;->a([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, -0x6

    .line 109
    invoke-interface {p1, v5}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    goto :goto_2
.end method
