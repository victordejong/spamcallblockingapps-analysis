.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;
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

.field final synthetic b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;",
            "Ljava/util/List<",
            "TA;>;>;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a<",
            "TA;TC;>;",
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;",
            "Ljava/util/List<",
            "TA;>;>;",
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;",
            "TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;->c:Ljava/util/HashMap;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$e;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "name.asString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$e;

    return-object v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "name.asString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p1

    .line 318
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;

    invoke-direct {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;

    return-object p2
.end method
