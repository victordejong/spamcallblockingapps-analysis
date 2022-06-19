.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/c/e;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 115
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/a/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

    .line 2081
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->a:Ljava/util/HashMap;

    .line 117
    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->d:Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    const-string v4, "parameter.type"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 1081
    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;->b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 2

    const-string v0, "enumClassId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->d:Ljava/util/ArrayList;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b;->d:Ljava/util/ArrayList;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
