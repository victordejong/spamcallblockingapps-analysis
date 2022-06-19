.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/c/e;

.field final synthetic d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic e:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->d:Ljava/util/ArrayList;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->e:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->e:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->e:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 128
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a()V

    .line 129
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

    .line 1081
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Ljava/util/HashMap;

    .line 129
    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->d:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->e:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->e:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    invoke-interface {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;->e:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V

    return-void
.end method
