.class public abstract Lcom/esotericsoftware/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/Class;

.field private c:[Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/esotericsoftware/a/q;)Lcom/esotericsoftware/a/q;
    .locals 8

    const/16 v0, 0xbb

    const-string v1, "java/lang/IllegalArgumentException"

    .line 575
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const/16 v2, 0x59

    .line 576
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/a/q;->a(I)V

    const-string v3, "java/lang/StringBuilder"

    .line 577
    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    .line 578
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/a/q;->a(I)V

    const-string v0, "Field not found: "

    .line 579
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/Object;)V

    const/16 v0, 0xb7

    const-string v2, "<init>"

    const-string v4, "(Ljava/lang/String;)V"

    .line 580
    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x15

    const/4 v6, 0x2

    .line 581
    invoke-virtual {p0, v5, v6}, Lcom/esotericsoftware/a/q;->b(II)V

    const/16 v5, 0xb6

    const-string v6, "append"

    const-string v7, "(I)Ljava/lang/StringBuilder;"

    .line 582
    invoke-virtual {p0, v5, v3, v6, v7}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "toString"

    const-string v7, "()Ljava/lang/String;"

    .line 583
    invoke-virtual {p0, v5, v3, v6, v7}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbf

    .line 585
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/q;->a(I)V

    return-object p0
.end method

