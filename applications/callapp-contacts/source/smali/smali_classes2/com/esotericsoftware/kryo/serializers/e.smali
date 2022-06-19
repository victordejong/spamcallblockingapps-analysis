.class public Lcom/esotericsoftware/kryo/serializers/e;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/esotericsoftware/kryo/serializers/e$a;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/e$a;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/e$a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/e;-><init>(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/e$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/e$a;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;)V

    .line 58
    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/e;->a:Lcom/esotericsoftware/kryo/serializers/e$a;

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "#"

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/e;->pushTypeVariables()I

    move-result v5

    .line 117
    invoke-virtual/range {p0 .. p3}, Lcom/esotericsoftware/kryo/serializers/e;->create(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 118
    invoke-virtual {v2, v6}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/c;->getGraphContext()Lcom/esotericsoftware/kryo/c/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c/m;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    const-string v8, "kryo"

    if-nez v0, :cond_c

    .line 3194
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Read fields for class: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/esotericsoftware/kryo/serializers/e;->type:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 3196
    invoke-virtual {v3, v0}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v9

    .line 3197
    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    .line 3199
    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 3200
    sget-boolean v12, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Read field name: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3203
    :cond_2
    new-array v11, v9, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 3204
    iget-object v12, v1, Lcom/esotericsoftware/kryo/serializers/e;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    iget-object v12, v12, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    const/16 v13, 0x20

    const-string v14, "Unknown field will be skipped: "

    if-ge v9, v13, :cond_6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_b

    .line 3208
    aget-object v13, v10, v0

    .line 3209
    array-length v15, v12

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v15, :cond_4

    move/from16 v16, v15

    .line 3210
    aget-object v15, v12, v7

    iget-object v15, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 3211
    aget-object v7, v12, v7

    aput-object v7, v11, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v15, v16

    goto :goto_2

    .line 3215
    :cond_4
    sget-boolean v7, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v7, :cond_5

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3219
    :cond_6
    array-length v7, v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v9, :cond_b

    .line 3222
    aget-object v15, v10, v13

    move/from16 v17, v7

    const/4 v0, 0x0

    :goto_5
    if-gt v0, v7, :cond_9

    add-int v18, v0, v7

    const/16 v16, 0x1

    ushr-int/lit8 v18, v18, 0x1

    move/from16 v19, v0

    .line 3227
    aget-object v0, v12, v18

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7

    add-int/lit8 v7, v18, -0x1

    move/from16 v0, v19

    goto :goto_5

    :cond_7
    if-lez v0, :cond_8

    add-int/lit8 v0, v18, 0x1

    goto :goto_5

    .line 3233
    :cond_8
    aget-object v0, v12, v18

    aput-object v0, v11, v13

    goto :goto_6

    :cond_9
    const/16 v16, 0x1

    .line 3237
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_a

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v17

    const/4 v0, 0x1

    goto :goto_4

    .line 3241
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/c;->getGraphContext()Lcom/esotericsoftware/kryo/c/m;

    move-result-object v0

    invoke-virtual {v0, v1, v11}, Lcom/esotericsoftware/kryo/c/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_c
    move-object v11, v0

    .line 123
    :goto_7
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/e;->a:Lcom/esotericsoftware/kryo/serializers/e$a;

    iget-boolean v7, v0, Lcom/esotericsoftware/kryo/serializers/e$a;->b:Z

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/e;->a:Lcom/esotericsoftware/kryo/serializers/e$a;

    iget-boolean v9, v0, Lcom/esotericsoftware/kryo/serializers/e$a;->a:Z

    const/4 v0, 0x0

    if-eqz v7, :cond_d

    .line 127
    new-instance v0, Lcom/esotericsoftware/kryo/a/b;

    iget-object v10, v1, Lcom/esotericsoftware/kryo/serializers/e;->a:Lcom/esotericsoftware/kryo/serializers/e$a;

    iget v10, v10, Lcom/esotericsoftware/kryo/serializers/e$a;->c:I

    invoke-direct {v0, v3, v10}, Lcom/esotericsoftware/kryo/a/b;-><init>(Ljava/io/InputStream;I)V

    move-object v10, v0

    move-object v12, v10

    goto :goto_8

    :cond_d
    move-object v12, v0

    move-object v10, v3

    .line 130
    :goto_8
    array-length v13, v11

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v13, :cond_20

    .line 131
    aget-object v15, v11, v14

    const-string v3, ")"

    if-eqz v9, :cond_1a

    .line 136
    :try_start_0
    invoke-virtual {v2, v10}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_10

    if-eqz v7, :cond_e

    .line 145
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/a/b;->o()V

    :cond_e
    move/from16 v16, v9

    move-object/from16 v17, v11

    move/from16 v18, v13

    :cond_f
    :goto_a
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_10
    move/from16 v16, v9

    .line 4046
    iget-object v9, v0, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    move-object/from16 v17, v11

    const-string v11, " ("

    if-nez v15, :cond_14

    .line 151
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v18, v13

    const-string v13, "Read unknown data, type: "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result v13

    invoke-static {v13}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_11
    move/from16 v18, v13

    .line 153
    :goto_b
    :try_start_1
    invoke-virtual {v2, v10, v9}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v13, v0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read unknown data, type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/e;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_13

    .line 158
    sget-boolean v2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v2, :cond_12

    invoke-static {v8, v0, v13}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_c
    if-eqz v7, :cond_f

    .line 160
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/a/b;->o()V

    goto :goto_a

    .line 157
    :cond_13
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0, v13}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_14
    move/from16 v18, v13

    .line 165
    iget-object v0, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->c:Ljava/lang/Class;

    if-eqz v0, :cond_17

    iget-object v0, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Read type is incompatible with the field type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->c:Ljava/lang/Class;

    .line 167
    invoke-static {v2}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/e;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_16

    .line 169
    sget-boolean v2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v2, :cond_15

    invoke-static {v8, v0}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_15
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/a/b;->o()V

    goto/16 :goto_a

    .line 168
    :cond_16
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    const/4 v2, 0x0

    .line 4280
    iput-boolean v2, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->e:Z

    .line 5249
    iput-object v9, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->c:Ljava/lang/Class;

    .line 5313
    iput-boolean v2, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->h:Z

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move/from16 v16, v9

    move-object/from16 v17, v11

    move/from16 v18, v13

    const/4 v2, 0x0

    move-object v9, v0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Unable to read unknown data (unknown type). ("

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/e;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_19

    .line 140
    sget-boolean v3, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v3, :cond_18

    invoke-static {v8, v0, v9}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :cond_18
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/a/b;->o()V

    goto :goto_e

    .line 139
    :cond_19
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0, v9}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1a
    move/from16 v16, v9

    move-object/from16 v17, v11

    move/from16 v18, v13

    const/4 v2, 0x0

    if-nez v15, :cond_1d

    if-eqz v7, :cond_1c

    .line 179
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_1b

    const-string v0, "Skip unknown field."

    invoke-static {v8, v0}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_1b
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/a/b;->o()V

    goto :goto_e

    .line 178
    :cond_1c
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown field. ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/e;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1d
    :goto_d
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->b()I

    move-result v0

    const-string v3, "Read"

    invoke-virtual {v1, v3, v15, v0}, Lcom/esotericsoftware/kryo/serializers/e;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;I)V

    .line 185
    :cond_1e
    invoke-virtual {v15, v10, v6}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V

    if-eqz v7, :cond_1f

    .line 186
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/a/b;->o()V

    :cond_1f
    :goto_e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v9, v16

    move-object/from16 v11, v17

    move/from16 v13, v18

    goto/16 :goto_9

    .line 189
    :cond_20
    invoke-virtual {v1, v5}, Lcom/esotericsoftware/kryo/serializers/e;->popTypeVariables(I)V

    return-object v6
