.class final Lcom/esotericsoftware/kryo/serializers/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;


# instance fields
.field final b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

.field c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

.field d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 74
    sput-object v0, Lcom/esotericsoftware/kryo/serializers/b;->a:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 77
    iput-object v1, p0, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 78
    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/b;->e:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;
    .locals 2

    .line 392
    const-class v0, Lcom/esotericsoftware/kryo/h;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    move-object p2, v1

    .line 393
    :cond_0
    const-class v0, Lcom/esotericsoftware/kryo/i;

    if-ne p3, v0, :cond_1

    move-object p3, v1

    :cond_1
    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 394
    const-class p3, Lcom/esotericsoftware/kryo/i$c;

    :cond_2
    if-nez p3, :cond_3

    return-object v1

    .line 396
    :cond_3
    invoke-static {p3, p2}, Lcom/esotericsoftware/kryo/c/n;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/i;

    move-result-object p2

    iget-object p3, p0, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p3, p3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-interface {p2, p3, p1}, Lcom/esotericsoftware/kryo/i;->a(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 21

    move-object/from16 v1, p0

    .line 87
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/b;->a:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    iput-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 89
    iput-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 90
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->initializeCachedFields()V

    return-void

    .line 94
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    sget-boolean v0, Lcom/esotericsoftware/kryo/c/n;->b:Z

    const/4 v5, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/esotericsoftware/kryo/c/n;->a:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 96
    :goto_0
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    move-object v7, v0

    .line 97
    :goto_1
    const-class v0, Ljava/lang/Object;

    if-eq v7, v0, :cond_48

    .line 98
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_47

    aget-object v11, v8, v10

    .line 1115
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 1116
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_45

    .line 1117
    iget-object v12, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v12, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    .line 1118
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v13

    if-eqz v13, :cond_2

    iget-boolean v13, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->f:Z

    if-nez v13, :cond_45

    .line 1120
    :cond_2
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v13

    const-string v14, "kryo"

    if-nez v13, :cond_3

    .line 1121
    iget-boolean v13, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->e:Z

    if-eqz v13, :cond_45

    .line 1123
    :try_start_0
    invoke-virtual {v11, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1125
    :catch_0
    sget-boolean v0, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v0, :cond_45

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Unable to set field as accessible: "

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1130
    :cond_3
    :goto_3
    const-class v13, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$e;

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$e;

    if-eqz v13, :cond_4

    .line 1131
    iget-object v15, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v15, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v15}, Lcom/esotericsoftware/kryo/c;->getContext()Lcom/esotericsoftware/kryo/c/m;

    move-result-object v15

    invoke-interface {v13}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$e;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/esotericsoftware/kryo/c/m;->d(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_45

    .line 1133
    :cond_4
    iget-object v13, v1, Lcom/esotericsoftware/kryo/serializers/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_45

    .line 1135
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1136
    iget-boolean v15, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->i:Z

    if-nez v15, :cond_5

    iget-boolean v15, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->h:Z

    if-eqz v15, :cond_45

    .line 1138
    :cond_5
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    .line 1139
    new-instance v4, Lcom/esotericsoftware/kryo/c/e$a;

    iget-object v5, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v5, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    move-object/from16 v16, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {v4, v15, v5, v8}, Lcom/esotericsoftware/kryo/c/e$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 1206
    iget-object v5, v4, Lcom/esotericsoftware/kryo/c/e$a;->a:Ljava/lang/reflect/Type;

    .line 1140
    instance-of v5, v5, Ljava/lang/Class;

    if-eqz v5, :cond_6

    .line 2206
    iget-object v5, v4, Lcom/esotericsoftware/kryo/c/e$a;->a:Ljava/lang/reflect/Type;

    .line 1140
    check-cast v5, Ljava/lang/Class;

    goto :goto_4

    :cond_6
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    :goto_4
    if-eqz v6, :cond_8

    .line 1143
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v17

    if-nez v17, :cond_8

    .line 1144
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1145
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1147
    :try_start_1
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->f:Ljava/lang/Object;

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-static {v0}, Lcom/esotericsoftware/c/c;->a(Ljava/lang/Class;)Lcom/esotericsoftware/c/c;

    move-result-object v0

    iput-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->f:Ljava/lang/Object;

    .line 1148
    :cond_7
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->f:Ljava/lang/Object;

    check-cast v0, Lcom/esotericsoftware/c/c;

    invoke-virtual {v0, v11}, Lcom/esotericsoftware/c/c;->a(Ljava/lang/reflect/Field;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 1150
    sget-boolean v17, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v17, :cond_8

    const-string v8, "Unable to use ReflectASM."

    invoke-static {v14, v8, v0}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    const/4 v0, -0x1

    .line 1155
    :goto_5
    sget-boolean v8, Lcom/esotericsoftware/kryo/c/n;->b:Z

    if-eqz v8, :cond_13

    .line 3198
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3199
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_9

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o$f;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/o$f;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_6

    .line 3200
    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_a

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o$e;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/o$e;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_6

    .line 3201
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_b

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o$a;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/o$a;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    .line 3202
    :cond_b
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_c

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o$g;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/o$g;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    .line 3203
    :cond_c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_d

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o$d;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/o$d;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    .line 3204
    :cond_d
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_e

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o$h;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/o$h;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    .line 3205
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_f

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o$c;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/o$c;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    .line 3206
    :cond_f
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_10

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o$b;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/o$b;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    .line 3208
    :cond_10
    const-class v0, Ljava/lang/String;

    if-ne v5, v0, :cond_12

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    .line 3209
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/c;->getReferences()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/c;->getReferenceResolver()Lcom/esotericsoftware/kryo/f;

    move-result-object v0

    const-class v8, Ljava/lang/String;

    invoke-interface {v0, v8}, Lcom/esotericsoftware/kryo/f;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3210
    :cond_11
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o$i;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/o$i;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    .line 3211
    :cond_12
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/o;

    iget-object v8, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v0, v11, v8, v4}, Lcom/esotericsoftware/kryo/serializers/o;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/c/e$a;)V

    :goto_6
    move/from16 v17, v6

    goto/16 :goto_a

    :cond_13
    const/4 v8, -0x1

    if-eq v0, v8, :cond_1f

    .line 3215
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 3216
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_14

    new-instance v4, Lcom/esotericsoftware/kryo/serializers/a$f;

    invoke-direct {v4, v11}, Lcom/esotericsoftware/kryo/serializers/a$f;-><init>(Ljava/lang/reflect/Field;)V

    :goto_7
    move/from16 v17, v6

    goto/16 :goto_9

    .line 3217
    :cond_14
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_15

    new-instance v4, Lcom/esotericsoftware/kryo/serializers/a$e;

    invoke-direct {v4, v11}, Lcom/esotericsoftware/kryo/serializers/a$e;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_7

    .line 3218
    :cond_15
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_16

    new-instance v4, Lcom/esotericsoftware/kryo/serializers/a$a;

    invoke-direct {v4, v11}, Lcom/esotericsoftware/kryo/serializers/a$a;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_7

    .line 3219
    :cond_16
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_17

    new-instance v4, Lcom/esotericsoftware/kryo/serializers/a$g;

    invoke-direct {v4, v11}, Lcom/esotericsoftware/kryo/serializers/a$g;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_7

    .line 3220
    :cond_17
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_18

    new-instance v4, Lcom/esotericsoftware/kryo/serializers/a$d;

    invoke-direct {v4, v11}, Lcom/esotericsoftware/kryo/serializers/a$d;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_7

    .line 3221
    :cond_18
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_19

    new-instance v4, Lcom/esotericsoftware/kryo/serializers/a$h;

    invoke-direct {v4, v11}, Lcom/esotericsoftware/kryo/serializers/a$h;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_7

    .line 3222
    :cond_19
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_1a

    new-instance v4, Lcom/esotericsoftware/kryo/serializers/a$c;

    invoke-direct {v4, v11}, Lcom/esotericsoftware/kryo/serializers/a$c;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_7

    .line 3223
    :cond_1a
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_1b

    new-instance v4, Lcom/esotericsoftware/kryo/serializers/a$b;

    invoke-direct {v4, v11}, Lcom/esotericsoftware/kryo/serializers/a$b;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_7

    .line 3225
    :cond_1b
    const-class v8, Ljava/lang/String;

    if-ne v5, v8, :cond_1d

    iget-object v8, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v8, v8, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    .line 3226
    invoke-virtual {v8}, Lcom/esotericsoftware/kryo/c;->getReferences()Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v8, v8, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/c;

    invoke-virtual {v8}, Lcom/esotericsoftware/kryo/c;->getReferenceResolver()Lcom/esotericsoftware/kryo/f;

    move-result-object v8

    move/from16 v17, v6

    const-class v6, Ljava/lang/String;

    invoke-interface {v8, v6}, Lcom/esotericsoftware/kryo/f;->a(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_8

    :cond_1c
    move/from16 v17, v6

    .line 3227
    :goto_8
    new-instance v4, Lcom/esotericsoftware/kryo/serializers/a$i;

    invoke-direct {v4, v11}, Lcom/esotericsoftware/kryo/serializers/a$i;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_9

    :cond_1d
    move/from16 v17, v6

    .line 3228
    :cond_1e
    new-instance v6, Lcom/esotericsoftware/kryo/serializers/a;

    iget-object v8, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v6, v11, v8, v4}, Lcom/esotericsoftware/kryo/serializers/a;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/c/e$a;)V

    move-object v4, v6

    .line 1159
    :goto_9
    iget-object v6, v1, Lcom/esotericsoftware/kryo/serializers/b;->f:Ljava/lang/Object;

    check-cast v6, Lcom/esotericsoftware/c/c;

    iput-object v6, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->i:Lcom/esotericsoftware/c/c;

    .line 1160
    iput v0, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->j:I

    move-object v0, v4

    goto :goto_a

    :cond_1f
    move/from16 v17, v6

    .line 3232
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3233
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_20

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/m$f;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/m$f;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_a

    .line 3234
    :cond_20
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_21

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/m$e;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/m$e;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_a

    .line 3235
    :cond_21
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_22

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/m$a;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/m$a;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_a

    .line 3236
    :cond_22
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_23

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/m$g;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/m$g;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_a

    .line 3237
    :cond_23
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_24

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/m$d;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/m$d;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_a

    .line 3238
    :cond_24
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_25

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/m$h;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/m$h;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_a

    .line 3239
    :cond_25
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_26

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/m$c;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/m$c;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_a

    .line 3240
    :cond_26
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_27

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/m$b;

    invoke-direct {v0, v11}, Lcom/esotericsoftware/kryo/serializers/m$b;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_a

    .line 3242
    :cond_27
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/m;

    iget-object v6, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v0, v11, v6, v4}, Lcom/esotericsoftware/kryo/serializers/m;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/c/e$a;)V

    .line 1164
    :goto_a
    iget-boolean v4, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->j:Z

    iput-boolean v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->f:Z

    .line 1165
    iget-boolean v4, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->k:Z

    const-string v6, "."

    if-eqz v4, :cond_28

    .line 1166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    goto :goto_b

    .line 1168
    :cond_28
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    .line 1170
    :goto_b
    instance-of v4, v0, Lcom/esotericsoftware/kryo/serializers/m;

    const-string v8, ")"

    move/from16 v18, v9

    const-string v9, " ("

    move-object/from16 v19, v7

    const-string v7, " field: "

    move/from16 v20, v10

    const-string v10, "Cached "

    if-eqz v4, :cond_2c

    .line 1171
    iget-boolean v4, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->d:Z

    if-eqz v4, :cond_29

    const-class v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$d;

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v4, 0x1

    goto :goto_c

    :cond_29
    const/4 v4, 0x0

    :goto_c
    iput-boolean v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->e:Z

    .line 1172
    invoke-static {v5}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2a

    iget-boolean v4, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->g:Z

    if-eqz v4, :cond_2b

    :cond_2a
    iput-object v5, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->c:Ljava/lang/Class;

    .line 1174
    :cond_2b
    sget-boolean v4, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v4, :cond_2e

    .line 1175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1175
    invoke-static {v14, v4}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1179
    :cond_2c
    const-class v4, Ljava/lang/String;

    if-ne v5, v4, :cond_2d

    iget-boolean v4, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->d:Z

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_d

    :cond_2d
    const/4 v4, 0x0

    :goto_d
    iput-boolean v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->e:Z

    .line 1180
    iput-object v5, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->c:Ljava/lang/Class;

    .line 1182
    sget-boolean v4, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1182
    invoke-static {v14, v4}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    :cond_2e
    :goto_e
    iget-object v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    .line 3320
    const-class v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_33

    .line 3321
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->d:Lcom/esotericsoftware/kryo/h;

    if-nez v5, :cond_32

    .line 3325
    const-class v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;

    .line 3327
    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;->a()Ljava/lang/Class;

    move-result-object v8

    .line 3328
    const-class v9, Ljava/lang/Object;

    if-ne v8, v9, :cond_2f

    move-object v8, v7

    :cond_2f
    if-eqz v8, :cond_30

    .line 4249
    iput-object v8, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->c:Ljava/lang/Class;

    .line 3331
    :cond_30
    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;->b()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;->c()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v1, v8, v9, v10}, Lcom/esotericsoftware/kryo/serializers/b;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v8

    if-eqz v8, :cond_31

    .line 4266
    iput-object v8, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->d:Lcom/esotericsoftware/kryo/h;

    .line 3334
    :cond_31
    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;->d()Z

    move-result v8

    .line 4280
    iput-boolean v8, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->e:Z

    .line 3335
    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;->e()Z

    move-result v8

    .line 4292
    iput-boolean v8, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->f:Z

    .line 3336
    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$a;->f()Z

    move-result v5

    .line 4302
    iput-boolean v5, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->g:Z

    goto :goto_f

    .line 3322
    :cond_32
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@Bind applied to a field that already has a serializer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    .line 3323
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3340
    :cond_33
    :goto_f
    const-class v5, Lcom/esotericsoftware/kryo/serializers/d$a;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 3341
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->d:Lcom/esotericsoftware/kryo/h;

    if-nez v5, :cond_38

    .line 3345
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 3347
    const-class v5, Lcom/esotericsoftware/kryo/serializers/d$a;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/esotericsoftware/kryo/serializers/d$a;

    .line 3349
    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/d$a;->a()Ljava/lang/Class;

    move-result-object v8

    .line 3350
    const-class v9, Ljava/lang/Object;

    if-ne v8, v9, :cond_34

    move-object v8, v7

    .line 3351
    :cond_34
    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/d$a;->b()Ljava/lang/Class;

    move-result-object v9

    .line 3352
    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/d$a;->c()Ljava/lang/Class;

    move-result-object v10

    .line 3351
    invoke-direct {v1, v8, v9, v10}, Lcom/esotericsoftware/kryo/serializers/b;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v9

    .line 3354
    new-instance v10, Lcom/esotericsoftware/kryo/serializers/d;

    invoke-direct {v10}, Lcom/esotericsoftware/kryo/serializers/d;-><init>()V

    .line 3355
    invoke-interface {v5}, Lcom/esotericsoftware/kryo/serializers/d$a;->d()Z

    move-result v5

    .line 5056
    iput-boolean v5, v10, Lcom/esotericsoftware/kryo/serializers/d;->a:Z

    if-eqz v8, :cond_35

    .line 5062
    iput-object v8, v10, Lcom/esotericsoftware/kryo/serializers/d;->c:Ljava/lang/Class;

    :cond_35
    if-eqz v9, :cond_36

    .line 5078
    iput-object v9, v10, Lcom/esotericsoftware/kryo/serializers/d;->b:Lcom/esotericsoftware/kryo/h;

    .line 5266
    :cond_36
    iput-object v10, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->d:Lcom/esotericsoftware/kryo/h;

    goto :goto_10

    .line 3345
    :cond_37
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@BindCollection can only be used with a field implementing Collection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3346
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3342
    :cond_38
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@BindCollection applied to a field that already has a serializer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    .line 3343
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3362
    :cond_39
    :goto_10
    const-class v5, Lcom/esotericsoftware/kryo/serializers/j$a;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 3363
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->d:Lcom/esotericsoftware/kryo/h;

    if-nez v5, :cond_41

    .line 3367
    const-class v5, Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 3369
    const-class v5, Lcom/esotericsoftware/kryo/serializers/j$a;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/esotericsoftware/kryo/serializers/j$a;

    .line 3371
    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/j$a;->d()Ljava/lang/Class;

    move-result-object v5

    .line 3372
    const-class v6, Ljava/lang/Object;

    if-ne v5, v6, :cond_3a

    move-object v5, v7

    .line 3373
    :cond_3a
    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/j$a;->e()Ljava/lang/Class;

    move-result-object v6

    .line 3374
    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/j$a;->f()Ljava/lang/Class;

    move-result-object v8

    .line 3373
    invoke-direct {v1, v5, v6, v8}, Lcom/esotericsoftware/kryo/serializers/b;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v6

    .line 3376
    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/j$a;->a()Ljava/lang/Class;

    move-result-object v8

    .line 3377
    const-class v9, Ljava/lang/Object;

    if-ne v8, v9, :cond_3b

    goto :goto_11

    :cond_3b
    move-object v7, v8

    .line 3378
    :goto_11
    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/j$a;->b()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/j$a;->c()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v1, v7, v8, v9}, Lcom/esotericsoftware/kryo/serializers/b;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v8

    .line 3380
    new-instance v9, Lcom/esotericsoftware/kryo/serializers/j;

    invoke-direct {v9}, Lcom/esotericsoftware/kryo/serializers/j;-><init>()V

    .line 3381
    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/j$a;->g()Z

    move-result v10

    .line 6054
    iput-boolean v10, v9, Lcom/esotericsoftware/kryo/serializers/j;->e:Z

    .line 3382
    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/j$a;->h()Z

    move-result v4

    .line 6112
    iput-boolean v4, v9, Lcom/esotericsoftware/kryo/serializers/j;->f:Z

    if-eqz v7, :cond_3c

    .line 7060
    iput-object v7, v9, Lcom/esotericsoftware/kryo/serializers/j;->a:Ljava/lang/Class;

    :cond_3c
    if-eqz v8, :cond_3d

    .line 7076
    iput-object v8, v9, Lcom/esotericsoftware/kryo/serializers/j;->c:Lcom/esotericsoftware/kryo/h;

    :cond_3d
    if-eqz v5, :cond_3e

    .line 7086
    iput-object v5, v9, Lcom/esotericsoftware/kryo/serializers/j;->b:Ljava/lang/Class;

    :cond_3e
    if-eqz v6, :cond_3f

    .line 7102
    iput-object v6, v9, Lcom/esotericsoftware/kryo/serializers/j;->d:Lcom/esotericsoftware/kryo/h;

    .line 7266
    :cond_3f
    iput-object v9, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->d:Lcom/esotericsoftware/kryo/h;

    goto :goto_12

    .line 3368
    :cond_40
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@BindMap can only be used with a field implementing Map: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3364
    :cond_41
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@BindMap applied to a field that already has a serializer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    .line 3365
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    :goto_12
    if-eqz v13, :cond_44

    .line 1189
    iget-boolean v4, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->i:Z

    if-eqz v4, :cond_43

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_43
    iget-boolean v4, v12, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->h:Z

    if-eqz v4, :cond_46

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1192
    :cond_44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_45
    :goto_13
    move/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v16, v8

    move/from16 v18, v9

    move/from16 v20, v10

    :cond_46
    :goto_14
    add-int/lit8 v10, v20, 0x1

    move-object/from16 v8, v16

    move/from16 v6, v17

    move/from16 v9, v18

    move-object/from16 v7, v19

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_47
    move/from16 v17, v6

    move-object/from16 v19, v7

    .line 100
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 103
    :cond_48
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v0, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v0, v4, :cond_49

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    iput-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 104
    :cond_49
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 107
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    array-length v0, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_4a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    iput-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 108
    :cond_4a
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->d:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 111
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/b;->b:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->initializeCachedFields()V

    return-void
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 73
    check-cast p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    check-cast p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 8247
    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
