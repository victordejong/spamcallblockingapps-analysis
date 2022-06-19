.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;,
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;,
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c;
    }
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/c;

.field private final c:Lkotlin/reflect/jvm/internal/impl/utils/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/c;Lkotlin/reflect/jvm/internal/impl/utils/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;)V
    .locals 1

    const-string v0, "annotationTypeQualifierResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeEnhancement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->b:Lkotlin/reflect/jvm/internal/impl/load/java/c;

    .line 52
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->c:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 53
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">(TD;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;",
            ")TD;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 160
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/b/b;

    if-nez v0, :cond_0

    return-object v8

    .line 163
    :cond_0
    move-object v9, v8

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/b/b;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/load/java/b/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const/4 v10, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/load/java/b/b;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v10, :cond_1

    return-object v8

    .line 165
    :cond_1
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v4

    .line 169
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    move-object v0, v8

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;

    .line 6196
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;

    if-nez v1, :cond_2

    move-object v1, v11

    goto :goto_0

    .line 7066
    :cond_2
    iget-boolean v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->a:Z

    .line 169
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7196
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;

    .line 170
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    goto :goto_1

    :cond_3
    move-object v0, v8

    .line 175
    :goto_1
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/load/java/b/b;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 652
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-nez v1, :cond_4

    move-object v1, v11

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-nez v1, :cond_5

    move-object v1, v11

    goto :goto_3

    .line 179
    :cond_5
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 181
    :goto_3
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$d;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 176
    invoke-direct {v7, v8, v1, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;

    move-result-object v1

    .line 7285
    invoke-virtual {v1, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/r;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;

    move-result-object v1

    move-object v12, v1

    goto :goto_4

    :cond_6
    move-object v12, v11

    .line 186
    :goto_4
    instance-of v1, v8, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    if-eqz v1, :cond_7

    move-object v1, v8

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    goto :goto_5

    :cond_7
    move-object v1, v11

    :goto_5
    const/4 v13, 0x0

    if-nez v1, :cond_8

    :goto_6
    move-object v14, v11

    goto :goto_7

    .line 187
    :cond_8
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    const/4 v5, 0x3

    invoke-static {v1, v13, v13, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 188
    :cond_9
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j;

    move-object v14, v1

    :goto_7
    if-eqz v14, :cond_c

    .line 8030
    iget-object v1, v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j;->b:Ljava/util/List;

    .line 192
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/load/java/b/b;->getValueParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    sget-boolean v2, Lkotlin/x;->a:Z

    if-eqz v2, :cond_c

    if-eqz v1, :cond_b

    goto :goto_9

    .line 193
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predefined enhancement info for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9030
    iget-object v1, v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j;->b:Ljava/util/List;

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/load/java/b/b;->getValueParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " expected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 197
    :cond_c
    :goto_9
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getValueParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "annotationOwnerForMember.valueParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 653
    new-instance v2, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v1, v15}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 654
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 655
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 198
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$f;

    invoke-direct {v5, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$f;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v8, v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;

    move-result-object v5

    if-nez v14, :cond_d

    :goto_b
    move-object v6, v11

    goto :goto_c

    .line 10030
    :cond_d
    iget-object v6, v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j;->b:Ljava/util/List;

    if-nez v6, :cond_e

    goto :goto_b

    .line 199
    :cond_e
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->b()I

    move-result v10

    invoke-static {v6, v10}, Lkotlin/a/n;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/r;

    :goto_c
    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/r;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;

    move-result-object v5

    .line 10591
    iget-boolean v6, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->b:Z

    if-eqz v6, :cond_f

    .line 11590
    iget-object v6, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    goto :goto_d

    .line 201
    :cond_f
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    const-string v10, "p.type"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    const-string v10, "p"

    .line 202
    invoke-static {v3, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "<this>"

    .line 12267
    invoke-static {v3, v10}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13086
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v10

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/u;->t:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v13, "DEFAULT_VALUE_FQ_NAME"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v10

    if-nez v10, :cond_10

    :goto_e
    const/4 v10, 0x0

    goto :goto_f

    .line 13087
    :cond_10
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v10

    if-nez v10, :cond_11

    goto :goto_e

    .line 13103
    :cond_11
    instance-of v11, v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    if-nez v11, :cond_12

    const/4 v10, 0x0

    :cond_12
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    :goto_f
    if-eqz v10, :cond_13

    .line 13088
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_13

    .line 13089
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/load/java/b/j;

    invoke-direct {v11, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/b/j;-><init>(Ljava/lang/String;)V

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/b/a;

    goto :goto_10

    .line 13091
    :cond_13
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v10

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/u;->u:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v13, "DEFAULT_NULL_FQ_NAME"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 13092
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/b/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/b/h;

    move-object v11, v10

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/b/a;

    goto :goto_10

    :cond_14
    const/4 v11, 0x0

    .line 12268
    :goto_10
    instance-of v10, v11, Lkotlin/reflect/jvm/internal/impl/load/java/b/j;

    if-eqz v10, :cond_16

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/b/j;

    .line 14010
    iget-object v10, v11, Lkotlin/reflect/jvm/internal/impl/load/java/b/j;->a:Ljava/lang/String;

    .line 12268
    invoke-static {v6, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/z;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/q;

    move-result-object v6

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_11

    :cond_15
    const/4 v6, 0x0

    goto :goto_11

    .line 12269
    :cond_16
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/b/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/b/h;

    invoke-static {v11, v10}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->acceptsNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v6

    goto :goto_11

    :cond_17
    if-nez v11, :cond_1b

    .line 12270
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->c()Z

    move-result v6

    :goto_11
    if-eqz v6, :cond_18

    .line 12271
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_12

    :cond_18
    const/4 v6, 0x0

    .line 14591
    :goto_12
    iget-boolean v10, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->b:Z

    if-nez v10, :cond_1a

    .line 203
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->c()Z

    move-result v3

    if-eq v6, v3, :cond_19

    goto :goto_13

    :cond_19
    const/4 v3, 0x0

    goto :goto_14

    :cond_1a
    :goto_13
    const/4 v3, 0x1

    .line 205
    :goto_14
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c;

    .line 15590
    iget-object v11, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 15592
    iget-boolean v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->c:Z

    .line 205
    invoke-direct {v10, v11, v6, v3, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZ)V

    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_a

    .line 12270
    :cond_1b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 656
    :cond_1c
    move-object v10, v2

    check-cast v10, Ljava/util/List;

    .line 210
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v3, 0x1

    .line 657
    instance-of v0, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_15

    :cond_1d
    move-object v0, v8

    :goto_15
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_16

    .line 213
    :cond_1e
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_16
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 214
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a;->FIELD:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    goto :goto_17

    .line 216
    :cond_1f
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a;->METHOD_RETURN_TYPE:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    :goto_17
    move-object v5, v0

    .line 217
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$e;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 209
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/a;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;

    move-result-object v0

    if-nez v14, :cond_20

    const/4 v1, 0x0

    goto :goto_18

    .line 16029
    :cond_20
    iget-object v1, v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/r;

    .line 217
    :goto_18
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/r;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;

    move-result-object v0

    if-nez v12, :cond_21

    const/4 v1, 0x0

    goto :goto_19

    .line 16592
    :cond_21
    iget-boolean v1, v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->c:Z

    .line 219
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_19
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 17592
    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->c:Z

    if-nez v1, :cond_25

    .line 220
    move-object v1, v10

    check-cast v1, Ljava/lang/Iterable;

    .line 658
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 659
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c;

    .line 18592
    iget-boolean v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->c:Z

    if-eqz v2, :cond_22

    const/4 v1, 0x1

    goto :goto_1a

    :cond_23
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_24

    goto :goto_1b

    :cond_24
    const/4 v1, 0x0

    goto :goto_1c

    :cond_25
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    if-nez v12, :cond_26

    const/4 v2, 0x0

    goto :goto_1d

    .line 19591
    :cond_26
    iget-boolean v2, v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->b:Z

    .line 222
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1d
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 20591
    iget-boolean v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->b:Z

    if-nez v2, :cond_2a

    .line 223
    move-object v2, v10

    check-cast v2, Ljava/lang/Iterable;

    .line 661
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28

    .line 662
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c;

    .line 21591
    iget-boolean v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->b:Z

    if-eqz v3, :cond_27

    const/16 v16, 0x1

    goto :goto_1e

    :cond_28
    const/16 v16, 0x0

    :goto_1e
    if-nez v16, :cond_2a

    if-eqz v1, :cond_29

    goto :goto_1f

    :cond_29
    return-object v8

    :cond_2a
    :goto_1f
    if-eqz v1, :cond_2b

    .line 227
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/a/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    move-result-object v1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/j;

    move-object v3, v8

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/j;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)V

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    goto :goto_20

    :cond_2b
    const/4 v1, 0x0

    :goto_20
    if-nez v12, :cond_2c

    const/4 v11, 0x0

    goto :goto_21

    .line 22590
    :cond_2c
    iget-object v11, v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 234
    :goto_21
    check-cast v10, Ljava/lang/Iterable;

    .line 664
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v10, v15}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 665
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 666
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c;

    .line 234
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/b/l;

    .line 23590
    iget-object v6, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 23597
    iget-boolean v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c;->d:Z

    .line 234
    invoke-direct {v5, v6, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/b/l;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 667
    :cond_2d
    check-cast v2, Ljava/util/List;

    .line 24590
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 232
    invoke-interface {v9, v11, v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/b;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/n;)Lkotlin/reflect/jvm/internal/impl/load/java/b/b;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    return-object v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;
    .locals 3

    .line 112
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->c:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 3038
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->f:Lkotlin/reflect/jvm/internal/impl/utils/g;

    .line 112
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/utils/g;->IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/g;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 113
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->c:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 4038
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->f:Lkotlin/reflect/jvm/internal/impl/utils/g;

    .line 113
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/utils/g;->WARN:Lkotlin/reflect/jvm/internal/impl/utils/g;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 115
    :goto_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p1

    .line 116
    :cond_2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p1

    :cond_3
    return-object v2
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;
    .locals 1

    .line 127
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p1

    .line 128
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p1

    .line 129
    :cond_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->e()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object p1

    return-object p1

    .line 131
    :cond_2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->h()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->c:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 5037
    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/utils/e;->e:Z

    if-eqz p2, :cond_3

    .line 132
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p1

    .line 134
    :cond_3
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->i()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->c:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 6037
    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/utils/e;->e:Z

    if-eqz p2, :cond_4

    .line 135
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p1

    .line 137
    :cond_4
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->k()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    .line 138
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 137
    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p1

    .line 142
    :cond_5
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/v;->j()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    .line 143
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    .line 142
    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;
    .locals 2

    .line 57
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    .line 59
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p0

    .line 1120
    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 61
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "ALWAYS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 62
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p0

    :sswitch_1
    const-string v0, "UNKNOWN"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p0

    :sswitch_2
    const-string v0, "NEVER"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :sswitch_3
    const-string v0, "MAYBE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 63
    :cond_3
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Z)V

    return-object p0

    :cond_4
    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x45bf448 -> :sswitch_3
        0x46bd26c -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x7342860f -> :sswitch_0
    .end sparse-switch
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/a;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;",
            "Z",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/a;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p6

    .line 623
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 624
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "this.overriddenDescriptors"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 672
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 673
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 674
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    const-string v5, "it"

    .line 625
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 675
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 672
    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    .line 629
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v9

    .line 621
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;

    const/4 v11, 0x0

    const/16 v12, 0x40

    const/4 v13, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v13}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;"
        }
    .end annotation

    .line 608
    move-object v2, p2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    if-nez p2, :cond_0

    :goto_0
    move-object v4, p3

    goto :goto_1

    .line 609
    :cond_0
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, p2

    :goto_1
    const/4 v3, 0x0

    .line 610
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/a;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    .line 607
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/a;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;

    move-result-object p1

    return-object p1
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;
    .locals 4

    .line 92
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 93
    :cond_0
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 94
    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    .line 2120
    iget-boolean v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->b:Z

    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 97
    :goto_0
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object p3

    if-nez p3, :cond_3

    .line 98
    invoke-direct {p0, v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object p3

    if-nez p3, :cond_3

    return-object v1

    .line 3010
    :cond_3
    iget-boolean p2, p3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->b:Z

    if-nez p2, :cond_4

    .line 102
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/b/i;

    if-eqz p2, :cond_4

    .line 103
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/b/i;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/i;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 105
    invoke-static {p3, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p3
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformSignatures"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    check-cast p2, Ljava/lang/Iterable;

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 649
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 650
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 151
    invoke-direct {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 648
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;
    .locals 3

    const-string p2, "annotationDescriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->b:Lkotlin/reflect/jvm/internal/impl/load/java/c;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 80
    :cond_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->b:Lkotlin/reflect/jvm/internal/impl/load/java/c;

    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/utils/g;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/utils/g;->isIgnore()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 83
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v1

    .line 84
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/utils/g;->isWarning()Z

    move-result p1

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h;

    move-result-object p1

    return-object p1
.end method
