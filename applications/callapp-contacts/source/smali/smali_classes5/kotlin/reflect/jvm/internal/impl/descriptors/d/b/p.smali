.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/p;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/n;


# instance fields
.field public final a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/p;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    .line 1022
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/p;->a:Ljava/lang/reflect/Field;

    .line 24
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic f()Ljava/lang/reflect/Member;
    .locals 1

    .line 2022
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/p;->a:Ljava/lang/reflect/Field;

    .line 22
    check-cast v0, Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public final synthetic g()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;
    .locals 2

    .line 2027
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;

    .line 3022
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/p;->a:Ljava/lang/reflect/Field;

    .line 2027
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;->a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    move-result-object v0

    .line 22
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    return-object v0
.end method
