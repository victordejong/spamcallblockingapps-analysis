.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/n$a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    check-cast p1, Ljava/lang/Iterable;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 62
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 50
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 60
    check-cast v0, Ljava/lang/Iterable;

    .line 50
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/g/b/a;->a(Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/utils/h;

    move-result-object p1

    .line 51
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;->a(Ljava/lang/String;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/utils/h;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    return-object v0

    .line 55
    :cond_1
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/n;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/n;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object p1
.end method
