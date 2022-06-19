.class public Lcom/google/common/collect/w;
.super Lcom/google/common/collect/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y<",
        "TK;TV;>;",
        "Lcom/google/common/collect/ac<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/x;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x<",
            "TK;",
            "Lcom/google/common/collect/v<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/y;-><init>(Lcom/google/common/collect/x;I)V

    return-void
.end method

.method public static a()Lcom/google/common/collect/w$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/w$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/google/common/collect/w$a;

    invoke-direct {v0}, Lcom/google/common/collect/w$a;-><init>()V

    return-object v0
.end method

.method static a(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/w;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+",
            "Ljava/util/Collection<",
            "+TV;>;>;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;"
        }
    .end annotation

    .line 278
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    sget-object p0, Lcom/google/common/collect/o;->a:Lcom/google/common/collect/o;

    return-object p0

    .line 281
    :cond_0
    new-instance v0, Lcom/google/common/collect/x$a;

    .line 282
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/x$a;-><init>(I)V

    const/4 v1, 0x0

    .line 285
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 287
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-nez p1, :cond_2

    .line 290
    invoke-static {v2}, Lcom/google/common/collect/v;->a(Ljava/util/Collection;)Lcom/google/common/collect/v;

    move-result-object v2

    goto :goto_1

    .line 291
    :cond_2
    invoke-static {p1, v2}, Lcom/google/common/collect/v;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v;

    move-result-object v2

    .line 292
    :goto_1
    invoke-virtual {v2}, Lcom/google/common/collect/v;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 293
    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/x$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x$a;

    .line 294
    invoke-virtual {v2}, Lcom/google/common/collect/v;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 298
    :cond_3
    new-instance p0, Lcom/google/common/collect/w;

    invoke-virtual {v0}, Lcom/google/common/collect/x$a;->a()Lcom/google/common/collect/x;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/w;-><init>(Lcom/google/common/collect/x;I)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 387
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_3

    .line 391
    invoke-static {}, Lcom/google/common/collect/x;->b()Lcom/google/common/collect/x$a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 395
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 396
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    if-lez v6, :cond_1

    .line 401
    invoke-static {}, Lcom/google/common/collect/v;->i()Lcom/google/common/collect/v$a;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_0

    .line 403
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/common/collect/v$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 405
    :cond_0
    invoke-virtual {v7}, Lcom/google/common/collect/v$a;->a()Lcom/google/common/collect/v;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/google/common/collect/x$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x$a;

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    const/16 v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid value count "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 411
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/collect/x$a;->a()Lcom/google/common/collect/x;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 416
    sget-object v0, Lcom/google/common/collect/y$c;->a:Lcom/google/common/collect/at$a;

    .line 1205
    :try_start_1
    iget-object v0, v0, Lcom/google/common/collect/at$a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    sget-object p1, Lcom/google/common/collect/y$c;->b:Lcom/google/common/collect/at$a;

    .line 1213
    :try_start_2
    iget-object p1, p1, Lcom/google/common/collect/at$a;->a:Ljava/lang/reflect/Field;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1215
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1207
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_2
    move-exception p1

    .line 413
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/InvalidObjectException;

    throw p1

    .line 389
    :cond_3
    new-instance p1, Ljava/io/InvalidObjectException;

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid key count "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1143
    invoke-interface {p0}, Lcom/google/common/collect/ah;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1144
    invoke-interface {p0}, Lcom/google/common/collect/ah;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1148
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w;->c(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/v<",
            "TV;>;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/google/common/collect/w;->b:Lcom/google/common/collect/x;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/v;

    if-nez p1, :cond_0

    .line 316
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final synthetic d(Ljava/lang/Object;)Lcom/google/common/collect/t;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w;->c(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object p1

    return-object p1
.end method
