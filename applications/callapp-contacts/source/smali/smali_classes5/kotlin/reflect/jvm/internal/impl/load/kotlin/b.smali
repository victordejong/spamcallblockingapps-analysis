.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

.field private final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;)V

    .line 35
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 36
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 42
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    invoke-direct {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 34
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    const-string v0, "constant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2066
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/d;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/t;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/d;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/t;-><init>(B)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object v0

    .line 2067
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/r;

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/w;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/r;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/r;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/w;-><init>(S)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object v0

    .line 2068
    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/m;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/u;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/m;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/m;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/u;-><init>(I)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object v0

    .line 2069
    :cond_2
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/p;

    if-eqz v0, :cond_3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/v;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/p;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/p;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/v;-><init>(J)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object v0

    :cond_3
    return-object p1
.end method

.method protected final synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/lang/Object;
    .locals 1

    const-string v0, "proto"

    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2045
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/at;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;"
        }
    .end annotation

    const-string v0, "annotationClassId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/v;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    .line 81
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;

    invoke-direct {v0, p1, p0, p3, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    return-object v0
.end method
