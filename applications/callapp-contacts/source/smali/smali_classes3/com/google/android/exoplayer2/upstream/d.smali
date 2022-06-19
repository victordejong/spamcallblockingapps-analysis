.class public abstract Lcom/google/android/exoplayer2/upstream/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h;


# instance fields
.field private final a:Z

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/google/android/exoplayer2/upstream/j;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/d;->a:Z

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/d;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/d;->d:Lcom/google/android/exoplayer2/upstream/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/j;

    const/4 v1, 0x0

    .line 89
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/d;->c:I

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/d;->b:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/v;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/d;->a:Z

    .line 92
    invoke-interface {v2, v0, v3, p1}, Lcom/google/android/exoplayer2/upstream/v;->a(Lcom/google/android/exoplayer2/upstream/j;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    .line 51
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/d;->c:I

    :cond_0
    return-void
.end method

.method public synthetic b()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/h$-CC;->$default$b(Lcom/google/android/exoplayer2/upstream/h;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/google/android/exoplayer2/upstream/j;)V
    .locals 3

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/d;->d:Lcom/google/android/exoplayer2/upstream/j;

    const/4 v0, 0x0

    .line 76
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/d;->c:I

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/v;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/d;->a:Z

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer2/upstream/v;->a(Lcom/google/android/exoplayer2/upstream/j;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 2

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/d;->c:I

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/d;->d:Lcom/google/android/exoplayer2/upstream/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/j;

    const/4 v1, 0x0

    .line 99
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/d;->c:I

    if-ge v1, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/v;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/d;->a:Z

    invoke-interface {v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/v;->b(Lcom/google/android/exoplayer2/upstream/j;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/d;->d:Lcom/google/android/exoplayer2/upstream/j;

    return-void
.end method
