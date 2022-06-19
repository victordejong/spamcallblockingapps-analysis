.class public abstract Landroidx/media2/exoplayer/external/upstream/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/f;


# instance fields
.field private final a:Z

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/upstream/w;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroidx/media2/exoplayer/external/upstream/h;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/upstream/d;->a:Z

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/d;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/d;->d:Landroidx/media2/exoplayer/external/upstream/h;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 93
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/d;->c:I

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/d;->b:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/w;

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/d;->a:Z

    .line 96
    invoke-interface {v1, v2, p1}, Landroidx/media2/exoplayer/external/upstream/w;->a(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/d;->c:I

    :cond_0
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1

    .line 1105
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroidx/media2/exoplayer/external/upstream/h;)V
    .locals 2

    .line 79
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/d;->d:Landroidx/media2/exoplayer/external/upstream/h;

    const/4 p1, 0x0

    .line 80
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/d;->c:I

    if-ge p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/w;

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/d;->a:Z

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/w;->a(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 2

    const/4 v0, 0x0

    .line 68
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/d;->c:I

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 3

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/d;->d:Landroidx/media2/exoplayer/external/upstream/h;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 103
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/d;->c:I

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/w;

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/d;->a:Z

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/upstream/w;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/d;->d:Landroidx/media2/exoplayer/external/upstream/h;

    return-void
.end method
