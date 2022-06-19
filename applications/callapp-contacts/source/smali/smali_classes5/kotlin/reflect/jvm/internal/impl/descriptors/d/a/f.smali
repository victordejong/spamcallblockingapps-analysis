.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;


# instance fields
.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    .line 49
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;-><init>(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;
    .locals 1

    .line 49
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;)V
    .locals 2

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;)V

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$d;)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "visitor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;

    move-object/from16 v2, p0

    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    const-string v4, "klass"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "memberVisitor"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "klass.declaredMethods"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    const-string v8, "annotations"

    const-string v9, "annotation"

    if-ge v7, v5, :cond_4

    aget-object v10, v4, v7

    add-int/lit8 v7, v7, 0x1

    .line 1097
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v11

    const-string v12, "identifier(method.name)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/l;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/l;

    const-string v12, "method"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/l;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$e;

    move-result-object v11

    .line 1099
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v12

    const-string v13, "method.declaredAnnotations"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_0

    aget-object v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    .line 1100
    move-object v6, v11

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;Ljava/lang/annotation/Annotation;)V

    goto :goto_1

    .line 1103
    :cond_0
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    const-string v10, "method.parameterAnnotations"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, [[Ljava/lang/annotation/Annotation;

    move-object v10, v6

    check-cast v10, [Ljava/lang/Object;

    array-length v10, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_3

    aget-object v13, v6, v12

    add-int/lit8 v14, v12, 0x1

    .line 1104
    invoke-static {v13, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v15, v13

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v15, :cond_2

    move-object/from16 v16, v4

    aget-object v4, v13, v2

    add-int/lit8 v2, v2, 0x1

    .line 1105
    invoke-static {v4}, Lkotlin/jvm/a;->a(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/c;

    move-result-object v17

    move/from16 v18, v2

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/a;->a(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v2

    move/from16 v17, v5

    .line 1106
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v5

    move-object/from16 v19, v6

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/b;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/b;-><init>(Ljava/lang/annotation/Annotation;)V

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    invoke-interface {v11, v12, v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$e;->a(ILkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1107
    invoke-virtual {v1, v5, v4, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_1
    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v2, v18

    move-object/from16 v6, v19

    goto :goto_3

    :cond_2
    move-object/from16 v2, p0

    move v12, v14

    goto :goto_2

    :cond_3
    move-object/from16 v16, v4

    move/from16 v17, v5

    .line 1112
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$e;->b()V

    move-object/from16 v2, p0

    goto/16 :goto_0

    .line 1117
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v4, "klass.declaredConstructors"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_a

    aget-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    const-string v7, "<init>"

    .line 1118
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/c/e;->c(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v7

    const-string v10, "special(\"<init>\")"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/l;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/l;

    const-string v10, "constructor"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/l;->a(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$e;

    move-result-object v7

    .line 1120
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    const-string v11, "constructor.declaredAnnotations"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_5

    aget-object v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    .line 1121
    move-object v14, v7

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;

    invoke-static {v13, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    .line 1124
    :cond_5
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v10

    const-string v11, "parameterAnnotations"

    .line 1125
    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v10

    check-cast v11, [Ljava/lang/Object;

    array-length v12, v11

    const/4 v13, 0x1

    if-nez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    xor-int/2addr v12, v13

    if-eqz v12, :cond_9

    .line 1132
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    array-length v12, v11

    sub-int/2addr v6, v12

    .line 1134
    array-length v11, v11

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_9

    aget-object v13, v10, v12

    add-int/lit8 v14, v12, 0x1

    .line 1135
    invoke-static {v13, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v15, v13

    move-object/from16 v16, v2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v15, :cond_8

    move/from16 v17, v4

    aget-object v4, v13, v2

    add-int/lit8 v2, v2, 0x1

    .line 1136
    invoke-static {v4}, Lkotlin/jvm/a;->a(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/c;

    move-result-object v18

    move/from16 v19, v2

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/a;->a(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v2

    move/from16 v18, v5

    add-int v5, v12, v6

    move/from16 v20, v6

    .line 1138
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    move-object/from16 v21, v8

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/b;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/b;-><init>(Ljava/lang/annotation/Annotation;)V

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 1137
    invoke-interface {v7, v5, v6, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$e;->a(ILkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1140
    invoke-virtual {v1, v5, v4, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_7
    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v2, v19

    move/from16 v6, v20

    move-object/from16 v8, v21

    goto :goto_8

    :cond_8
    move v12, v14

    move-object/from16 v2, v16

    goto :goto_7

    :cond_9
    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v21, v8

    .line 1146
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$e;->b()V

    move-object/from16 v2, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v8, v21

    goto/16 :goto_4

    .line 1151
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "klass.declaredFields"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_c

    aget-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 1152
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    const-string v7, "identifier(field.name)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/l;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/l;

    const-string v7, "field"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/l;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$d;->b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;

    move-result-object v6

    .line 1154
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    const-string v7, "field.declaredAnnotations"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v5

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v7, :cond_b

    aget-object v10, v5, v8

    add-int/lit8 v8, v8, 0x1

    .line 1155
    invoke-static {v10, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;Ljava/lang/annotation/Annotation;)V

    goto :goto_a

    .line 1158
    :cond_b
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;->b()V

    goto :goto_9

    :cond_c
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 61
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "klass.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    const/4 v3, 0x0

    .line 1063
    invoke-static {v0, v1, v2, v3}, Lkotlin/h/p;->a(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    .line 64
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 74
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 76
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
