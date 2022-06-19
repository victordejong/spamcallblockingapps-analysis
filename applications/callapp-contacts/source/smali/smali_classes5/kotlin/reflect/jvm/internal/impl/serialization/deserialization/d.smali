.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

.field private final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/a;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 35
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    invoke-direct {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Object;
    .locals 1

    const-string v0, "container"

    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11104
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 12033
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/a;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 11104
    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11105
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    .line 13028
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 11105
    invoke-virtual {v0, p3, p2, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 10035
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/a;->k:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 96
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 10071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 96
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 126
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 96
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    invoke-virtual {v2, v1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$r;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 11036
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/a;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 100
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 11071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 100
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 130
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 131
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 100
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    invoke-virtual {v2, v1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 38
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 2027
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 38
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 39
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 110
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 111
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 39
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    .line 3028
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 39
    invoke-virtual {v3, v2, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$f;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$f;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 7032
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/a;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 70
    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 7071
    sget-object p2, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p2, Ljava/util/List;

    .line 71
    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 118
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 119
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 72
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    .line 8028
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 72
    invoke-virtual {v2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    if-eqz v0, :cond_0

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 4026
    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/serialization/a;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 48
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 49
    :cond_0
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    if-eqz v0, :cond_1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 4028
    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/serialization/a;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 49
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 50
    :cond_1
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    if-eqz v0, :cond_7

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a;->a:[I

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 53
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 4031
    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/serialization/a;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 53
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unsupported callable kind with property proto"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 52
    :cond_3
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 4030
    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/serialization/a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 52
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 51
    :cond_4
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 4029
    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/serialization/a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 51
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    if-nez p2, :cond_5

    .line 4071
    sget-object p2, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p2, Ljava/util/List;

    .line 58
    :cond_5
    check-cast p2, Ljava/lang/Iterable;

    .line 113
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 114
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 115
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 59
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    .line 5028
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 59
    invoke-virtual {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_6
    check-cast p3, Ljava/util/List;

    return-object p3

    :cond_7
    const-string p1, "Unknown message: "

    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;ILkotlin/reflect/jvm/internal/impl/b/a$t;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;",
            "I",
            "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    const-string p4, "container"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callableProto"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "proto"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/a;

    .line 8034
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/a;->j:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    .line 83
    invoke-virtual {p5, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 8071
    sget-object p2, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p2, Ljava/util/List;

    .line 84
    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    .line 121
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 122
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 123
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 85
    iget-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    .line 9028
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 85
    invoke-virtual {p5, p4, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    check-cast p3, Ljava/util/List;

    return-object p3
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
