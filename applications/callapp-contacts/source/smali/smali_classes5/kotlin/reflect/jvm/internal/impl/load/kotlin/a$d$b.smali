.class public Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    .line 338
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    move-result-object p1

    return-object p1
.end method

.method protected final a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;
    .locals 1

    .line 337
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 345
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;->b:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
