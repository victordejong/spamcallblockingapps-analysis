.class public Lcom/criteo/publisher/model/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/criteo/publisher/model/u;

.field private final d:Lcom/criteo/publisher/m0/b;

.field private final e:Lcom/criteo/publisher/k/c;

.field private final f:Lcom/criteo/publisher/c/d;

.field private final g:Lcom/criteo/publisher/m0/g;

.field private final h:Lcom/criteo/publisher/i/c;

.field private final i:Lcom/criteo/publisher/context/b;

.field private final j:Lcom/criteo/publisher/context/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/m0/b;Lcom/criteo/publisher/k/c;Lcom/criteo/publisher/c/d;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/i/c;Lcom/criteo/publisher/context/b;Lcom/criteo/publisher/context/d;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/criteo/publisher/model/p;->a:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/criteo/publisher/model/p;->b:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/criteo/publisher/model/p;->c:Lcom/criteo/publisher/model/u;

    .line 90
    iput-object p4, p0, Lcom/criteo/publisher/model/p;->d:Lcom/criteo/publisher/m0/b;

    .line 91
    iput-object p5, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/k/c;

    .line 92
    iput-object p6, p0, Lcom/criteo/publisher/model/p;->f:Lcom/criteo/publisher/c/d;

    .line 93
    iput-object p7, p0, Lcom/criteo/publisher/model/p;->g:Lcom/criteo/publisher/m0/g;

    .line 94
    iput-object p8, p0, Lcom/criteo/publisher/model/p;->h:Lcom/criteo/publisher/i/c;

    .line 95
    iput-object p9, p0, Lcom/criteo/publisher/model/p;->i:Lcom/criteo/publisher/context/b;

    .line 96
    iput-object p10, p0, Lcom/criteo/publisher/model/p;->j:Lcom/criteo/publisher/context/d;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/q;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/criteo/publisher/model/p;->f:Lcom/criteo/publisher/c/d;

    .line 148
    invoke-virtual {v0}, Lcom/criteo/publisher/c/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lcom/criteo/publisher/model/n;->b()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lcom/criteo/publisher/model/n;->a()Lcom/criteo/publisher/m0/a;

    move-result-object v2

    .line 151
    invoke-virtual {p1}, Lcom/criteo/publisher/model/n;->c()Lcom/criteo/publisher/model/AdSize;

    move-result-object p1

    .line 147
    invoke-static {v0, v1, v2, p1}, Lcom/criteo/publisher/model/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/criteo/publisher/m0/a;Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/q;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/n;

    .line 140
    invoke-direct {p0, v1}, Lcom/criteo/publisher/model/p;->a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a([Ljava/lang/String;)Z
    .locals 4

    .line 251
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 252
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)Lcom/criteo/publisher/model/o;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;",
            "Lcom/criteo/publisher/context/ContextData;",
            ")",
            "Lcom/criteo/publisher/model/o;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/util/Map;

    .line 104
    invoke-static {p2}, Lcom/criteo/publisher/context/c;->a(Lcom/criteo/publisher/context/AbstractContextData;)Ljava/util/Map;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v1}, Lcom/criteo/publisher/model/p;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 106
    iget-object v1, p0, Lcom/criteo/publisher/model/p;->a:Landroid/content/Context;

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/criteo/publisher/model/p;->b:Ljava/lang/String;

    .line 106
    invoke-static {v1, v3, p2}, Lcom/criteo/publisher/model/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/criteo/publisher/model/v;

    move-result-object v5

    const/4 p2, 0x2

    new-array v1, p2, [Ljava/util/Map;

    .line 112
    iget-object v3, p0, Lcom/criteo/publisher/model/p;->i:Lcom/criteo/publisher/context/b;

    const/16 v4, 0x9

    new-array v4, v4, [Lkotlin/n;

    .line 2047
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v7, "unknown"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v0

    const/4 v9, 0x0

    if-nez v8, :cond_0

    move-object v6, v9

    :cond_0
    const-string v8, "device.make"

    .line 1161
    invoke-static {v8, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v6

    aput-object v6, v4, v2

    .line 2056
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v0

    if-nez v7, :cond_1

    move-object v6, v9

    :cond_1
    const-string v7, "device.model"

    .line 1162
    invoke-static {v7, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v6

    aput-object v6, v4, v0

    .line 2065
    iget-object v6, v3, Lcom/criteo/publisher/context/b;->a:Lcom/criteo/publisher/context/a;

    invoke-virtual {v6}, Lcom/criteo/publisher/context/a;->a()Lcom/criteo/publisher/context/a$a;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/criteo/publisher/context/a$a;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v9

    :goto_0
    const-string v7, "device.contype"

    .line 1163
    invoke-static {v7, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v6

    aput-object v6, v4, p2

    .line 2112
    invoke-virtual {v3}, Lcom/criteo/publisher/context/b;->b()Landroid/graphics/Point;

    move-result-object v6

    if-eqz v6, :cond_3

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v9

    :goto_1
    const-string v7, "device.w"

    .line 1164
    invoke-static {v7, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v4, v7

    .line 2120
    invoke-virtual {v3}, Lcom/criteo/publisher/context/b;->b()Landroid/graphics/Point;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v9

    :goto_2
    const-string v7, "device.h"

    .line 1165
    invoke-static {v7, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v4, v7

    .line 2140
    iget-object v6, v3, Lcom/criteo/publisher/context/b;->b:Lcom/criteo/publisher/m0/c;

    invoke-virtual {v6}, Lcom/criteo/publisher/m0/c;->a()I

    move-result v6

    if-eq v6, v0, :cond_6

    if-eq v6, p2, :cond_5

    move-object p2, v9

    goto :goto_3

    :cond_5
    const-string p2, "Landscape"

    goto :goto_3

    :cond_6
    const-string p2, "Portrait"

    :goto_3
    const-string v6, "data.orientation"

    .line 1166
    invoke-static {v6, p2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p2

    const/4 v6, 0x5

    aput-object p2, v4, v6

    .line 3081
    invoke-static {}, Lcom/criteo/publisher/context/b;->a()Ljava/util/List;

    move-result-object p2

    .line 3186
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3195
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 3194
    check-cast v7, Ljava/util/Locale;

    .line 3082
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "it"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v0

    if-nez v8, :cond_8

    move-object v7, v9

    :cond_8
    if-eqz v7, :cond_7

    .line 3194
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3083
    :cond_9
    invoke-static {v6}, Lkotlin/a/n;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v6, "user.geo.country"

    .line 1167
    invoke-static {v6, p2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p2

    const/4 v6, 0x6

    aput-object p2, v4, v6

    .line 1168
    invoke-static {}, Lcom/criteo/publisher/context/b;->c()Ljava/util/List;

    move-result-object p2

    const-string v6, "data.inputLanguage"

    invoke-static {v6, p2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p2

    const/4 v6, 0x7

    aput-object p2, v4, v6

    .line 4157
    iget-object p2, v3, Lcom/criteo/publisher/context/b;->c:Lcom/criteo/publisher/x;

    .line 5045
    iget-object v3, p2, Lcom/criteo/publisher/x;->c:Lcom/criteo/publisher/h;

    invoke-interface {v3}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v6

    iget-wide v8, p2, Lcom/criteo/publisher/x;->a:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int p2, v6

    .line 4157
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "data.sessionDuration"

    .line 1169
    invoke-static {v3, p2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p2

    const/16 v3, 0x8

    aput-object p2, v4, v3

    .line 1160
    invoke-static {v4}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object p2

    .line 1170
    invoke-static {p2}, Lcom/criteo/publisher/m0/m;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    aput-object p2, v1, v2

    .line 113
    iget-object p2, p0, Lcom/criteo/publisher/model/p;->j:Lcom/criteo/publisher/context/d;

    .line 6032
    iget-object p2, p2, Lcom/criteo/publisher/context/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    const-string v2, "valueRef.get()"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/criteo/publisher/context/UserData;

    .line 114
    invoke-static {p2}, Lcom/criteo/publisher/context/c;->a(Lcom/criteo/publisher/context/AbstractContextData;)Ljava/util/Map;

    move-result-object p2

    aput-object p2, v1, v0

    .line 112
    invoke-virtual {p0, v1}, Lcom/criteo/publisher/model/p;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 117
    iget-object v0, p0, Lcom/criteo/publisher/model/p;->d:Lcom/criteo/publisher/m0/b;

    .line 6074
    invoke-virtual {v0}, Lcom/criteo/publisher/m0/b;->a()Lcom/criteo/publisher/m0/b$b;

    move-result-object v0

    .line 6198
    iget-object v0, v0, Lcom/criteo/publisher/m0/b$b;->a:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/k/c;

    .line 119
    invoke-virtual {v1}, Lcom/criteo/publisher/k/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/criteo/publisher/m0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/k/c;

    .line 120
    invoke-virtual {v2}, Lcom/criteo/publisher/k/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/criteo/publisher/m0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/k/c;

    .line 121
    invoke-virtual {v3}, Lcom/criteo/publisher/k/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/criteo/publisher/m0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v0, v1, v2, v3, p2}, Lcom/criteo/publisher/model/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/criteo/publisher/model/z;

    move-result-object v6

    .line 125
    iget-object p2, p0, Lcom/criteo/publisher/model/p;->f:Lcom/criteo/publisher/c/d;

    .line 126
    invoke-virtual {p2}, Lcom/criteo/publisher/c/d;->a()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {}, Lcom/criteo/publisher/m0/g;->a()Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Lcom/criteo/publisher/model/p;->h:Lcom/criteo/publisher/i/c;

    .line 7038
    invoke-virtual {p2}, Lcom/criteo/publisher/i/c;->a()Lcom/criteo/publisher/i/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/criteo/publisher/i/a;->a()I

    move-result v8

    .line 130
    iget-object p2, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/k/c;

    .line 7087
    iget-object p2, p2, Lcom/criteo/publisher/k/c;->d:Lcom/criteo/publisher/k/a/d;

    invoke-virtual {p2}, Lcom/criteo/publisher/k/a/d;->a()Lcom/criteo/publisher/k/a/c;

    move-result-object v9

    .line 132
    invoke-direct {p0, p1}, Lcom/criteo/publisher/model/p;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 125
    invoke-static/range {v4 .. v10}, Lcom/criteo/publisher/model/o;->a(Ljava/lang/String;Lcom/criteo/publisher/model/v;Lcom/criteo/publisher/model/z;Ljava/lang/String;ILcom/criteo/publisher/k/a/c;Ljava/util/List;)Lcom/criteo/publisher/model/o;

    move-result-object p1

    return-object p1
.end method

.method public final varargs a([Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 204
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 205
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 207
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    .line 208
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, -0x1

    const-string v9, "\\."

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 212
    invoke-direct {p0, v7}, Lcom/criteo/publisher/model/p;->a([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v9, v0

    const/4 v8, 0x0

    .line 217
    :goto_2
    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    .line 218
    aget-object v10, v7, v8

    .line 220
    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 221
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 222
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 225
    check-cast v10, Ljava/util/Map;

    move-object v9, v10

    goto :goto_3

    .line 232
    :cond_1
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 233
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v11

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 239
    :cond_2
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    .line 240
    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 242
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public a()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/criteo/publisher/model/p;->c:Lcom/criteo/publisher/model/u;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/u;->b()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
