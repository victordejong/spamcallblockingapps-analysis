.class public final Lkotlin/reflect/jvm/internal/impl/b/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/b/a$s;)V
    .locals 5

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13836
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$s;->b:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13887
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$s;->c:I

    .line 14836
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$s;->b:Ljava/util/List;

    const-string v1, "typeTable.typeList"

    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    .line 40
    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_0
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-lt v2, v0, :cond_1

    .line 28
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->v()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Z)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->g()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v3

    .line 27
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 41
    :cond_2
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    :cond_3
    const-string p1, "run {\n        val originalTypes = typeTable.typeList\n        if (typeTable.hasFirstNullable()) {\n            val firstNullable = typeTable.firstNullable\n            typeTable.typeList.mapIndexed { i, type ->\n                if (i >= firstNullable) {\n                    type.toBuilder().setNullable(true).build()\n                } else type\n            }\n        } else originalTypes\n    }"

    .line 22
    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    .line 34
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method
