.class final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/c/b;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/b;)V
    .locals 1

    const-string v0, "fqNameToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 1

    const-string v0, "fqName"

    .line 223
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 223
    :goto_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z
    .locals 0

    .line 223
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$b;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    .line 1071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
