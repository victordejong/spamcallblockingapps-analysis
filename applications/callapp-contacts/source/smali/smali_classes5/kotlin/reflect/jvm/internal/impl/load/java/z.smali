.class public final Lkotlin/reflect/jvm/internal/impl/load/java/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p0

    const-string v0, "toDescriptorVisibility(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/q;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v1

    .line 36
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne v2, v4, :cond_1

    .line 37
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p0

    .line 38
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    const-string v0, "identifier(value)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_BACKEND:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    .line 37
    invoke-interface {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    .line 42
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz p1, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne p1, v0, :cond_0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/l;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/l;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/q;

    return-object p1

    :cond_0
    return-object v3

    .line 45
    :cond_1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0x"

    const/4 v1, 0x0

    .line 1405
    invoke-static {p1, v0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    const/4 v4, 0x2

    if-nez v0, :cond_5

    const-string v0, "0X"

    .line 2405
    invoke-static {p1, v0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "0b"

    .line 3405
    invoke-static {p1, v0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0B"

    .line 4405
    invoke-static {p1, v0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1024
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/f;

    const/16 v2, 0xa

    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/utils/f;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 1023
    :cond_4
    :goto_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/f;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5, v4}, Lkotlin/reflect/jvm/internal/impl/utils/f;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 1022
    :cond_5
    :goto_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/f;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-direct {v0, v4, v2}, Lkotlin/reflect/jvm/internal/impl/utils/f;-><init>(Ljava/lang/String;I)V

    .line 5000
    :goto_2
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/utils/f;->a:Ljava/lang/String;

    .line 6000
    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/utils/f;->b:I

    .line 49
    :try_start_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->e(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_4

    .line 50
    :cond_6
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->f(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-eqz v4, :cond_7

    check-cast p1, Ljava/lang/CharSequence;

    const-string p0, "$this$singleOrNull"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6267
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_4

    .line 51
    :cond_7
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->h(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p0, "$this$toByteOrNull"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7027
    invoke-static {v2, v0}, Lkotlin/h/p;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, -0x80

    if-lt p0, p1, :cond_10

    const/16 p1, 0x7f

    if-le p0, p1, :cond_8

    goto :goto_3

    :cond_8
    int-to-byte p0, p0

    .line 7029
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_4

    .line 52
    :cond_9
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->j(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p0, "$this$toShortOrNull"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7047
    invoke-static {v2, v0}, Lkotlin/h/p;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, -0x8000

    if-lt p0, p1, :cond_10

    const/16 p1, 0x7fff

    if-le p0, p1, :cond_a

    goto :goto_3

    :cond_a
    int-to-short p0, p0

    .line 7049
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_4

    .line 53
    :cond_b
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->g(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v2, v0}, Lkotlin/h/p;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 54
    :cond_c
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->i(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v2, v0}, Lkotlin/h/p;->b(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p1

    goto :goto_4

    .line 55
    :cond_d
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->k(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lkotlin/h/p;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_4

    .line 56
    :cond_e
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->l(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lkotlin/h/p;->d(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto :goto_4

    .line 57
    :cond_f
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->s(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_10

    goto :goto_4

    :catch_0
    :cond_10
    :goto_3
    move-object p1, v3

    :goto_4
    if-eqz p1, :cond_11

    .line 64
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/i;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/i;-><init>(Ljava/lang/Object;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/q;

    return-object p0

    :cond_11
    return-object v3
.end method
