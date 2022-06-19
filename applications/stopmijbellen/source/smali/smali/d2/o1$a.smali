.class public Ld2/o1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld2/o1$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld2/o1$c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ld2/o1$d;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld2/f4;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld2/o1$a;->f:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld2/o1$a;->g:Ljava/util/List;

    const-string v0, "stream"

    .line 4
    invoke-virtual {p1, v0}, Ld2/f4;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld2/o1$a;->a:Ljava/lang/String;

    const-string v0, "table_name"

    .line 5
    invoke-virtual {p1, v0}, Ld2/f4;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld2/o1$a;->b:Ljava/lang/String;

    const-string v0, "max_rows"

    .line 6
    iget-object v1, p1, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p1, Ld2/f4;->a:Lorg/json/JSONObject;

    const/16 v3, 0x2710

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    iput v0, p0, Ld2/o1$a;->c:I

    const-string v0, "event_types"

    .line 9
    invoke-virtual {p1, v0}, Ld2/f4;->k(Ljava/lang/String;)Ld2/d4;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {v0}, Ld2/e4;->j(Ld2/d4;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Ld2/o1$a;->d:[Ljava/lang/String;

    const-string v0, "request_types"

    .line 11
    invoke-virtual {p1, v0}, Ld2/f4;->k(Ljava/lang/String;)Ld2/d4;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {v0}, Ld2/e4;->j(Ld2/d4;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Ld2/o1$a;->e:[Ljava/lang/String;

    const-string v0, "columns"

    .line 13
    invoke-virtual {p1, v0}, Ld2/f4;->h(Ljava/lang/String;)Ld2/d4;

    move-result-object v0

    invoke-static {v0}, Ld2/e4;->o(Ld2/d4;)[Ld2/f4;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 14
    iget-object v5, p0, Ld2/o1$a;->f:Ljava/util/List;

    new-instance v6, Ld2/o1$b;

    invoke-direct {v6, v4}, Ld2/o1$b;-><init>(Ld2/f4;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "indexes"

    .line 15
    invoke-virtual {p1, v0}, Ld2/f4;->h(Ljava/lang/String;)Ld2/d4;

    move-result-object v0

    invoke-static {v0}, Ld2/e4;->o(Ld2/d4;)[Ld2/f4;

    move-result-object v0

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 16
    iget-object v4, p0, Ld2/o1$a;->g:Ljava/util/List;

    new-instance v5, Ld2/o1$c;

    iget-object v6, p0, Ld2/o1$a;->b:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Ld2/o1$c;-><init>(Ld2/f4;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const-string v0, "ttl"

    .line 17
    invoke-virtual {p1, v0}, Ld2/f4;->m(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    new-instance v1, Ld2/o1$d;

    invoke-direct {v1, v0}, Ld2/o1$d;-><init>(Ld2/f4;)V

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-object v1, p0, Ld2/o1$a;->h:Ld2/o1$d;

    const-string v0, "queries"

    .line 19
    invoke-virtual {p1, v0}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    iget-object v2, p1, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v2

    .line 22
    :try_start_1
    invoke-virtual {p1}, Ld2/f4;->d()Ljava/util/Iterator;

    move-result-object v1

    .line 23
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 26
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    iput-object v0, p0, Ld2/o1$a;->i:Ljava/util/Map;

    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 29
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
