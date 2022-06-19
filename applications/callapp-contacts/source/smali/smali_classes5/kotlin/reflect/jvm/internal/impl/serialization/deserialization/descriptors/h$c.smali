.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "[B>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "[B>;"
        }
    .end annotation
.end field

.field private final f:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/reflect/jvm/internal/impl/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/h<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ax;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final j:Lkotlin/reflect/jvm/internal/impl/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 257
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "functionNames"

    const-string v5, "getFunctionNames()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 261
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KDeclarationContainer;

    const-string/jumbo v3, "variableNames"

    const-string v4, "getVariableNames()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
            ">;)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    check-cast p2, Ljava/util/Collection;

    .line 513
    check-cast p2, Ljava/lang/Iterable;

    .line 514
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 515
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 516
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 513
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v3

    .line 20079
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 513
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 20608
    iget v2, v2, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    .line 233
    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    .line 518
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 517
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 521
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 525
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->c:Ljava/util/Map;

    .line 235
    check-cast p3, Ljava/util/Collection;

    .line 528
    check-cast p3, Ljava/lang/Iterable;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 529
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 530
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 531
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 528
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v2

    .line 21079
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 528
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 21579
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d:I

    .line 235
    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    .line 533
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 536
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 540
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_3
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->d:Ljava/util/Map;

    .line 238
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 22042
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 22078
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 23040
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 238
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;->getTypeAliasesAllowed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 239
    check-cast p4, Ljava/util/Collection;

    .line 543
    check-cast p4, Ljava/lang/Iterable;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 544
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 545
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 546
    move-object v0, p4

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 543
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v1

    .line 23079
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 543
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    .line 23248
    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c:I

    .line 239
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    .line 548
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 547
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 551
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 555
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 239
    :cond_5
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_3

    .line 241
    :cond_6
    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object p1

    .line 238
    :goto_3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->e:Ljava/util/Map;

    .line 251
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 24042
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 24096
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 25038
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 251
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$c;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$c;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->f:Lkotlin/reflect/jvm/internal/impl/f/g;

    .line 253
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 25042
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 25096
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 26038
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 253
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$d;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$d;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->g:Lkotlin/reflect/jvm/internal/impl/f/g;

    .line 255
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 26042
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 26096
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 27038
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 255
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$e;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$e;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->h:Lkotlin/reflect/jvm/internal/impl/f/h;

    .line 257
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 27042
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 27096
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 28038
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 257
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$b;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    invoke-direct {p2, p0, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$b;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->i:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 261
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 28042
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 28096
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 29038
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 261
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$f;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    invoke-direct {p2, p0, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$f;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->j:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;
    .locals 6

    .line 31274
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->c:Ljava/util/Map;

    .line 31275
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    const-string v2, "PARSER"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31276
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 31582
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object p0, v3

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 31583
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31584
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;

    invoke-direct {v0, v1, v4, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Ljava/io/ByteArrayInputStream;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/g/k;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/g/h;

    move-result-object p0

    .line 31586
    invoke-static {p0}, Lkotlin/g/k;->f(Lkotlin/g/h;)Ljava/util/List;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    .line 32071
    sget-object p0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p0, Ljava/util/List;

    .line 31587
    check-cast p0, Ljava/util/Collection;

    goto :goto_1

    .line 31582
    :cond_1
    check-cast p0, Ljava/util/Collection;

    .line 31597
    :goto_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 31599
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 31598
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 33042
    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 33094
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    const-string v5, "it"

    .line 31276
    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_2

    .line 31598
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31597
    :cond_4
    check-cast v1, Ljava/util/ArrayList;

    .line 31604
    move-object p0, v1

    check-cast p0, Ljava/util/List;

    .line 31277
    invoke-virtual {v2, p1, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/List;)V

    .line 31605
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/a;",
            ">;>;)",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "[B>;"
        }
    .end annotation

    .line 558
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/a/ai;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    .line 559
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 560
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 561
    check-cast v1, Ljava/util/Map$Entry;

    .line 559
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 245
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 562
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 563
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 564
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/a;

    .line 246
    move-object v6, v3

    check-cast v6, Ljava/io/OutputStream;

    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/a;->a(Ljava/io/OutputStream;)V

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;)Ljava/util/Map;
    .locals 0

    .line 228
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;
    .locals 5

    .line 33312
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->d:Ljava/util/Map;

    .line 33313
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    const-string v2, "PARSER"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33314
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 33621
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 33622
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 33623
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;

    invoke-direct {v0, v1, v3, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Ljava/io/ByteArrayInputStream;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/g/k;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/g/h;

    move-result-object p0

    .line 33625
    invoke-static {p0}, Lkotlin/g/k;->f(Lkotlin/g/h;)Ljava/util/List;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    .line 34071
    sget-object p0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p0, Ljava/util/List;

    .line 33626
    check-cast p0, Ljava/util/Collection;

    goto :goto_1

    .line 33621
    :cond_1
    check-cast p0, Ljava/util/Collection;

    .line 33636
    :goto_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 33638
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 33637
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 35042
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 35094
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    const-string v4, "it"

    .line 33314
    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    .line 33637
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33636
    :cond_2
    check-cast v1, Ljava/util/ArrayList;

    .line 33642
    move-object p0, v1

    check-cast p0, Ljava/util/List;

    .line 33315
    invoke-virtual {v2, p1, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/List;)V

    .line 33643
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;)Ljava/util/Map;
    .locals 0

    .line 228
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/ax;
    .locals 2

    .line 35319
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 35322
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v1, Ljava/io/InputStream;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 36042
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 36078
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 37053
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->p:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    .line 35321
    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$q;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 35324
    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 38042
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 38094
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    .line 35324
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 29071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 328
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 329
    :cond_0
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->f:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->i:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/ax;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->h:Lkotlin/reflect/jvm/internal/impl/f/h;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    return-object p1
.end method

.method public final a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kindFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 30150
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->g()I

    move-result v0

    .line 347
    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result v0

    const-string v1, "INSTANCE"

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 645
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 647
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-virtual {p0, v3, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 653
    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/f$a;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v0, v3}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 654
    check-cast v2, Ljava/util/Collection;

    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 355
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 31149
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->f()I

    move-result v0

    .line 355
    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 357
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->a()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 658
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    invoke-virtual {p0, v2, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 664
    :cond_4
    move-object p2, v0

    check-cast p2, Ljava/util/List;

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/f$a;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/util/Comparator;

    invoke-static {p2, p3}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 665
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->b()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 30071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 337
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 338
    :cond_0
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->g:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final b()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->j:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
