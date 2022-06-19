.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

.field private final c:Lkotlin/reflect/jvm/internal/impl/b/b/a;

.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/at;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/b/a$l;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/a;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/at;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classSource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 28
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->c:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    .line 29
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->d:Lkotlin/jvm/functions/Function1;

    .line 23665
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    const-string p2, "proto.class_List"

    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    const/16 p2, 0xa

    .line 44
    invoke-static {p1, p2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lkotlin/a/ai;->a(I)I

    move-result p2

    const/16 p3, 0x10

    invoke-static {p2, p3}, Lkotlin/f/d;->c(II)I

    move-result p2

    .line 45
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 47
    move-object p4, p2

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 23957
    iget p4, p4, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c:I

    .line 33
    invoke-static {v0, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;
    .locals 5

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->c:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    invoke-direct {v1, v2, v0, v3, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;-><init>(Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/a$b;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    return-object v1
.end method
