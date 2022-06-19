.class final Lkotlin/reflect/jvm/internal/w$a$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/w$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<no name provided>",
        "Ljava/lang/reflect/Type;",
        "invoke",
        "kotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lkotlin/reflect/jvm/internal/w$a;

.field final synthetic c:Lkotlin/Lazy;

.field final synthetic d:Lkotlin/reflect/KProperty;


# direct methods
.method constructor <init>(ILkotlin/reflect/jvm/internal/w$a;Lkotlin/Lazy;Lkotlin/reflect/KProperty;)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/w$a$a;->a:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/w$a$a;->b:Lkotlin/reflect/jvm/internal/w$a;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/w$a$a;->c:Lkotlin/Lazy;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/w$a$a;->d:Lkotlin/reflect/KProperty;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1088
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/w$a$a;->b:Lkotlin/reflect/jvm/internal/w$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/w$a;->a:Lkotlin/reflect/jvm/internal/w;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/w;->am_()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1089
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 1092
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/Object;

    :goto_0
    const-string v1, "if (javaType.isArray) ja\u2026Type else Any::class.java"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0

    .line 1094
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    .line 1095
    iget v1, p0, Lkotlin/reflect/jvm/internal/w$a$a;->a:I

    if-nez v1, :cond_2

    .line 1096
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "javaType.genericComponentType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1095
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array type has been queried for a non-0th argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/w$a$a;->b:Lkotlin/reflect/jvm/internal/w$a;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/w$a;->a:Lkotlin/reflect/jvm/internal/w;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1098
    :cond_3
    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    .line 1099
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/w$a$a;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lkotlin/reflect/jvm/internal/w$a$a;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 1101
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_4

    goto :goto_1

    .line 1102
    :cond_4
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "argument.lowerBounds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/a/i;->d([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "argument.upperBounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/a/i;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    const-string v1, "if (argument !is Wildcar\u2026ument.upperBounds.first()"

    .line 1101
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1104
    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-generic type has been queried for arguments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/w$a$a;->b:Lkotlin/reflect/jvm/internal/w$a;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/w$a;->a:Lkotlin/reflect/jvm/internal/w;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
