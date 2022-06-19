.class final Lkotlin/reflect/jvm/internal/l$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/l;-><init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/a/d<",
        "+",
        "Ljava/lang/reflect/Member;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/l;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/l;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 13

    .line 1094
    sget-object v0, Lkotlin/reflect/jvm/internal/ah;->b:Lkotlin/reflect/jvm/internal/ah;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/ah;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/d;

    move-result-object v0

    .line 1096
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1097
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    .line 2037
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/l;->b:Lkotlin/reflect/jvm/internal/k;

    .line 1097
    check-cast v0, Lkotlin/reflect/jvm/internal/d$e;

    .line 2061
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/d$e;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    .line 3019
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;->a:Ljava/lang/String;

    .line 3062
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/d$e;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    .line 4019
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;->b:Ljava/lang/String;

    .line 1097
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/l;->c()Lkotlin/reflect/jvm/internal/a/d;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/a/d;->a()Ljava/lang/reflect/Member;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v1, v4, v0, v5}, Lkotlin/reflect/jvm/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    goto/16 :goto_2

    .line 1099
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$d;

    const/16 v4, 0xa

    if-eqz v1, :cond_3

    .line 1100
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1101
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    .line 4037
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/l;->b:Lkotlin/reflect/jvm/internal/k;

    .line 1101
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v6

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/l;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1187
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1188
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1189
    check-cast v2, Lkotlin/reflect/k;

    .line 1101
    invoke-interface {v2}, Lkotlin/reflect/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1190
    :cond_1
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 1101
    sget-object v8, Lkotlin/reflect/jvm/internal/a/a$a;->CALL_BY_NAME:Lkotlin/reflect/jvm/internal/a/a$a;

    sget-object v9, Lkotlin/reflect/jvm/internal/a/a$b;->KOTLIN:Lkotlin/reflect/jvm/internal/a/a$b;

    new-instance v0, Lkotlin/reflect/jvm/internal/a/a;

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lkotlin/reflect/jvm/internal/a/a;-><init>(Ljava/lang/Class;Ljava/util/List;Lkotlin/reflect/jvm/internal/a/a$a;Lkotlin/reflect/jvm/internal/a/a$b;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    return-object v0

    .line 1102
    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    .line 5037
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/l;->b:Lkotlin/reflect/jvm/internal/k;

    .line 1102
    check-cast v0, Lkotlin/reflect/jvm/internal/d$d;

    .line 5070
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/d$d;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    .line 6019
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;->b:Ljava/lang/String;

    const-string v4, "desc"

    .line 1102
    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6232
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6233
    check-cast v5, Ljava/util/List;

    invoke-virtual {v1, v5, v0, v2}, Lkotlin/reflect/jvm/internal/k;->a(Ljava/util/List;Ljava/lang/String;Z)V

    .line 6234
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 6232
    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/k;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1102
    check-cast v0, Ljava/lang/reflect/Member;

    goto :goto_2

    .line 1104
    :cond_3
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$a;

    if-eqz v1, :cond_5

    .line 1105
    check-cast v0, Lkotlin/reflect/jvm/internal/d$a;

    .line 7086
    iget-object v10, v0, Lkotlin/reflect/jvm/internal/d$a;->a:Ljava/util/List;

    .line 1106
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    .line 8037
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/l;->b:Lkotlin/reflect/jvm/internal/k;

    .line 1106
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v6

    move-object v0, v10

    check-cast v0, Ljava/lang/Iterable;

    .line 1191
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1192
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1193
    check-cast v2, Ljava/lang/reflect/Method;

    const-string v3, "it"

    .line 1106
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1194
    :cond_4
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 1106
    sget-object v8, Lkotlin/reflect/jvm/internal/a/a$a;->CALL_BY_NAME:Lkotlin/reflect/jvm/internal/a/a$a;

    sget-object v9, Lkotlin/reflect/jvm/internal/a/a$b;->JAVA:Lkotlin/reflect/jvm/internal/a/a$b;

    new-instance v0, Lkotlin/reflect/jvm/internal/a/a;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/a/a;-><init>(Ljava/lang/Class;Ljava/util/List;Lkotlin/reflect/jvm/internal/a/a$a;Lkotlin/reflect/jvm/internal/a/a$b;Ljava/util/List;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    return-object v0

    :cond_5
    move-object v0, v3

    .line 1115
    :goto_2
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_6

    .line 1116
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lkotlin/reflect/jvm/internal/l;->a(Lkotlin/reflect/jvm/internal/l;Ljava/lang/reflect/Constructor;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/a/e;

    move-result-object v0

    goto :goto_4

    .line 1117
    :cond_6
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_8

    .line 1121
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/aj;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isCompanionObject()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1123
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/l;->b(Lkotlin/reflect/jvm/internal/l;Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/a/e$h;

    move-result-object v0

    goto :goto_3

    .line 1126
    :cond_7
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/l;->c(Lkotlin/reflect/jvm/internal/l;Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/a/e$h;

    move-result-object v0

    .line 1117
    :goto_3
    check-cast v0, Lkotlin/reflect/jvm/internal/a/e;

    goto :goto_4

    :cond_8
    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_9

    .line 1114
    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    .line 1129
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$b;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v0, v1, v2}, Lkotlin/reflect/jvm/internal/a/h;->a(Lkotlin/reflect/jvm/internal/a/d;Lkotlin/reflect/jvm/internal/impl/descriptors/b;Z)Lkotlin/reflect/jvm/internal/a/d;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v3
.end method
