.class public final Lkotlin/reflect/jvm/internal/impl/load/java/b/e;
.super Lkotlin/reflect/jvm/internal/impl/load/java/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V
    .locals 14

    move-object v0, p1

    const-string v1, "ownerDescriptor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getterMethod"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "overriddenProperty"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 21
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v4

    .line 22
    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v5

    .line 23
    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v6

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 25
    :goto_0
    invoke-interface/range {p4 .. p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v8

    .line 26
    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object v9

    const/4 v10, 0x0

    .line 28
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, v0

    .line 19
    invoke-direct/range {v2 .. v13}, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZLkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;ZLkotlin/n;)V

    return-void
.end method
