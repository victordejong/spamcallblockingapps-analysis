.class final Lkotlin/reflect/jvm/internal/impl/load/java/a/h$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/a/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V
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
        "*>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/a/h;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/a/h;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1143
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/d;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/h;

    .line 2108
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/b;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

    .line 1143
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/b;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1144
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/c;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/ai;->a(Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method
