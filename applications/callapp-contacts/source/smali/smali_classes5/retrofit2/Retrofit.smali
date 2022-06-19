.class public final Lretrofit2/Retrofit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/Retrofit$a;
    }
.end annotation


# instance fields
.field final a:Lokhttp3/Call$Factory;

.field final b:Lokhttp3/HttpUrl;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/e$a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/b$a;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/Executor;

.field final f:Z

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit2/p<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokhttp3/Call$Factory;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lretrofit2/e$a;",
            ">;",
            "Ljava/util/List<",
            "Lretrofit2/b$a;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit;->g:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Lretrofit2/Retrofit;->a:Lokhttp3/Call$Factory;

    .line 79
    iput-object p2, p0, Lretrofit2/Retrofit;->b:Lokhttp3/HttpUrl;

    .line 80
    iput-object p3, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    .line 81
    iput-object p4, p0, Lretrofit2/Retrofit;->d:Ljava/util/List;

    .line 82
    iput-object p5, p0, Lretrofit2/Retrofit;->e:Ljava/util/concurrent/Executor;

    .line 83
    iput-boolean p6, p0, Lretrofit2/Retrofit;->f:Z

    return-void
.end method

.method private b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/e<",
            "TT;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    const-string v0, "type == null"

    .line 296
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "parameterAnnotations == null"

    .line 297
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "methodAnnotations == null"

    .line 298
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 301
    iget-object v1, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 302
    iget-object v3, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/e$a;

    .line 304
    invoke-virtual {v3, p1, p2, p3, p0}, Lretrofit2/e$a;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/e;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not locate RequestBody converter for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".\n"

    .line 313
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  Tried:"

    .line 321
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object p1, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_2

    const-string p3, "\n   * "

    .line 323
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lretrofit2/e$a;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 160
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 161
    :goto_0
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 163
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Type parameters are unsupported on "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v1, p1, :cond_0

    const-string v1, " which is an interface of "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_2
    iget-boolean v0, p0, Lretrofit2/Retrofit;->f:Z

    if-eqz v0, :cond_4

    .line 176
    invoke-static {}, Lretrofit2/m;->a()Lretrofit2/m;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 178
    invoke-virtual {v0, v3}, Lretrofit2/m;->a(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 179
    invoke-virtual {p0, v3}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Method;)Lretrofit2/p;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void

    .line 156
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "API declarations must be interfaces."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)V

    .line 135
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lretrofit2/Retrofit$1;

    invoke-direct {v2, p0, p1}, Lretrofit2/Retrofit$1;-><init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/e<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    .line 335
    invoke-virtual {p0, p1, p2}, Lretrofit2/Retrofit;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/e<",
            "TT;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/Retrofit;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/reflect/Method;)Lretrofit2/p;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit2/p<",
            "*>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lretrofit2/Retrofit;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/p;

    if-eqz v0, :cond_0

    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lretrofit2/Retrofit;->g:Ljava/util/Map;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lretrofit2/Retrofit;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/p;

    if-nez v1, :cond_28

    .line 1067
    new-instance v1, Lretrofit2/o$a;

    invoke-direct {v1, p0, p1}, Lretrofit2/o$a;-><init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V

    .line 1170
    iget-object v2, v1, Lretrofit2/o$a;->c:[Ljava/lang/annotation/Annotation;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_f

    aget-object v7, v2, v5

    .line 1213
    instance-of v8, v7, Lretrofit2/b/b;

    if-eqz v8, :cond_1

    const-string v6, "DELETE"

    .line 1214
    check-cast v7, Lretrofit2/b/b;

    invoke-interface {v7}, Lretrofit2/b/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v4}, Lretrofit2/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1215
    :cond_1
    instance-of v8, v7, Lretrofit2/b/f;

    if-eqz v8, :cond_2

    const-string v6, "GET"

    .line 1216
    check-cast v7, Lretrofit2/b/f;

    invoke-interface {v7}, Lretrofit2/b/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v4}, Lretrofit2/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1217
    :cond_2
    instance-of v8, v7, Lretrofit2/b/g;

    if-eqz v8, :cond_3

    const-string v6, "HEAD"

    .line 1218
    check-cast v7, Lretrofit2/b/g;

    invoke-interface {v7}, Lretrofit2/b/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v4}, Lretrofit2/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1219
    :cond_3
    instance-of v8, v7, Lretrofit2/b/n;

    if-eqz v8, :cond_4

    const-string v8, "PATCH"

    .line 1220
    check-cast v7, Lretrofit2/b/n;

    invoke-interface {v7}, Lretrofit2/b/n;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7, v6}, Lretrofit2/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1221
    :cond_4
    instance-of v8, v7, Lretrofit2/b/o;

    if-eqz v8, :cond_5

    const-string v8, "POST"

    .line 1222
    check-cast v7, Lretrofit2/b/o;

    invoke-interface {v7}, Lretrofit2/b/o;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7, v6}, Lretrofit2/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1223
    :cond_5
    instance-of v8, v7, Lretrofit2/b/p;

    if-eqz v8, :cond_6

    const-string v8, "PUT"

    .line 1224
    check-cast v7, Lretrofit2/b/p;

    invoke-interface {v7}, Lretrofit2/b/p;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7, v6}, Lretrofit2/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1225
    :cond_6
    instance-of v8, v7, Lretrofit2/b/m;

    if-eqz v8, :cond_7

    const-string v6, "OPTIONS"

    .line 1226
    check-cast v7, Lretrofit2/b/m;

    invoke-interface {v7}, Lretrofit2/b/m;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v4}, Lretrofit2/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1227
    :cond_7
    instance-of v8, v7, Lretrofit2/b/h;

    if-eqz v8, :cond_8

    .line 1228
    check-cast v7, Lretrofit2/b/h;

    .line 1229
    invoke-interface {v7}, Lretrofit2/b/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Lretrofit2/b/h;->b()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lretrofit2/b/h;->c()Z

    move-result v7

    invoke-virtual {v1, v6, v8, v7}, Lretrofit2/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1230
    :cond_8
    instance-of v8, v7, Lretrofit2/b/k;

    if-eqz v8, :cond_a

    .line 1231
    check-cast v7, Lretrofit2/b/k;

    invoke-interface {v7}, Lretrofit2/b/k;->a()[Ljava/lang/String;

    move-result-object v6

    .line 1232
    array-length v7, v6

    if-eqz v7, :cond_9

    .line 1235
    invoke-virtual {v1, v6}, Lretrofit2/o$a;->a([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v6

    iput-object v6, v1, Lretrofit2/o$a;->s:Lokhttp3/Headers;

    goto :goto_1

    .line 1233
    :cond_9
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "@Headers annotation is empty."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1236
    :cond_a
    instance-of v8, v7, Lretrofit2/b/l;

    if-eqz v8, :cond_c

    .line 1237
    iget-boolean v7, v1, Lretrofit2/o$a;->p:Z

    if-nez v7, :cond_b

    .line 1240
    iput-boolean v6, v1, Lretrofit2/o$a;->q:Z

    goto :goto_1

    .line 1238
    :cond_b
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "Only one encoding annotation is allowed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1241
    :cond_c
    instance-of v7, v7, Lretrofit2/b/e;

    if-eqz v7, :cond_e

    .line 1242
    iget-boolean v7, v1, Lretrofit2/o$a;->q:Z

    if-nez v7, :cond_d

    .line 1245
    iput-boolean v6, v1, Lretrofit2/o$a;->p:Z

    goto :goto_1

    .line 1243
    :cond_d
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "Only one encoding annotation is allowed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_e
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1174
    :cond_f
    iget-object v2, v1, Lretrofit2/o$a;->n:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 1178
    iget-boolean v2, v1, Lretrofit2/o$a;->o:Z

    if-nez v2, :cond_12

    .line 1179
    iget-boolean v2, v1, Lretrofit2/o$a;->q:Z

    if-nez v2, :cond_11

    .line 1183
    iget-boolean v2, v1, Lretrofit2/o$a;->p:Z

    if-nez v2, :cond_10

    goto :goto_2

    .line 1184
    :cond_10
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1180
    :cond_11
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1189
    :cond_12
    :goto_2
    iget-object v2, v1, Lretrofit2/o$a;->d:[[Ljava/lang/annotation/Annotation;

    array-length v2, v2

    .line 1190
    new-array v3, v2, [Lretrofit2/l;

    iput-object v3, v1, Lretrofit2/o$a;->v:[Lretrofit2/l;

    add-int/lit8 v3, v2, -0x1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_14

    .line 1192
    iget-object v7, v1, Lretrofit2/o$a;->v:[Lretrofit2/l;

    iget-object v8, v1, Lretrofit2/o$a;->e:[Ljava/lang/reflect/Type;

    aget-object v8, v8, v5

    iget-object v9, v1, Lretrofit2/o$a;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v9, v9, v5

    if-ne v5, v3, :cond_13

    const/4 v10, 0x1

    goto :goto_4

    :cond_13
    const/4 v10, 0x0

    .line 1193
    :goto_4
    invoke-virtual {v1, v5, v8, v9, v10}, Lretrofit2/o$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/l;

    move-result-object v8

    aput-object v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1196
    :cond_14
    iget-object v2, v1, Lretrofit2/o$a;->r:Ljava/lang/String;

    if-nez v2, :cond_16

    iget-boolean v2, v1, Lretrofit2/o$a;->m:Z

    if-eqz v2, :cond_15

    goto :goto_5

    .line 1197
    :cond_15
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v2, "Missing either @%s URL or @Url parameter."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v1, v1, Lretrofit2/o$a;->n:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {p1, v2, v3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1199
    :cond_16
    :goto_5
    iget-boolean v2, v1, Lretrofit2/o$a;->p:Z

    if-nez v2, :cond_18

    iget-boolean v2, v1, Lretrofit2/o$a;->q:Z

    if-nez v2, :cond_18

    iget-boolean v2, v1, Lretrofit2/o$a;->o:Z

    if-nez v2, :cond_18

    iget-boolean v2, v1, Lretrofit2/o$a;->h:Z

    if-nez v2, :cond_17

    goto :goto_6

    .line 1200
    :cond_17
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "Non-body HTTP method cannot contain @Body."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1202
    :cond_18
    :goto_6
    iget-boolean v2, v1, Lretrofit2/o$a;->p:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, v1, Lretrofit2/o$a;->f:Z

    if-eqz v2, :cond_19

    goto :goto_7

    .line 1203
    :cond_19
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "Form-encoded method must contain at least one @Field."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1205
    :cond_1a
    :goto_7
    iget-boolean v2, v1, Lretrofit2/o$a;->q:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Lretrofit2/o$a;->g:Z

    if-eqz v2, :cond_1b

    goto :goto_8

    .line 1206
    :cond_1b
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "Multipart method must contain at least one @Part."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1209
    :cond_1c
    :goto_8
    new-instance v2, Lretrofit2/o;

    invoke-direct {v2, v1}, Lretrofit2/o;-><init>(Lretrofit2/o$a;)V

    .line 1028
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1029
    invoke-static {v1}, Lretrofit2/s;->d(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1033
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_25

    .line 2038
    iget-boolean v1, v2, Lretrofit2/o;->b:Z

    .line 2042
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v1, :cond_1e

    .line 2045
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 2046
    array-length v7, v5

    sub-int/2addr v7, v6

    aget-object v5, v5, v7

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5}, Lretrofit2/s;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 2048
    invoke-static {v5}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lretrofit2/Response;

    if-ne v7, v8, :cond_1d

    instance-of v7, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_1d

    .line 2050
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4, v5}, Lretrofit2/s;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v7, 0x1

    goto :goto_9

    :cond_1d
    const/4 v7, 0x0

    .line 2059
    :goto_9
    new-instance v8, Lretrofit2/s$b;

    const/4 v9, 0x0

    const-class v10, Lretrofit2/Call;

    new-array v6, v6, [Ljava/lang/reflect/Type;

    aput-object v5, v6, v4

    invoke-direct {v8, v9, v10, v6}, Lretrofit2/s$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 2060
    invoke-static {v3}, Lretrofit2/r;->a([Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    goto :goto_a

    .line 2062
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v8

    const/4 v7, 0x0

    .line 2066
    :goto_a
    invoke-static {p0, p1, v8, v3}, Lretrofit2/g;->a(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/b;

    move-result-object v5

    .line 2067
    invoke-interface {v5}, Lretrofit2/b;->a()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 2068
    const-class v6, Lokhttp3/Response;

    if-eq v3, v6, :cond_24

    .line 2073
    const-class v6, Lretrofit2/Response;

    if-eq v3, v6, :cond_23

    .line 2077
    iget-object v6, v2, Lretrofit2/o;->a:Ljava/lang/String;

    const-string v8, "HEAD"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-class v6, Ljava/lang/Void;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_b

    :cond_1f
    const-string v1, "HEAD method must use Void as response type."

    new-array v2, v4, [Ljava/lang/Object;

    .line 2078
    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2082
    :cond_20
    :goto_b
    invoke-static {p0, p1, v3}, Lretrofit2/g;->a(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lretrofit2/e;

    move-result-object v4

    .line 2084
    iget-object v3, p0, Lretrofit2/Retrofit;->a:Lokhttp3/Call$Factory;

    if-nez v1, :cond_21

    .line 2086
    new-instance v1, Lretrofit2/g$a;

    invoke-direct {v1, v2, v3, v4, v5}, Lretrofit2/g$a;-><init>(Lretrofit2/o;Lokhttp3/Call$Factory;Lretrofit2/e;Lretrofit2/b;)V

    goto :goto_c

    :cond_21
    if-eqz v7, :cond_22

    .line 2089
    new-instance v1, Lretrofit2/g$c;

    invoke-direct {v1, v2, v3, v4, v5}, Lretrofit2/g$c;-><init>(Lretrofit2/o;Lokhttp3/Call$Factory;Lretrofit2/e;Lretrofit2/b;)V

    goto :goto_c

    .line 2093
    :cond_22
    new-instance v7, Lretrofit2/g$b;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lretrofit2/g$b;-><init>(Lretrofit2/o;Lokhttp3/Call$Factory;Lretrofit2/e;Lretrofit2/b;Z)V

    move-object v1, v7

    .line 193
    :goto_c
    iget-object v2, p0, Lretrofit2/Retrofit;->g:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_23
    const-string v1, "Response must include generic type (e.g., Response<String>)"

    new-array v2, v4, [Ljava/lang/Object;

    .line 2074
    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2069
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2070
    invoke-static {v3}, Lretrofit2/s;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 2069
    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_25
    const-string v1, "Service methods cannot return void."

    new-array v2, v4, [Ljava/lang/Object;

    .line 1034
    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_26
    const-string v2, "Method return type must not include a type variable or wildcard: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 1030
    invoke-static {p1, v2, v3}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1175
    :cond_27
    iget-object p1, v1, Lretrofit2/o$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lretrofit2/s;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 195
    :cond_28
    :goto_d
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/e<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type == null"

    .line 346
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "annotations == null"

    .line 347
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 350
    iget-object v1, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 351
    iget-object v3, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    .line 352
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lretrofit2/e$a;

    invoke-virtual {v3, p1, p2, p0}, Lretrofit2/e$a;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/e;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Could not locate ResponseBody converter for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".\n"

    .line 361
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  Tried:"

    .line 369
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object p1, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_2

    const-string v1, "\n   * "

    .line 371
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/e$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/e<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "type == null"

    .line 381
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "annotations == null"

    .line 382
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    iget-object p1, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 385
    iget-object v0, p0, Lretrofit2/Retrofit;->c:Ljava/util/List;

    .line 386
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 395
    :cond_0
    sget-object p1, Lretrofit2/a$d;->a:Lretrofit2/a$d;

    return-object p1
.end method
