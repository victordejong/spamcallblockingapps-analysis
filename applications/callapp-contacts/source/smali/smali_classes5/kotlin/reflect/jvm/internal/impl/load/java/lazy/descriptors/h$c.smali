.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 54
    move-object/from16 v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;

    const-string v2, "request"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/c/a;

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    .line 2045
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    .line 3028
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 3126
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 1055
    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 4126
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    if-eqz v3, :cond_0

    .line 1060
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 5112
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 6047
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    .line 6126
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    .line 1060
    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    move-result-object v3

    goto :goto_0

    .line 1062
    :cond_0
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 7112
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 8047
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    .line 1062
    invoke-interface {v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    move-result-object v3

    :goto_0
    const/4 v9, 0x0

    if-nez v3, :cond_1

    move-object v4, v9

    goto :goto_1

    .line 1064
    :cond_1
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_2

    move-object v5, v9

    goto :goto_2

    .line 1066
    :cond_2
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->c()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_4

    .line 1069
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/c/a;->e()Z

    move-result v6

    if-nez v6, :cond_3

    .line 8070
    iget-boolean v5, v5, Lkotlin/reflect/jvm/internal/impl/c/a;->a:Z

    if-eqz v5, :cond_4

    :cond_3
    return-object v9

    .line 1071
    :cond_4
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b;

    move-result-object v4

    .line 1072
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$a;

    if-eqz v5, :cond_5

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$a;

    .line 8105
    iget-object v1, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v1

    .line 1073
    :cond_5
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$c;

    if-eqz v5, :cond_6

    return-object v9

    .line 1074
    :cond_6
    instance-of v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$b;

    if-eqz v4, :cond_10

    .line 8126
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    if-nez v1, :cond_a

    .line 1076
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 9112
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 10046
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/n;

    .line 1077
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/n$a;

    if-nez v3, :cond_7

    :goto_3
    move-object v5, v9

    goto :goto_4

    .line 1186
    :cond_7
    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$a;

    if-nez v4, :cond_8

    move-object v3, v9

    :cond_8
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$a;

    if-nez v3, :cond_9

    goto :goto_3

    .line 11038
    :cond_9
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$a;->a:[B

    move-object v5, v3

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, v2

    .line 1077
    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/n$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;[BLkotlin/reflect/jvm/internal/impl/load/java/d/g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1076
    invoke-interface {v1, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/n;->a(Lkotlin/reflect/jvm/internal/impl/load/java/n$a;)Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-result-object v1

    :cond_a
    move-object v13, v1

    .line 1084
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/ab;->BINARY:Lkotlin/reflect/jvm/internal/impl/load/java/d/ab;

    if-nez v1, :cond_c

    .line 1085
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t find kotlin binary class for light class created by kotlin binary file\nJavaClass: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nClassId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nfindKotlinClass(JavaClass) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 11112
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 12047
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    const-string v5, "<this>"

    .line 1089
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "javaClass"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13047
    invoke-interface {v4, v13}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object v9

    .line 1086
    :goto_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nfindKotlinClass(ClassId) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 13112
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 14047
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    .line 1090
    invoke-static {v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/n;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object v2

    .line 1086
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1085
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    if-nez v13, :cond_d

    move-object v1, v9

    goto :goto_6

    .line 1094
    :cond_d
    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->e()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_f

    .line 14063
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/c/b;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    .line 14101
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1095
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->d()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    .line 15045
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    .line 16028
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 1095
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_7

    .line 1098
    :cond_e
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    .line 16045
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    .line 1098
    move-object v12, v1

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1099
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 16112
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 17063
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->s:Lkotlin/reflect/jvm/internal/impl/load/java/o;

    .line 1099
    move-object v2, v9

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/b/d;

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/o;->a(Lkotlin/reflect/jvm/internal/impl/load/java/b/d;)V

    :cond_f
    :goto_7
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v9

    :cond_10
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method