.method private static a(Lcom/esotericsoftware/a/q;Ljava/lang/String;)Lcom/esotericsoftware/a/q;
    .locals 7

    const/16 v0, 0xbb

    const-string v1, "java/lang/IllegalArgumentException"

    .line 590
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const/16 v2, 0x59

    .line 591
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/a/q;->a(I)V

    const-string v3, "java/lang/StringBuilder"

    .line 592
    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    .line 593
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/a/q;->a(I)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Field not declared as "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/Object;)V

    const/16 p1, 0xb7

    const-string v0, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    .line 595
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    const/4 v5, 0x2

    .line 596
    invoke-virtual {p0, v4, v5}, Lcom/esotericsoftware/a/q;->b(II)V

    const/16 v4, 0xb6

    const-string v5, "append"

    const-string v6, "(I)Ljava/lang/StringBuilder;"

    .line 597
    invoke-virtual {p0, v4, v3, v5, v6}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "toString"

    const-string v6, "()Ljava/lang/String;"

    .line 598
    invoke-virtual {p0, v4, v3, v5, v6}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbf

    .line 600
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/q;->a(I)V

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lcom/esotericsoftware/c/c;
    .locals 19

    .line 113
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    .line 118
    :goto_0
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 120
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    .line 121
    aget-object v5, v2, v3

    .line 122
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 123
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 124
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 125
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_3

    .line 133
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 134
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "FieldAccess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java."

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "reflectasm."

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/c/a;->a(Ljava/lang/Class;)Lcom/esotericsoftware/c/a;

    move-result-object v6

    .line 143
    monitor-enter v6

    .line 144
    :try_start_0
    invoke-virtual {v6, v5}, Lcom/esotericsoftware/c/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_5

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    .line 146
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 147
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 149
    new-instance v7, Lcom/esotericsoftware/a/g;

    invoke-direct {v7, v3}, Lcom/esotericsoftware/a/g;-><init>(I)V

    const v10, 0x3002d

    const/16 v11, 0x21

    const/4 v13, 0x0

    const-string v14, "com/esotericsoftware/reflectasm/FieldAccess"

    const/4 v15, 0x0

    move-object v9, v7

    .line 150
    invoke-virtual/range {v9 .. v15}, Lcom/esotericsoftware/a/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v14, 0x1

    const-string v15, "<init>"

    const-string v16, "()V"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v7

    .line 1188
    invoke-virtual/range {v13 .. v18}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object v8

    const/16 v9, 0x19

    .line 1190
    invoke-virtual {v8, v9, v3}, Lcom/esotericsoftware/a/q;->b(II)V

    const/16 v3, 0xb7

    const-string v9, "com/esotericsoftware/reflectasm/FieldAccess"

    const-string v10, "<init>"

    const-string v11, "()V"

    .line 1191
    invoke-virtual {v8, v3, v9, v10, v11}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb1

    .line 1192
    invoke-virtual {v8, v3}, Lcom/esotericsoftware/a/q;->a(I)V

    const/4 v3, 0x1

    .line 1193
    invoke-virtual {v8, v3, v3}, Lcom/esotericsoftware/a/q;->d(II)V

    .line 153
    invoke-static {v7, v1, v0}, Lcom/esotericsoftware/c/c;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 154
    invoke-static {v7, v1, v0}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    sget-object v3, Lcom/esotericsoftware/a/t;->b:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 156
    sget-object v3, Lcom/esotericsoftware/a/t;->b:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 157
    sget-object v3, Lcom/esotericsoftware/a/t;->d:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 158
    sget-object v3, Lcom/esotericsoftware/a/t;->d:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 159
    sget-object v3, Lcom/esotericsoftware/a/t;->e:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 160
    sget-object v3, Lcom/esotericsoftware/a/t;->e:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 161
    sget-object v3, Lcom/esotericsoftware/a/t;->f:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 162
    sget-object v3, Lcom/esotericsoftware/a/t;->f:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 163
    sget-object v3, Lcom/esotericsoftware/a/t;->h:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 164
    sget-object v3, Lcom/esotericsoftware/a/t;->h:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 165
    sget-object v3, Lcom/esotericsoftware/a/t;->i:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 166
    sget-object v3, Lcom/esotericsoftware/a/t;->i:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 167
    sget-object v3, Lcom/esotericsoftware/a/t;->g:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 168
    sget-object v3, Lcom/esotericsoftware/a/t;->g:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 169
    sget-object v3, Lcom/esotericsoftware/a/t;->c:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 170
    sget-object v3, Lcom/esotericsoftware/a/t;->c:Lcom/esotericsoftware/a/t;

    invoke-static {v7, v1, v0, v3}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V

    .line 171
    invoke-static {v7, v1, v0}, Lcom/esotericsoftware/c/c;->c(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 173
    invoke-virtual {v7}, Lcom/esotericsoftware/a/g;->a()[B

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Lcom/esotericsoftware/c/a;->a(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v7

    .line 175
    :cond_5
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/c/c;

    .line 178
    iput-object v2, v1, Lcom/esotericsoftware/c/c;->a:[Ljava/lang/String;

    .line 179
    iput-object v4, v1, Lcom/esotericsoftware/c/c;->b:[Ljava/lang/Class;

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    iput-object v0, v1, Lcom/esotericsoftware/c/c;->c:[Ljava/lang/reflect/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 183
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error constructing field access class: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 175
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 114
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must not be the Object class, an interface, a primitive type, or void."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/a/g;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v2, "set"

    const-string v3, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 199
    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object p0

    const/16 v0, 0x15

    const/4 v1, 0x2

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/a/q;->b(II)V

    .line 203
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 205
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/esotericsoftware/a/p;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 207
    new-instance v5, Lcom/esotericsoftware/a/p;

    invoke-direct {v5}, Lcom/esotericsoftware/a/p;-><init>()V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_0
    new-instance v4, Lcom/esotericsoftware/a/p;

    invoke-direct {v4}, Lcom/esotericsoftware/a/p;-><init>()V

    add-int/lit8 v5, v1, -0x1

    .line 209
    invoke-virtual {p0, v3, v5, v4, v2}, Lcom/esotericsoftware/a/q;->a(IILcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V

    :goto_1
    if-ge v3, v1, :cond_1

    .line 212
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 213
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/esotericsoftware/a/t;->a(Ljava/lang/Class;)Lcom/esotericsoftware/a/t;

    move-result-object v12

    .line 215
    aget-object v6, v2, v3

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 216
    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v6, 0x19

    const/4 v7, 0x1

    .line 217
    invoke-virtual {p0, v6, v7}, Lcom/esotericsoftware/a/q;->b(II)V

    const/16 v7, 0xc0

    .line 218
    invoke-virtual {p0, v7, p1}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const/4 v8, 0x3

    .line 219
    invoke-virtual {p0, v6, v8}, Lcom/esotericsoftware/a/q;->b(II)V

    .line 2000
    iget v6, v12, Lcom/esotericsoftware/a/t;->j:I

    const/16 v8, 0xb6

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 258
    :pswitch_0
    invoke-virtual {v12}, Lcom/esotericsoftware/a/t;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 255
    :pswitch_1
    invoke-virtual {v12}, Lcom/esotericsoftware/a/t;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v6, "java/lang/Double"

    .line 251
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const-string v7, "doubleValue"

    const-string v9, "()D"

    .line 252
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v6, "java/lang/Long"

    .line 247
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const-string v7, "longValue"

    const-string v9, "()J"

    .line 248
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string v6, "java/lang/Float"

    .line 243
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const-string v7, "floatValue"

    const-string v9, "()F"

    .line 244
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v6, "java/lang/Integer"

    .line 239
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const-string v7, "intValue"

    const-string v9, "()I"

    .line 240
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-string v6, "java/lang/Short"

    .line 235
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const-string v7, "shortValue"

    const-string v9, "()S"

    .line 236
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    const-string v6, "java/lang/Byte"

    .line 227
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const-string v7, "byteValue"

    const-string v9, "()B"

    .line 228
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_8
    const-string v6, "java/lang/Character"

    .line 231
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const-string v7, "charValue"

    const-string v9, "()C"

    .line 232
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_9
    const-string v6, "java/lang/Boolean"

    .line 223
    invoke-virtual {p0, v7, v6}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const-string v7, "booleanValue"

    const-string v9, "()Z"

    .line 224
    invoke-virtual {p0, v8, v6, v7, v9}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v6, 0xb5

    .line 262
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 263
    invoke-virtual {v12}, Lcom/esotericsoftware/a/t;->c()Ljava/lang/String;

    move-result-object v8

    .line 262
    invoke-virtual {p0, v6, v7, v5, v8}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb1

    .line 264
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/a/q;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 267
    :cond_1
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 268
    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    const/4 v0, 0x6

    .line 270
    :goto_3
    invoke-static {p0}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/q;)Lcom/esotericsoftware/a/q;

    move-result-object p0

    const/4 p1, 0x4

    .line 271
    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/a/q;->d(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/a/g;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/a/t;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 392
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/a/t;->c()Ljava/lang/String;

    move-result-object v2

    .line 4000
    iget v3, v1, Lcom/esotericsoftware/a/t;->j:I

    const/16 v4, 0x19

    const/16 v6, 0x15

    const/4 v7, 0x4

    packed-switch v3, :pswitch_data_0

    const-string v3, "set"

    move-object v9, v3

    const/16 v3, 0x19

    goto :goto_2

    :pswitch_0
    const/16 v3, 0x18

    const-string v7, "setDouble"

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x16

    const-string v7, "setLong"

    :goto_0
    move-object v9, v7

    const/4 v13, 0x5

    goto :goto_3

    :pswitch_2
    const/16 v3, 0x17

    const-string v8, "setFloat"

    move-object v9, v8

    goto :goto_2

    :pswitch_3
    const-string v3, "setInt"

    goto :goto_1

    :pswitch_4
    const-string v3, "setShort"

    goto :goto_1

    :pswitch_5
    const-string v3, "setByte"

    goto :goto_1

    :pswitch_6
    const-string v3, "setChar"

    goto :goto_1

    :pswitch_7
    const-string v3, "setBoolean"

    :goto_1
    move-object v9, v3

    const/16 v3, 0x15

    :goto_2
    const/4 v13, 0x4

    :goto_3
    const/4 v8, 0x1

    .line 434
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "(Ljava/lang/Object;I"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")V"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object v7

    const/4 v8, 0x2

    .line 437
    invoke-virtual {v7, v6, v8}, Lcom/esotericsoftware/a/q;->b(II)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 441
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v8, v6, [Lcom/esotericsoftware/a/p;

    .line 442
    new-instance v9, Lcom/esotericsoftware/a/p;

    invoke-direct {v9}, Lcom/esotericsoftware/a/p;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    const/4 v15, 0x1

    if-ge v11, v6, :cond_1

    .line 445
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Field;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lcom/esotericsoftware/a/t;->a(Ljava/lang/Class;)Lcom/esotericsoftware/a/t;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/esotericsoftware/a/t;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 446
    new-instance v14, Lcom/esotericsoftware/a/p;

    invoke-direct {v14}, Lcom/esotericsoftware/a/p;-><init>()V

    aput-object v14, v8, v11

    goto :goto_5

    .line 448
    :cond_0
    aput-object v9, v8, v11

    const/4 v12, 0x1

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 452
    :cond_1
    new-instance v11, Lcom/esotericsoftware/a/p;

    invoke-direct {v11}, Lcom/esotericsoftware/a/p;-><init>()V

    add-int/lit8 v14, v6, -0x1

    .line 453
    invoke-virtual {v7, v10, v14, v11, v8}, Lcom/esotericsoftware/a/q;->a(IILcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V

    :goto_6
    if-ge v10, v6, :cond_3

    .line 456
    aget-object v14, v8, v10

    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 457
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/reflect/Field;

    .line 458
    aget-object v14, v8, v10

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object v14, v7

    const/4 v5, 0x1

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v21

    .line 459
    invoke-virtual/range {v14 .. v19}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 460
    invoke-virtual {v7, v4, v5}, Lcom/esotericsoftware/a/q;->b(II)V

    const/16 v14, 0xc0

    move-object/from16 v15, p1

    .line 461
    invoke-virtual {v7, v14, v15}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const/4 v14, 0x3

    .line 462
    invoke-virtual {v7, v3, v14}, Lcom/esotericsoftware/a/q;->b(II)V

    .line 463
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    const/16 v14, 0x2f

    invoke-virtual {v4, v5, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0xb5

    invoke-virtual {v7, v14, v4, v5, v2}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb1

    .line 465
    invoke-virtual {v7, v4}, Lcom/esotericsoftware/a/q;->a(I)V

    goto :goto_7

    :cond_2
    move-object/from16 v15, p1

    :goto_7
    add-int/lit8 v10, v10, 0x1

    const/16 v4, 0x19

    const/4 v15, 0x1

    goto :goto_6

    :cond_3
    if-eqz v12, :cond_4

    .line 470
    invoke-virtual {v7, v9}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v7

    .line 471
    invoke-virtual/range {v14 .. v19}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/a/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/q;Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    .line 475
    :cond_4
    invoke-virtual {v7, v11}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v7

    .line 476
    invoke-virtual/range {v14 .. v19}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v5, 0x5

    goto :goto_8

    :cond_5
    const/4 v5, 0x6

    .line 478
    :goto_8
    invoke-static {v7}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/q;)Lcom/esotericsoftware/a/q;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v5, v13}, Lcom/esotericsoftware/a/q;->d(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/a/g;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v2, "get"

    const-string v3, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 277
    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object p0

    const/16 v0, 0x15

    const/4 v1, 0x2

    .line 279
    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/a/q;->b(II)V

    .line 281
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 283
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/esotericsoftware/a/p;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 285
    new-instance v5, Lcom/esotericsoftware/a/p;

    invoke-direct {v5}, Lcom/esotericsoftware/a/p;-><init>()V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    :cond_0
    new-instance v4, Lcom/esotericsoftware/a/p;

    invoke-direct {v4}, Lcom/esotericsoftware/a/p;-><init>()V

    add-int/lit8 v5, v1, -0x1

    .line 287
    invoke-virtual {p0, v3, v5, v4, v2}, Lcom/esotericsoftware/a/q;->a(IILcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V

    :goto_1
    if-ge v3, v1, :cond_1

    .line 290
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 292
    aget-object v6, v2, v3

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 293
    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v6, 0x19

    const/4 v7, 0x1

    .line 294
    invoke-virtual {p0, v6, v7}, Lcom/esotericsoftware/a/q;->b(II)V

    const/16 v6, 0xc0

    .line 295
    invoke-virtual {p0, v6, p1}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const/16 v6, 0xb4

    .line 296
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 297
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/esotericsoftware/a/t;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 296
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/esotericsoftware/a/t;->a(Ljava/lang/Class;)Lcom/esotericsoftware/a/t;

    move-result-object v5

    .line 3000
    iget v5, v5, Lcom/esotericsoftware/a/t;->j:I

    const-string v6, "valueOf"

    const/16 v7, 0xb8

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v5, "java/lang/Double"

    const-string v8, "(D)Ljava/lang/Double;"

    .line 323
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v5, "java/lang/Long"

    const-string v8, "(J)Ljava/lang/Long;"

    .line 320
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v5, "java/lang/Float"

    const-string v8, "(F)Ljava/lang/Float;"

    .line 317
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v5, "java/lang/Integer"

    const-string v8, "(I)Ljava/lang/Integer;"

    .line 314
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string v5, "java/lang/Short"

    const-string v8, "(S)Ljava/lang/Short;"

    .line 311
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v5, "java/lang/Byte"

    const-string v8, "(B)Ljava/lang/Byte;"

    .line 305
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-string v5, "java/lang/Character"

    const-string v8, "(C)Ljava/lang/Character;"

    .line 308
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    const-string v5, "java/lang/Boolean"

    const-string v8, "(Z)Ljava/lang/Boolean;"

    .line 302
    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v5, 0xb0

    .line 327
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/a/q;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 330
    :cond_1
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 331
    invoke-virtual/range {v6 .. v11}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    const/4 v0, 0x6

    .line 333
    :goto_3
    invoke-static {p0}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/q;)Lcom/esotericsoftware/a/q;

    const/4 p1, 0x3

    .line 334
    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/a/q;->d(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;Lcom/esotericsoftware/a/t;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/a/g;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/esotericsoftware/a/t;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 487
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/a/t;->c()Ljava/lang/String;

    move-result-object v2

    .line 5000
    iget v3, v1, Lcom/esotericsoftware/a/t;->j:I

    const/16 v4, 0xac

    packed-switch v3, :pswitch_data_0

    const/16 v4, 0xb0

    const-string v3, "get"

    goto :goto_0

    :pswitch_0
    const/16 v4, 0xaf

    const-string v3, "getDouble"

    goto :goto_0

    :pswitch_1
    const/16 v4, 0xad

    const-string v3, "getLong"

    goto :goto_0

    :pswitch_2
    const/16 v4, 0xae

    const-string v3, "getFloat"

    goto :goto_0

    :pswitch_3
    const-string v3, "getInt"

    goto :goto_0

    :pswitch_4
    const-string v3, "getShort"

    goto :goto_0

    :pswitch_5
    const-string v3, "getByte"

    goto :goto_0

    :pswitch_6
    const-string v3, "getChar"

    goto :goto_0

    :pswitch_7
    const-string v3, "getBoolean"

    :goto_0
    move-object v7, v3

    const/4 v6, 0x1

    .line 527
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "(Ljava/lang/Object;I)"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object v3

    const/16 v5, 0x15

    const/4 v6, 0x2

    .line 529
    invoke-virtual {v3, v5, v6}, Lcom/esotericsoftware/a/q;->b(II)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 533
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Lcom/esotericsoftware/a/p;

    .line 534
    new-instance v8, Lcom/esotericsoftware/a/p;

    invoke-direct {v8}, Lcom/esotericsoftware/a/p;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    :goto_1
    const/4 v15, 0x1

    if-ge v10, v6, :cond_1

    .line 537
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Field;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lcom/esotericsoftware/a/t;->a(Ljava/lang/Class;)Lcom/esotericsoftware/a/t;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/esotericsoftware/a/t;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 538
    new-instance v11, Lcom/esotericsoftware/a/p;

    invoke-direct {v11}, Lcom/esotericsoftware/a/p;-><init>()V

    aput-object v11, v7, v10

    goto :goto_2

    .line 540
    :cond_0
    aput-object v8, v7, v10

    const/16 v17, 0x1

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 544
    :cond_1
    new-instance v10, Lcom/esotericsoftware/a/p;

    invoke-direct {v10}, Lcom/esotericsoftware/a/p;-><init>()V

    add-int/lit8 v11, v6, -0x1

    .line 545
    invoke-virtual {v3, v9, v11, v10, v7}, Lcom/esotericsoftware/a/q;->a(IILcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V

    :goto_3
    if-ge v9, v6, :cond_3

    .line 548
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v18, v11

    check-cast v18, Ljava/lang/reflect/Field;

    .line 549
    aget-object v11, v7, v9

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 550
    aget-object v11, v7, v9

    invoke-virtual {v3, v11}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v11, v3

    const/4 v5, 0x1

    move/from16 v15, v16

    move-object/from16 v16, v19

    .line 551
    invoke-virtual/range {v11 .. v16}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v11, 0x19

    .line 552
    invoke-virtual {v3, v11, v5}, Lcom/esotericsoftware/a/q;->b(II)V

    const/16 v11, 0xc0

    move-object/from16 v12, p1

    .line 553
    invoke-virtual {v3, v11, v12}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const/16 v11, 0xb4

    .line 554
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2e

    const/16 v15, 0x2f

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v11, v13, v14, v2}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v3, v4}, Lcom/esotericsoftware/a/q;->a(I)V

    goto :goto_4

    :cond_2
    move-object/from16 v12, p1

    const/4 v5, 0x1

    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    if-eqz v17, :cond_4

    .line 561
    invoke-virtual {v3, v8}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    .line 562
    invoke-virtual/range {v11 .. v16}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Lcom/esotericsoftware/a/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/q;Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    .line 566
    :cond_4
    invoke-virtual {v3, v10}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    .line 567
    invoke-virtual/range {v11 .. v16}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v5, 0x5

    goto :goto_5

    :cond_5
    const/4 v5, 0x6

    .line 569
    :goto_5
    invoke-static {v3}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/q;)Lcom/esotericsoftware/a/q;

    move-result-object v0

    const/4 v1, 0x3

    .line 570
    invoke-virtual {v0, v5, v1}, Lcom/esotericsoftware/a/q;->d(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Lcom/esotericsoftware/a/g;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/a/g;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v2, 0x1

    const-string v3, "getString"

    const-string v4, "(Ljava/lang/Object;I)Ljava/lang/String;"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 340
    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, 0x2

    .line 342
    invoke-virtual {v1, v2, v3}, Lcom/esotericsoftware/a/q;->b(II)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 346
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcom/esotericsoftware/a/p;

    .line 347
    new-instance v5, Lcom/esotericsoftware/a/p;

    invoke-direct {v5}, Lcom/esotericsoftware/a/p;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v7, v3, :cond_1

    .line 350
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 351
    new-instance v8, Lcom/esotericsoftware/a/p;

    invoke-direct {v8}, Lcom/esotericsoftware/a/p;-><init>()V

    aput-object v8, v4, v7

    goto :goto_1

    .line 353
    :cond_0
    aput-object v5, v4, v7

    const/4 v13, 0x1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 357
    :cond_1
    new-instance v15, Lcom/esotericsoftware/a/p;

    invoke-direct {v15}, Lcom/esotericsoftware/a/p;-><init>()V

    add-int/lit8 v7, v3, -0x1

    .line 358
    invoke-virtual {v1, v6, v7, v15, v4}, Lcom/esotericsoftware/a/q;->a(IILcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V

    :goto_2
    if-ge v6, v3, :cond_3

    .line 361
    aget-object v7, v4, v6

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 362
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/reflect/Field;

    .line 363
    aget-object v7, v4, v6

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    .line 364
    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v7, 0x19

    .line 365
    invoke-virtual {v1, v7, v14}, Lcom/esotericsoftware/a/q;->b(II)V

    const/16 v7, 0xc0

    move-object/from16 v8, p1

    .line 366
    invoke-virtual {v1, v7, v8}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const/16 v7, 0xb4

    .line 367
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    const/16 v11, 0x2f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Ljava/lang/String;"

    invoke-virtual {v1, v7, v9, v10, v11}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xb0

    .line 369
    invoke-virtual {v1, v7}, Lcom/esotericsoftware/a/q;->a(I)V

    goto :goto_3

    :cond_2
    move-object/from16 v8, p1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    if-eqz v13, :cond_4

    .line 374
    invoke-virtual {v1, v5}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    .line 375
    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const-string v0, "String"

    .line 376
    invoke-static {v1, v0}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/q;Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    .line 379
    :cond_4
    invoke-virtual {v1, v15}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    .line 380
    invoke-virtual/range {v7 .. v12}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x6

    .line 382
    :goto_4
    invoke-static {v1}, Lcom/esotericsoftware/c/c;->a(Lcom/esotericsoftware/a/q;)Lcom/esotericsoftware/a/q;

    const/4 v0, 0x3

    .line 383
    invoke-virtual {v1, v2, v0}, Lcom/esotericsoftware/a/q;->d(II)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Field;)I
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/esotericsoftware/c/c;->c:[Ljava/lang/reflect/Field;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    iget-object v2, p0, Lcom/esotericsoftware/c/c;->c:[Ljava/lang/reflect/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to find non-private field: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()C
.end method

.method public abstract d()Z
.end method

.method public abstract e()B
.end method

.method public abstract f()S
.end method

.method public abstract g()I
.end method

.method public abstract h()J
.end method

.method public abstract i()D
.end method

.method public abstract j()F
.end method
