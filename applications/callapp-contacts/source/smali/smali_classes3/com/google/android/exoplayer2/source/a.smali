.class public abstract Lcom/google/android/exoplayer2/source/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/r;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/r$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/exoplayer2/source/r$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/source/s$a;

.field private final d:Lcom/google/android/exoplayer2/drm/c$a;

.field private e:Landroid/os/Looper;

.field private f:Lcom/google/android/exoplayer2/al;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/source/s$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/s$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/drm/c$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/c$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    return-void
.end method


# virtual methods
.method protected final a(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/s$a;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/s$a;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/s$a;->a(ILcom/google/android/exoplayer2/source/r$a;J)Lcom/google/android/exoplayer2/source/s$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/s$a;
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/s$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/exoplayer2/source/s$a;->a(ILcom/google/android/exoplayer2/source/r$a;J)Lcom/google/android/exoplayer2/source/s$a;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/c;)V
    .locals 1

    .line 177
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/c$a;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/c;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/s;)V
    .locals 1

    .line 165
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/s$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/s$a;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/al;)V
    .locals 2

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->f:Lcom/google/android/exoplayer2/al;

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/r$b;

    .line 84
    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/source/r$b;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r$b;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r$b;Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 3

    .line 190
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->f:Lcom/google/android/exoplayer2/al;

    .line 193
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 195
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/a;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->a(Lcom/google/android/exoplayer2/source/r$b;)V

    .line 200
    invoke-interface {p1, p0, v1}, Lcom/google/android/exoplayer2/source/r$b;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/s;)V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 1207
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/s$a$a;

    .line 1208
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/s$a$a;->b:Lcom/google/android/exoplayer2/source/s;

    if-ne v3, p1, :cond_0

    .line 1209
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/upstream/v;)V
.end method

.method protected final b(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/drm/c$a;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/c$a;->a(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/drm/c$a;

    move-result-object p1

    return-object p1
.end method

.method protected final b(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/drm/c$a;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/c$a;->a(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/drm/c$a;

    move-result-object p1

    return-object p1
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/source/r$b;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 217
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 218
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->b()V

    :cond_0
    return-void
.end method

.method protected abstract c()V
.end method

.method public final c(Lcom/google/android/exoplayer2/source/r$b;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

    .line 228
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->f:Lcom/google/android/exoplayer2/al;

    .line 229
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->c()V

    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->b(Lcom/google/android/exoplayer2/source/r$b;)V

    return-void
.end method

.method protected final d()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
