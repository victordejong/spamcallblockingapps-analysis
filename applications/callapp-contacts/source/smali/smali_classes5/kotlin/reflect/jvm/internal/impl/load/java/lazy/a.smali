.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
    .locals 3

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "<this>"

    .line 210
    invoke-static {p0, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "containingDeclaration"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13215
    move-object p3, p1

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const/4 v0, 0x0

    .line 13216
    sget-object v1, Lkotlin/l;->NONE:Lkotlin/l;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a$a;

    invoke-direct {v2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/f;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/h;->a(Lkotlin/l;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 13214
    invoke-static {p0, p3, p2, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;ILkotlin/Lazy;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13114
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->c:Lkotlin/Lazy;

    .line 208
    invoke-static {p0, p1, p2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;ILkotlin/Lazy;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;ILkotlin/Lazy;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/y;",
            "I",
            "Lkotlin/Lazy<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/s;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;"
        }
    .end annotation

    .line 13112
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    .line 13113
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    goto :goto_1

    .line 198
    :cond_1
    move-object p0, p1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    .line 196
    :goto_1
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    invoke-direct {p1, v0, p0, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;Lkotlin/Lazy;)V

    return-object p1
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/load/java/s;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2066
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->v:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 3058
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->h:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a()Lkotlin/reflect/jvm/internal/impl/load/java/s;

    move-result-object p0

    return-object p0

    .line 142
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 238
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 237
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    .line 4112
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 5061
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->q:Lkotlin/reflect/jvm/internal/impl/load/java/c;

    const-string v6, "annotationDescriptor"

    .line 3165
    invoke-static {v1, v6}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5083
    iget-object v6, v5, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 6058
    iget-boolean v6, v6, Lkotlin/reflect/jvm/internal/impl/utils/e;->h:Z

    if-eqz v6, :cond_2

    :goto_1
    move-object v8, v4

    goto :goto_5

    .line 5087
    :cond_2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/b;->f()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/p;

    if-nez v6, :cond_3

    goto :goto_1

    .line 6096
    :cond_3
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/b;->e()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6097
    iget-object v7, v5, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 7038
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/utils/e;->f:Lkotlin/reflect/jvm/internal/impl/utils/g;

    goto :goto_2

    .line 6100
    :cond_4
    invoke-virtual {v5, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/utils/g;

    move-result-object v7

    .line 5088
    :goto_2
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/utils/g;->IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/g;

    if-eq v7, v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move-object v7, v4

    :goto_4
    if-nez v7, :cond_7

    goto :goto_1

    .line 8013
    :cond_7
    iget-object v2, v6, Lkotlin/reflect/jvm/internal/impl/load/java/p;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    .line 5090
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/utils/g;->isWarning()Z

    move-result v7

    invoke-static {v2, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object v2

    .line 9000
    iget-object v7, v6, Lkotlin/reflect/jvm/internal/impl/load/java/p;->b:Ljava/util/Collection;

    iget-boolean v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/p;->c:Z

    const-string v8, "nullabilityQualifier"

    .line 10000
    invoke-static {v2, v8}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "qualifierApplicabilityTypes"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/p;

    invoke-direct {v8, v2, v7, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/p;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;Ljava/util/Collection;Z)V

    :goto_5
    if-eqz v8, :cond_8

    move-object v4, v8

    goto :goto_7

    .line 3168
    :cond_8
    invoke-virtual {v5, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/load/java/c$a;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_7

    .line 10039
    :cond_9
    iget-object v6, v2, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    .line 3167
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;->a()Ljava/util/List;

    move-result-object v2

    .line 3171
    invoke-virtual {v5, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/utils/g;

    move-result-object v1

    if-nez v1, :cond_a

    .line 3172
    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/utils/g;

    move-result-object v1

    .line 3174
    :cond_a
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/utils/g;->isIgnore()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    .line 11112
    :cond_b
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 12062
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    .line 3181
    invoke-virtual {v5, v6, v3, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object v3

    if-nez v3, :cond_c

    move-object v6, v4

    goto :goto_6

    .line 3182
    :cond_c
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/utils/g;->isWarning()Z

    move-result v1

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object v1

    move-object v6, v1

    :goto_6
    if-nez v6, :cond_d

    goto :goto_7

    .line 3184
    :cond_d
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/p;

    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/load/java/p;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_7
    if-eqz v4, :cond_1

    .line 237
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 241
    :cond_e
    check-cast v0, Ljava/util/List;

    .line 144
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a()Lkotlin/reflect/jvm/internal/impl/load/java/s;

    move-result-object p0

    return-object p0

    .line 147
    :cond_f
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a()Lkotlin/reflect/jvm/internal/impl/load/java/s;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_8

    .line 13013
    :cond_10
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/s;->a:Ljava/util/EnumMap;

    if-nez p1, :cond_11

    goto :goto_8

    .line 147
    :cond_11
    new-instance v4, Ljava/util/EnumMap;

    invoke-direct {v4, p1}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    :goto_8
    if-nez v4, :cond_12

    .line 148
    new-instance v4, Ljava/util/EnumMap;

    const-class p1, Lkotlin/reflect/jvm/internal/impl/load/java/a;

    invoke-direct {v4, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 151
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/p;

    .line 13014
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/p;->b:Ljava/util/Collection;

    .line 152
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/a;

    .line 153
    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    if-nez v3, :cond_15

    .line 158
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a()Lkotlin/reflect/jvm/internal/impl/load/java/s;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/s;

    invoke-direct {p0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/s;-><init>(Ljava/util/EnumMap;)V

    return-object p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 223
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 14112
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 14113
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    .line 225
    sget-object v3, Lkotlin/l;->NONE:Lkotlin/l;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a$b;

    invoke-direct {v4, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4}, Lkotlin/h;->a(Lkotlin/l;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    .line 223
    invoke-direct {v0, v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;Lkotlin/Lazy;)V

    return-object v0
.end method
