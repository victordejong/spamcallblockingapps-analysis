.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/n<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 83
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    const-string v0, "module"

    .line 83
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2084
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p1

    .line 2543
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/h;->CHAR:Lkotlin/reflect/jvm/internal/impl/builtins/h;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 v0, 0x3d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    const-string v0, "module.builtIns.charType"

    .line 2084
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-ne v2, v5, :cond_0

    const-string v2, "\\b"

    goto :goto_0

    :cond_0
    const/16 v5, 0x9

    if-ne v2, v5, :cond_1

    const-string v2, "\\t"

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    if-ne v2, v5, :cond_2

    const-string v2, "\\n"

    goto :goto_0

    :cond_2
    const/16 v5, 0xc

    if-ne v2, v5, :cond_3

    const-string v2, "\\f"

    goto :goto_0

    :cond_3
    const/16 v5, 0xd

    if-ne v2, v5, :cond_4

    const-string v2, "\\r"

    goto :goto_0

    .line 1101
    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v6

    int-to-byte v6, v6

    if-eqz v6, :cond_5

    if-eq v6, v5, :cond_5

    const/16 v5, 0xe

    if-eq v6, v5, :cond_5

    const/16 v5, 0xf

    if-eq v6, v5, :cond_5

    const/16 v5, 0x10

    if-eq v6, v5, :cond_5

    const/16 v5, 0x12

    if-eq v6, v5, :cond_5

    const/16 v5, 0x13

    if-eq v6, v5, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    .line 1097
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string v2, "?"

    :goto_0
    aput-object v2, v1, v4

    .line 88
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\\u%04X (\'%s\')"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
