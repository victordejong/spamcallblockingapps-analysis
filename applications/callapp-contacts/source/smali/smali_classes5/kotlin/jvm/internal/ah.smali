.class public Lkotlin/jvm/internal/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 95
    instance-of v0, p0, Lkotlin/jvm/internal/a/a;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lkotlin/jvm/internal/a/c;

    if-nez v0, :cond_0

    const-string v0, "kotlin.collections.MutableIterable"

    .line 96
    invoke-static {p0, v0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->f(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_19

    .line 6336
    instance-of v0, p0, Lkotlin/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 7258
    instance-of v0, p0, Lkotlin/jvm/internal/l;

    if-eqz v0, :cond_0

    .line 7259
    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/l;

    invoke-interface {v0}, Lkotlin/jvm/internal/l;->getArity()I

    move-result v0

    goto/16 :goto_0

    .line 7261
    :cond_0
    instance-of v0, p0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 7264
    :cond_1
    instance-of v0, p0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 7267
    :cond_2
    instance-of v0, p0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 7270
    :cond_3
    instance-of v0, p0, Lkotlin/jvm/functions/n;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto/16 :goto_0

    .line 7273
    :cond_4
    instance-of v0, p0, Lkotlin/jvm/functions/o;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto/16 :goto_0

    .line 7276
    :cond_5
    instance-of v0, p0, Lkotlin/jvm/functions/p;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto/16 :goto_0

    .line 7279
    :cond_6
    instance-of v0, p0, Lkotlin/jvm/functions/q;

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_0

    .line 7282
    :cond_7
    instance-of v0, p0, Lkotlin/jvm/functions/r;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto/16 :goto_0

    .line 7285
    :cond_8
    instance-of v0, p0, Lkotlin/jvm/functions/s;

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto/16 :goto_0

    .line 7288
    :cond_9
    instance-of v0, p0, Lkotlin/jvm/functions/t;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    goto/16 :goto_0

    .line 7291
    :cond_a
    instance-of v0, p0, Lkotlin/jvm/functions/a;

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    .line 7294
    :cond_b
    instance-of v0, p0, Lkotlin/jvm/functions/b;

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    goto :goto_0

    .line 7297
    :cond_c
    instance-of v0, p0, Lkotlin/jvm/functions/c;

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    .line 7300
    :cond_d
    instance-of v0, p0, Lkotlin/jvm/functions/d;

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    goto :goto_0

    .line 7303
    :cond_e
    instance-of v0, p0, Lkotlin/jvm/functions/e;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    .line 7306
    :cond_f
    instance-of v0, p0, Lkotlin/jvm/functions/f;

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    goto :goto_0

    .line 7309
    :cond_10
    instance-of v0, p0, Lkotlin/jvm/functions/g;

    if-eqz v0, :cond_11

    const/16 v0, 0x10

    goto :goto_0

    .line 7312
    :cond_11
    instance-of v0, p0, Lkotlin/jvm/functions/h;

    if-eqz v0, :cond_12

    const/16 v0, 0x11

    goto :goto_0

    .line 7315
    :cond_12
    instance-of v0, p0, Lkotlin/jvm/functions/i;

    if-eqz v0, :cond_13

    const/16 v0, 0x12

    goto :goto_0

    .line 7318
    :cond_13
    instance-of v0, p0, Lkotlin/jvm/functions/j;

    if-eqz v0, :cond_14

    const/16 v0, 0x13

    goto :goto_0

    .line 7321
    :cond_14
    instance-of v0, p0, Lkotlin/jvm/functions/k;

    if-eqz v0, :cond_15

    const/16 v0, 0x14

    goto :goto_0

    .line 7324
    :cond_15
    instance-of v0, p0, Lkotlin/jvm/functions/l;

    if-eqz v0, :cond_16

    const/16 v0, 0x15

    goto :goto_0

    .line 7327
    :cond_16
    instance-of v0, p0, Lkotlin/jvm/functions/m;

    if-eqz v0, :cond_17

    const/16 v0, 0x16

    goto :goto_0

    :cond_17
    const/4 v0, -0x1

    :goto_0
    if-ne v0, p1, :cond_18

    goto :goto_1

    :cond_18
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_19

    .line 342
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlin.jvm.functions.Function"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 17
    const-class v0, Lkotlin/jvm/internal/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 22
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be cast to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1026
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 1030
    invoke-static {p1}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 123
    instance-of v0, p0, Lkotlin/jvm/internal/a/a;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lkotlin/jvm/internal/a/b;

    if-nez v0, :cond_0

    const-string v0, "kotlin.collections.MutableCollection"

    .line 124
    invoke-static {p0, v0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->g(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 151
    instance-of v0, p0, Lkotlin/jvm/internal/a/a;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lkotlin/jvm/internal/a/e;

    if-nez v0, :cond_0

    const-string v0, "kotlin.collections.MutableList"

    .line 152
    invoke-static {p0, v0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .line 179
    instance-of v0, p0, Lkotlin/jvm/internal/a/a;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lkotlin/jvm/internal/a/h;

    if-nez v0, :cond_0

    const-string v0, "kotlin.collections.MutableSet"

    .line 180
    invoke-static {p0, v0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->i(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 207
    instance-of v0, p0, Lkotlin/jvm/internal/a/a;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lkotlin/jvm/internal/a/f;

    if-nez v0, :cond_0

    const-string v0, "kotlin.collections.MutableMap"

    .line 208
    invoke-static {p0, v0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->j(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 110
    :try_start_0
    check-cast p0, Ljava/lang/Iterable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2030
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method private static g(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 138
    :try_start_0
    check-cast p0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3030
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method private static h(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 166
    :try_start_0
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4030
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method private static i(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 194
    :try_start_0
    check-cast p0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5030
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method

.method private static j(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 222
    :try_start_0
    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6030
    invoke-static {p0}, Lkotlin/jvm/internal/ah;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassCastException;

    throw p0
.end method
