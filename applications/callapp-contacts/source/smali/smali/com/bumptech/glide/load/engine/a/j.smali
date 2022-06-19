.class public final Lcom/bumptech/glide/load/engine/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/j$a;,
        Lcom/bumptech/glide/load/engine/a/j$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/a/h<",
            "Lcom/bumptech/glide/load/engine/a/j$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/a/j$b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/a/a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/engine/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->a:Lcom/bumptech/glide/load/engine/a/h;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/a/j$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/j$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->b:Lcom/bumptech/glide/load/engine/a/j$b;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->c:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->d:Ljava/util/Map;

    const/high16 v0, 0x400000

    .line 38
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/j;->e:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/engine/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->a:Lcom/bumptech/glide/load/engine/a/h;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/a/j$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/j$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->b:Lcom/bumptech/glide/load/engine/a/j$b;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->c:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->d:Ljava/util/Map;

    .line 47
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/j;->e:I

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/a/j$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/a/j$a;",
            ")TT;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->a:Lcom/bumptech/glide/load/engine/a/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a/h;->a(Lcom/bumptech/glide/load/engine/a/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/engine/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/a/j$a;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/a/j;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/a/a;

    move-result-object v0

    .line 97
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/a/j;->a(Lcom/bumptech/glide/load/engine/a/j$a;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    iget v2, p0, Lcom/bumptech/glide/load/engine/a/j;->f:I

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/a/a;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/a;->b()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/engine/a/j;->f:I

    .line 100
    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/a/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/bumptech/glide/load/engine/a/j;->b(ILjava/lang/Class;)V

    :cond_0
    if-nez v1, :cond_2

    .line 104
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/a;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 105
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/a;->a()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Allocated "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/bumptech/glide/load/engine/a/j$a;->a:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    iget p1, p1, Lcom/bumptech/glide/load/engine/a/j$a;->a:I

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/a;->a(I)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/load/engine/a/a<",
            "TT;>;"
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/a/j;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/a/a;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/j;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private b(I)V
    .locals 5

    .line 152
    :cond_0
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/j;->f:I

    if-le v0, p1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->a:Lcom/bumptech/glide/load/engine/a/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    .line 3023
    invoke-static {v0, v1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/j;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/a/a;

    move-result-object v1

    .line 156
    iget v2, p0, Lcom/bumptech/glide/load/engine/a/j;->f:I

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/a/a;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/a/a;->b()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/engine/a/j;->f:I

    .line 157
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/a/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/load/engine/a/j;->b(ILjava/lang/Class;)V

    .line 158
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/a/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/a/a;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "evicted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/a/a;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(ILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/a/j;->b(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p2

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 174
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 168
    :cond_1
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried to decrement empty size, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private c(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/engine/a/a<",
            "TT;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/a;

    if-nez v0, :cond_2

    .line 196
    const-class v0, [I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/bumptech/glide/load/engine/a/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/i;-><init>()V

    goto :goto_0

    .line 198
    :cond_0
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lcom/bumptech/glide/load/engine/a/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/g;-><init>()V

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/j;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No array pool found for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/a/j;->b(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2129
    iget v3, p0, Lcom/bumptech/glide/load/engine/a/j;->f:I

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/bumptech/glide/load/engine/a/j;->e:I

    div-int/2addr v4, v3

    const/4 v3, 0x2

    if-lt v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    .line 2125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v4, p1, 0x8

    if-gt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 88
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/j;->b:Lcom/bumptech/glide/load/engine/a/j$b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/bumptech/glide/load/engine/a/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/a/j$a;

    move-result-object p1

    goto :goto_3

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->b:Lcom/bumptech/glide/load/engine/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/a/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/a/j$a;

    move-result-object p1

    .line 92
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/a/j;->a(Lcom/bumptech/glide/load/engine/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j;->b:Lcom/bumptech/glide/load/engine/a/j$b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/a/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/a/j$a;

    move-result-object v0

    .line 80
    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/load/engine/a/j;->a(Lcom/bumptech/glide/load/engine/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/j;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 143
    :cond_1
    :try_start_1
    iget p1, p0, Lcom/bumptech/glide/load/engine/a/j;->e:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/a/j;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/j;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/a/a;

    move-result-object v1

    .line 62
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/a/a;->a(Ljava/lang/Object;)I

    move-result v2

    .line 63
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/a/a;->b()I

    move-result v1

    mul-int v1, v1, v2

    .line 1120
    iget v3, p0, Lcom/bumptech/glide/load/engine/a/j;->e:I

    div-int/lit8 v3, v3, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-gt v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 65
    monitor-exit p0

    return-void

    .line 67
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a/j;->b:Lcom/bumptech/glide/load/engine/a/j$b;

    invoke-virtual {v3, v2, v0}, Lcom/bumptech/glide/load/engine/a/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/a/j$a;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a/j;->a:Lcom/bumptech/glide/load/engine/a/h;

    invoke-virtual {v3, v2, p1}, Lcom/bumptech/glide/load/engine/a/h;->a(Lcom/bumptech/glide/load/engine/a/m;Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a/j;->b(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p1

    .line 71
    iget v0, v2, Lcom/bumptech/glide/load/engine/a/j$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 72
    iget v2, v2, Lcom/bumptech/glide/load/engine/a/j$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v4, v0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget p1, p0, Lcom/bumptech/glide/load/engine/a/j;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/load/engine/a/j;->f:I

    .line 1148
    iget p1, p0, Lcom/bumptech/glide/load/engine/a/j;->e:I

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/a/j;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
