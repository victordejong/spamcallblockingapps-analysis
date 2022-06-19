.class public abstract Landroidx/media2/exoplayer/external/source/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/t;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/t$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/media2/exoplayer/external/source/t$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/media2/exoplayer/external/source/u$a;

.field private d:Landroid/os/Looper;

.field private e:Landroidx/media2/exoplayer/external/al;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->a:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->b:Ljava/util/HashSet;

    .line 52
    new-instance v0, Landroidx/media2/exoplayer/external/source/u$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/u$a;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->c:Landroidx/media2/exoplayer/external/source/u$a;

    return-void
.end method


# virtual methods
.method protected final a(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;
    .locals 3

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->c:Landroidx/media2/exoplayer/external/source/u$a;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/source/u$a;->a(ILandroidx/media2/exoplayer/external/source/t$a;J)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;
    .locals 4

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->c:Landroidx/media2/exoplayer/external/source/u$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(ILandroidx/media2/exoplayer/external/source/t$a;J)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/u;)V
    .locals 2

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->c:Landroidx/media2/exoplayer/external/source/u$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1355
    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 1356
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/source/u$a$a;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/source/u$a$a;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/u;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Landroidx/media2/exoplayer/external/al;)V
    .locals 2

    .line 85
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/b;->e:Landroidx/media2/exoplayer/external/al;

    .line 86
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/t$b;

    .line 87
    invoke-interface {v1, p0, p1}, Landroidx/media2/exoplayer/external/source/t$b;->a(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t$b;)V
    .locals 2

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->d:Landroid/os/Looper;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 170
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/b;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/b;->a()V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t$b;Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 3

    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 153
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/b;->d:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 154
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/b;->e:Landroidx/media2/exoplayer/external/al;

    .line 155
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/b;->d:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 157
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->d:Landroid/os/Looper;

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/b;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/b;->a(Landroidx/media2/exoplayer/external/source/t$b;)V

    .line 162
    invoke-interface {p1, p0, v1}, Landroidx/media2/exoplayer/external/source/t$b;->a(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V

    :cond_3
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/u;)V
    .locals 4

    .line 146
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->c:Landroidx/media2/exoplayer/external/source/u$a;

    .line 1365
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/u$a$a;

    .line 1366
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/u$a$a;->b:Landroidx/media2/exoplayer/external/source/u;

    if-ne v3, p1, :cond_0

    .line 1367
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract a(Landroidx/media2/exoplayer/external/upstream/w;)V
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/source/t$b;)V
    .locals 2

    .line 178
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 179
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/b;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 180
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/b;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/b;->b()V

    :cond_0
    return-void
.end method

.method protected abstract c()V
.end method

.method public final c(Landroidx/media2/exoplayer/external/source/t$b;)V
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/b;->d:Landroid/os/Looper;

    .line 190
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/b;->e:Landroidx/media2/exoplayer/external/al;

    .line 191
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/b;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 192
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/b;->c()V

    return-void

    .line 194
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/b;->b(Landroidx/media2/exoplayer/external/source/t$b;)V

    return-void
.end method

.method protected final d()Z
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