.end method

.method public write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/c;",
            "TT;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/e;->pushTypeVariables()I

    move-result v3

    .line 64
    iget-object v4, v0, Lcom/esotericsoftware/kryo/serializers/e;->cachedFields:Lcom/esotericsoftware/kryo/serializers/b;

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/b;->c:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/c;->getGraphContext()Lcom/esotericsoftware/kryo/c/m;

    move-result-object v5

    .line 66
    invoke-virtual {v5, v0}, Lcom/esotericsoftware/kryo/c/m;->d(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_2

    .line 67
    sget-boolean v6, Lcom/esotericsoftware/b/a;->e:Z

    const-string v9, "kryo"

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Write fields for class: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/esotericsoftware/kryo/serializers/e;->type:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {v5, v0, v7}, Lcom/esotericsoftware/kryo/c/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    array-length v5, v4

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 70
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 71
    sget-boolean v10, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Write field name: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v4, v6

    iget-object v11, v11, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v11

    invoke-static {v11}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    aget-object v10, v4, v6

    iget-object v10, v10, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object v5, v0, Lcom/esotericsoftware/kryo/serializers/e;->a:Lcom/esotericsoftware/kryo/serializers/e$a;

    iget-boolean v5, v5, Lcom/esotericsoftware/kryo/serializers/e$a;->b:Z

    iget-object v6, v0, Lcom/esotericsoftware/kryo/serializers/e;->a:Lcom/esotericsoftware/kryo/serializers/e$a;

    iget-boolean v6, v6, Lcom/esotericsoftware/kryo/serializers/e$a;->a:Z

    if-eqz v5, :cond_3

    .line 80
    new-instance v9, Lcom/esotericsoftware/kryo/a/d;

    iget-object v10, v0, Lcom/esotericsoftware/kryo/serializers/e;->a:Lcom/esotericsoftware/kryo/serializers/e$a;

    iget v10, v10, Lcom/esotericsoftware/kryo/serializers/e$a;->c:I

    invoke-direct {v9, v1, v10}, Lcom/esotericsoftware/kryo/a/d;-><init>(Ljava/io/OutputStream;I)V

    move-object v10, v9

    goto :goto_1

    :cond_3
    move-object v9, v1

    move-object v10, v7

    .line 83
    :goto_1
    array-length v11, v4

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_9

    .line 84
    aget-object v13, v4, v12

    .line 85
    sget-boolean v14, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v14, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v14

    const-string v15, "Write"

    invoke-virtual {v0, v15, v13, v14}, Lcom/esotericsoftware/kryo/serializers/e;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;I)V

    :cond_4
    if-eqz v6, :cond_7

    if-eqz v2, :cond_5

    .line 92
    :try_start_0
    iget-object v14, v13, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 93
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-object/from16 v15, p1

    move-object v14, v7

    goto :goto_4

    :cond_5
    move-object v14, v7

    :goto_3
    move-object/from16 v15, p1

    .line 97
    :goto_4
    invoke-virtual {v15, v9, v14}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    if-nez v14, :cond_6

    if-eqz v5, :cond_8

    .line 99
    invoke-virtual {v10}, Lcom/esotericsoftware/kryo/a/d;->c()V

    goto :goto_6

    .line 1280
    :cond_6
    iput-boolean v8, v13, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->e:Z

    .line 2249
    iput-object v14, v13, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->c:Ljava/lang/Class;

    .line 2313
    iput-boolean v8, v13, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->h:Z

    goto :goto_5

    :cond_7
    move-object/from16 v15, p1

    .line 107
    :goto_5
    invoke-virtual {v13, v9, v2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    if-eqz v5, :cond_8

    .line 108
    invoke-virtual {v10}, Lcom/esotericsoftware/kryo/a/d;->c()V

    :cond_8
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 111
    :cond_9
    invoke-virtual {v0, v3}, Lcom/esotericsoftware/kryo/serializers/e;->popTypeVariables(I)V

    return-void
.end method
