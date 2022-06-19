.class final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$f;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;",
        "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$b<",
        "+TA;+TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a<",
            "TA;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a<",
            "TA;TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$f;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 44
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    const-string v0, "kotlinClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$f;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

    .line 2301
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2302
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2304
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;

    invoke-direct {v4, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Ljava/util/HashMap;Ljava/util/HashMap;)V

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$d;

    .line 2350
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2304
    invoke-interface {p1, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$d;)V

    .line 2352
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$b;

    check-cast v2, Ljava/util/Map;

    check-cast v3, Ljava/util/Map;

    invoke-direct {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$b;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method
