.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "argumentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    .line 209
    :goto_0
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    const-string v4, "type.arguments.single().type"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v2

    .line 215
    instance-of v4, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v4, :cond_3

    .line 216
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object v0

    .line 217
    :cond_2
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    invoke-direct {p0, v0, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;I)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p0

    .line 219
    :cond_3
    instance-of p0, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz p0, :cond_4

    .line 224
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    const-string v2, "topLevel(StandardNames.FqNames.any.toSafe())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;I)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p0

    :cond_4
    return-object v1
.end method
