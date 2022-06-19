.class public final Lcom/google/firebase/abt/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/analytics/connector/a;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/analytics/connector/a;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/google/firebase/abt/b;->a:Lcom/google/firebase/analytics/connector/a;

    .line 95
    iput-object p3, p0, Lcom/google/firebase/abt/b;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/google/firebase/abt/b;->c:Ljava/lang/Integer;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/a$c;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/analytics/connector/a$c;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/analytics/connector/a$c;

    .line 273
    iget-object v2, v1, Lcom/google/firebase/analytics/connector/a$c;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/firebase/abt/b;->a:Lcom/google/firebase/analytics/connector/a;

    invoke-interface {v0, p1}, Lcom/google/firebase/analytics/connector/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/analytics/connector/a$c;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/connector/a$c;

    .line 317
    iget-object v0, v0, Lcom/google/firebase/analytics/connector/a$c;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/a;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/abt/a;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/abt/a;

    .line 2189
    iget-object v2, v1, Lcom/google/firebase/abt/a;->b:Ljava/lang/String;

    .line 289
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/a$c;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/firebase/abt/b;->a:Lcom/google/firebase/analytics/connector/a;

    iget-object v1, p0, Lcom/google/firebase/abt/b;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/analytics/connector/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 330
    invoke-static {v1}, Lcom/google/firebase/abt/a;->a(Ljava/util/Map;)Lcom/google/firebase/abt/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/a;",
            ">;)V"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/ArrayDeque;

    .line 300
    invoke-direct {p0}, Lcom/google/firebase/abt/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 2359
    iget-object v1, p0, Lcom/google/firebase/abt/b;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 2360
    iget-object v1, p0, Lcom/google/firebase/abt/b;->a:Lcom/google/firebase/analytics/connector/a;

    iget-object v2, p0, Lcom/google/firebase/abt/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/firebase/analytics/connector/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/abt/b;->c:Ljava/lang/Integer;

    .line 2362
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/abt/b;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/a;

    .line 305
    :goto_1
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v3

    if-lt v3, v1, :cond_1

    .line 306
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/analytics/connector/a$c;

    iget-object v3, v3, Lcom/google/firebase/analytics/connector/a$c;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/firebase/abt/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/abt/b;->b:Ljava/lang/String;

    .line 3268
    new-instance v4, Lcom/google/firebase/analytics/connector/a$c;

    invoke-direct {v4}, Lcom/google/firebase/analytics/connector/a$c;-><init>()V

    .line 3270
    iput-object v3, v4, Lcom/google/firebase/analytics/connector/a$c;->a:Ljava/lang/String;

    .line 4204
    iget-object v3, v2, Lcom/google/firebase/abt/a;->e:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 3271
    iput-wide v5, v4, Lcom/google/firebase/analytics/connector/a$c;->m:J

    .line 3272
    iget-object v3, v2, Lcom/google/firebase/abt/a;->b:Ljava/lang/String;

    iput-object v3, v4, Lcom/google/firebase/analytics/connector/a$c;->b:Ljava/lang/String;

    .line 3273
    iget-object v3, v2, Lcom/google/firebase/abt/a;->c:Ljava/lang/String;

    iput-object v3, v4, Lcom/google/firebase/analytics/connector/a$c;->c:Ljava/lang/Object;

    .line 3278
    iget-object v3, v2, Lcom/google/firebase/abt/a;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget-object v3, v2, Lcom/google/firebase/abt/a;->d:Ljava/lang/String;

    :goto_2
    iput-object v3, v4, Lcom/google/firebase/analytics/connector/a$c;->d:Ljava/lang/String;

    .line 3279
    iget-wide v5, v2, Lcom/google/firebase/abt/a;->f:J

    iput-wide v5, v4, Lcom/google/firebase/analytics/connector/a$c;->e:J

    .line 3280
    iget-wide v2, v2, Lcom/google/firebase/abt/a;->g:J

    iput-wide v2, v4, Lcom/google/firebase/analytics/connector/a$c;->j:J

    .line 4336
    iget-object v2, p0, Lcom/google/firebase/abt/b;->a:Lcom/google/firebase/analytics/connector/a;

    invoke-interface {v2, v4}, Lcom/google/firebase/analytics/connector/a;->a(Lcom/google/firebase/analytics/connector/a$c;)V

    .line 311
    invoke-interface {v0, v4}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/google/firebase/abt/b;->a:Lcom/google/firebase/analytics/connector/a;

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    new-instance v0, Lcom/google/firebase/abt/AbtException;

    const-string v1, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    invoke-direct {v0, v1}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 242
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {p0}, Lcom/google/firebase/abt/b;->a()V

    .line 1142
    invoke-direct {p0}, Lcom/google/firebase/abt/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/abt/b;->a(Ljava/util/Collection;)V

    return-void

    .line 247
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/a;

    .line 1189
    iget-object v2, v2, Lcom/google/firebase/abt/a;->b:Ljava/lang/String;

    .line 249
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/abt/b;->b()Ljava/util/List;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/analytics/connector/a$c;

    .line 255
    iget-object v4, v4, Lcom/google/firebase/analytics/connector/a$c;->b:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :cond_2
    invoke-static {v1, v0}, Lcom/google/firebase/abt/b;->a(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    invoke-direct {p0, v0}, Lcom/google/firebase/abt/b;->a(Ljava/util/Collection;)V

    .line 263
    invoke-static {p1, v2}, Lcom/google/firebase/abt/b;->b(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    .line 264
    invoke-direct {p0, p1}, Lcom/google/firebase/abt/b;->c(Ljava/util/List;)V

    return-void
.end method
