.class final Lkotlin/reflect/jvm/internal/impl/load/java/a/i$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/a/i;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Lkotlin/reflect/jvm/internal/impl/c/e;",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "+",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/a/i;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/a/i;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/i$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1129
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/i$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/i;

    .line 2108
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

    .line 1130
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/d;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/i$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/i;

    .line 3108
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

    .line 1130
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/e;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v0

    goto :goto_0

    .line 1131
    :cond_0
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/d;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/i$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/i;

    .line 4108
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

    .line 1131
    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 1134
    :cond_2
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/c;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->b()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/ai;->a(Lkotlin/n;)Ljava/util/Map;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v2

    :cond_3
    return-object v2
.end method
