.class public final Landroidx/media2/exoplayer/external/trackselection/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Landroidx/media2/exoplayer/external/RendererConfiguration;

.field public final c:Landroidx/media2/exoplayer/external/trackselection/f;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/e;Ljava/lang/Object;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/h;->b:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/f;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/trackselection/f;-><init>([Landroidx/media2/exoplayer/external/trackselection/e;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    .line 64
    iput-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/h;->d:Ljava/lang/Object;

    .line 65
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/h;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/h;->b:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/trackselection/h;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 107
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/h;->b:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroidx/media2/exoplayer/external/trackselection/h;->b:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    .line 1055
    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object v1, v1, p2

    .line 108
    iget-object p1, p1, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    .line 2055
    iget-object p1, p1, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object p1, p1, p2

    .line 108
    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
