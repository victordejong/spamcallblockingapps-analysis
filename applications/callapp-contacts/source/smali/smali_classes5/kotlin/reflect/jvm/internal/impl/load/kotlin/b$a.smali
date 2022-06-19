.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

.field final synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlin/reflect/jvm/internal/impl/descriptors/at;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/at;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->d:Ljava/util/List;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Ljava/util/HashMap;

    return-void
.end method

.method static b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    .line 139
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    if-nez p1, :cond_0

    .line 140
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/k;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/k$a;

    const-string p1, "Unsupported annotation argument: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/k$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/k;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const-string v3, "NO_SOURCE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, p2, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 126
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;

    invoke-direct {v1, p2, p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/ArrayList;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    return-object v1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-direct {v0, p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;

    return-object v0
.end method

.method public final a()V
    .locals 5

    .line 135
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->d:Ljava/util/List;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/d;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/d;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    invoke-direct {v1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    invoke-direct {v1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
