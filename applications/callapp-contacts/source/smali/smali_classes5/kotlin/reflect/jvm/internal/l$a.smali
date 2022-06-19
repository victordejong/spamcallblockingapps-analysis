.class final Lkotlin/reflect/jvm/internal/l$a;
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0012\u0012\u0002\u0008\u0003 \u0002*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "kotlin.jvm.PlatformType",
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

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 11

    .line 1062
    sget-object v0, Lkotlin/reflect/jvm/internal/ah;->b:Lkotlin/reflect/jvm/internal/ah;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/ah;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/d;

    move-result-object v0

    .line 1064
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$d;

    const/16 v2, 0xa

    if-eqz v1, :cond_2

    .line 1065
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1066
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    .line 2037
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/l;->b:Lkotlin/reflect/jvm/internal/k;

    .line 1066
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/l;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1187
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1188
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1189
    check-cast v2, Lkotlin/reflect/k;

    .line 1066
    invoke-interface {v2}, Lkotlin/reflect/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1190
    :cond_0
    move-object v5, v1

    check-cast v5, Ljava/util/List;

    .line 1066
    sget-object v6, Lkotlin/reflect/jvm/internal/a/a$a;->POSITIONAL_CALL:Lkotlin/reflect/jvm/internal/a/a$a;

    sget-object v7, Lkotlin/reflect/jvm/internal/a/a$b;->KOTLIN:Lkotlin/reflect/jvm/internal/a/a$b;

    new-instance v0, Lkotlin/reflect/jvm/internal/a/a;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lkotlin/reflect/jvm/internal/a/a;-><init>(Ljava/lang/Class;Ljava/util/List;Lkotlin/reflect/jvm/internal/a/a$a;Lkotlin/reflect/jvm/internal/a/a$b;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    return-object v0

    .line 1067
    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    .line 3037
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/l;->b:Lkotlin/reflect/jvm/internal/k;

    .line 1067
    check-cast v0, Lkotlin/reflect/jvm/internal/d$d;

    .line 3070
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/d$d;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    .line 4019
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;->b:Ljava/lang/String;

    .line 1067
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/k;->a(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    goto :goto_1

    .line 1069
    :cond_2
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    .line 4037
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/l;->b:Lkotlin/reflect/jvm/internal/k;

    .line 1069
    check-cast v0, Lkotlin/reflect/jvm/internal/d$e;

    .line 4061
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/d$e;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    .line 5019
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;->a:Ljava/lang/String;

    .line 5062
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/d$e;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    .line 6019
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;->b:Ljava/lang/String;

    .line 1069
    invoke-virtual {v1, v2, v0}, Lkotlin/reflect/jvm/internal/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    goto :goto_1

    .line 1070
    :cond_3
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$c;

    if-eqz v1, :cond_4

    check-cast v0, Lkotlin/reflect/jvm/internal/d$c;

    .line 6075
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/d$c;->a:Ljava/lang/reflect/Method;

    .line 1070
    check-cast v0, Ljava/lang/reflect/Member;

    goto :goto_1

    .line 1071
    :cond_4
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$b;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlin/reflect/jvm/internal/d$b;

    .line 6079
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/d$b;->a:Ljava/lang/reflect/Constructor;

    .line 1071
    check-cast v0, Ljava/lang/reflect/Member;

    .line 1079
    :goto_1
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_5

    .line 1080
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lkotlin/reflect/jvm/internal/l;->a(Lkotlin/reflect/jvm/internal/l;Ljava/lang/reflect/Constructor;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/a/e;

    move-result-object v0

    goto :goto_3

    .line 1081
    :cond_5
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_8

    .line 1082
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1083
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/l;->a(Lkotlin/reflect/jvm/internal/l;Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/a/e$h;

    move-result-object v0

    goto :goto_2

    .line 1084
    :cond_6
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/aj;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1085
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/l;->b(Lkotlin/reflect/jvm/internal/l;Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/a/e$h;

    move-result-object v0

    goto :goto_2

    .line 1087
    :cond_7
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/l;->c(Lkotlin/reflect/jvm/internal/l;Ljava/lang/reflect/Method;)Lkotlin/reflect/jvm/internal/a/e$h;

    move-result-object v0

    .line 1081
    :goto_2
    check-cast v0, Lkotlin/reflect/jvm/internal/a/e;

    .line 1078
    :goto_3
    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    .line 1090
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/a/h;->a(Lkotlin/reflect/jvm/internal/a/d;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/a/d;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_8
    new-instance v1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not compute caller for function: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (member = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1072
    :cond_9
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/d$a;

    if-eqz v1, :cond_b

    .line 1073
    check-cast v0, Lkotlin/reflect/jvm/internal/d$a;

    .line 6086
    iget-object v8, v0, Lkotlin/reflect/jvm/internal/d$a;->a:Ljava/util/List;

    .line 1074
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/l$a;->a:Lkotlin/reflect/jvm/internal/l;

    .line 7037
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/l;->b:Lkotlin/reflect/jvm/internal/k;

    .line 1074
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v4

    move-object v0, v8

    check-cast v0, Ljava/lang/Iterable;

    .line 1191
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1192
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1193
    check-cast v2, Ljava/lang/reflect/Method;

    const-string v3, "it"

    .line 1074
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1194
    :cond_a
    move-object v5, v1

    check-cast v5, Ljava/util/List;

    .line 1074
    sget-object v6, Lkotlin/reflect/jvm/internal/a/a$a;->POSITIONAL_CALL:Lkotlin/reflect/jvm/internal/a/a$a;

    sget-object v7, Lkotlin/reflect/jvm/internal/a/a$b;->JAVA:Lkotlin/reflect/jvm/internal/a/a$b;

    new-instance v0, Lkotlin/reflect/jvm/internal/a/a;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/a/a;-><init>(Ljava/lang/Class;Ljava/util/List;Lkotlin/reflect/jvm/internal/a/a$a;Lkotlin/reflect/jvm/internal/a/a$b;Ljava/util/List;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/d;

    return-object v0

    :cond_b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
