.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/u;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;->a:Ljava/lang/Class;

    .line 1071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 32
    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/reflect/Type;
    .locals 1

    .line 4024
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;->a:Ljava/lang/Class;

    .line 24
    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/a;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;->d:Z

    return v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/builtins/h;
    .locals 2

    .line 2024
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;->a:Ljava/lang/Class;

    .line 26
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3024
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/v;->a:Ljava/lang/Class;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object v0

    return-object v0
.end method
