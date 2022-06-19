.class public final Landroidx/media2/exoplayer/external/upstream/p;
.super Landroidx/media2/exoplayer/external/upstream/HttpDataSource$a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/media2/exoplayer/external/upstream/w;

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/upstream/p;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/w;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 81
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/p;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/w;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 6

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 63
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/p;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/w;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/w;IIZ)V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$a;-><init>()V

    .line 105
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/p;->a:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/p;->b:Landroidx/media2/exoplayer/external/upstream/w;

    .line 107
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/p;->c:I

    .line 108
    iput p4, p0, Landroidx/media2/exoplayer/external/upstream/p;->d:I

    .line 109
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/upstream/p;->e:Z

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;)Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
    .locals 7

    .line 1115
    new-instance v6, Landroidx/media2/exoplayer/external/upstream/o;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/p;->a:Ljava/lang/String;

    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/p;->c:I

    iget v3, p0, Landroidx/media2/exoplayer/external/upstream/p;->d:I

    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/upstream/p;->e:Z

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/o;-><init>(Ljava/lang/String;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$b;)V

    .line 1122
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/p;->b:Landroidx/media2/exoplayer/external/upstream/w;

    if-eqz p1, :cond_0

    .line 1123
    invoke-virtual {v6, p1}, Landroidx/media2/exoplayer/external/upstream/o;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    :cond_0
    return-object v6
.end method
