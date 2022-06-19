.class final Lkotlin/reflect/jvm/internal/impl/e/d$d;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/e/d;-><init>(Lkotlin/reflect/jvm/internal/impl/e/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/e/d;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/e/d;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/e/d$d;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 14

    .line 1038
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$d;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/d$d$1;->a:Lkotlin/reflect/jvm/internal/impl/e/d$d$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v2, "changeOptions"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/d;

    .line 2031
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 2041
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-direct {v2}, Lkotlin/reflect/jvm/internal/impl/e/g;-><init>()V

    .line 2044
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v4, "this::class.java.declaredFields"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    .line 2045
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    .line 2046
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2047
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lkotlin/properties/b;

    if-eqz v10, :cond_1

    check-cast v9, Lkotlin/properties/b;

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_0

    .line 2048
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "field.name"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "is"

    .line 2405
    invoke-static {v10, v12, v5}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    xor-int/2addr v8, v10

    .line 2048
    sget-boolean v10, Lkotlin/x;->a:Z

    if-eqz v10, :cond_3

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Fields named is* are not supported here yet"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 2051
    :cond_3
    :goto_2
    new-instance v8, Lkotlin/jvm/internal/aa;

    const-class v10, Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-static {v10}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/KDeclarationContainer;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lkotlin/h/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "get"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v12, v11}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v8, Lkotlin/reflect/KProperty;

    .line 2049
    invoke-virtual {v9, v0, v8}, Lkotlin/properties/b;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v8

    .line 2053
    invoke-virtual {v2, v8}, Lkotlin/reflect/jvm/internal/impl/e/g;->a(Ljava/lang/Object;)Lkotlin/properties/ReadWriteProperty;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2022
    :cond_4
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/e/g;->e()V

    .line 2024
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;-><init>(Lkotlin/reflect/jvm/internal/impl/e/g;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/c;

    .line 1038
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/d;

    return-object v0
.end method
