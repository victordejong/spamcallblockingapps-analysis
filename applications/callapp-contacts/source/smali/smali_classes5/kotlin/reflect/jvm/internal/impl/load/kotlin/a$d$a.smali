.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;


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

    .line 321
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;)V

    return-void
.end method


# virtual methods
.method public final a(ILkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
    .locals 2

    const-string v0, "classId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p1

    .line 328
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 331
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;->b:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

    invoke-static {p1, p2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    move-result-object p1

    return-object p1
.end method
