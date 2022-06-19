.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a;,
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$b;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$b;

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$b;

    .line 87
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->d:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lkotlin/a/ap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;)V
    .locals 1

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 10038
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 29
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$c;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic a()Ljava/util/Set;
    .locals 1

    .line 27
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->d:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 14

    .line 12072
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a;->a:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 11038
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 13048
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->k:Ljava/lang/Iterable;

    .line 11038
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;

    .line 11039
    invoke-interface {v2, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 14027
    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->d:Ljava/util/Set;

    .line 11041
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return-object v2

    .line 14072
    :cond_2
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    if-nez p1, :cond_3

    .line 11044
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 15041
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    .line 11044
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v2

    .line 16000
    :cond_3
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 17000
    iget-object v10, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;->b:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 18000
    iget-object v11, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;->c:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    .line 19000
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 11047
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->d()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "name"

    const-string v5, "classId.shortClassName"

    if-eqz v3, :cond_7

    .line 19033
    invoke-virtual {p0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    .line 11049
    instance-of v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v3, :cond_4

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    goto :goto_0

    :cond_4
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_5

    return-object v2

    .line 11052
    :cond_5
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19155
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v2

    .line 20052
    :cond_6
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    goto/16 :goto_3

    .line 11056
    :cond_7
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 21043
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    .line 11056
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v6

    const-string v7, "classId.packageFqName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/ah;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/af;Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/util/List;

    move-result-object v3

    .line 11057
    check-cast v3, Ljava/lang/Iterable;

    .line 11093
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    .line 11057
    instance-of v8, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;

    const/4 v9, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_a

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22037
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;->a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v7

    .line 22038
    instance-of v13, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    if-eqz v13, :cond_9

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->d()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_b

    :cond_a
    const/4 v9, 0x1

    :cond_b
    if-eqz v9, :cond_8

    goto :goto_2

    :cond_c
    move-object v6, v2

    .line 11057
    :goto_2
    move-object v4, v6

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-nez v4, :cond_d

    return-object v2

    .line 11060
    :cond_d
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 11062
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 22301
    iget-object p0, v10, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    const-string v0, "classProto.typeTable"

    .line 11062
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;-><init>(Lkotlin/reflect/jvm/internal/impl/b/a$s;)V

    .line 11063
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/b/i;->a:Lkotlin/reflect/jvm/internal/impl/b/b/i$a;

    .line 22350
    iget-object p0, v10, Lkotlin/reflect/jvm/internal/impl/b/a$b;->q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    const-string v0, "classProto.versionRequirementTable"

    .line 11063
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/b/b/i$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-result-object v7

    const/4 v9, 0x0

    move-object v5, v1

    move-object v8, v11

    .line 11060
    invoke-virtual/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object p0

    :goto_3
    move-object v4, p0

    .line 11069
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    move-object v3, p0

    move-object v5, v10

    move-object v6, v1

    move-object v7, v11

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/b/a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->c:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p1
.end method
