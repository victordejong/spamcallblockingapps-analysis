.class public abstract Lcom/esotericsoftware/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/esotericsoftware/c/b;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/esotericsoftware/c/b<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 48
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ConstructorAccess"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java."

    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "reflectasm."

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/esotericsoftware/c/a;->a(Ljava/lang/Class;)Lcom/esotericsoftware/c/a;

    move-result-object v7

    .line 54
    monitor-enter v7

    .line 55
    :try_start_0
    invoke-virtual {v7, v6}, Lcom/esotericsoftware/c/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_7

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    .line 57
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 58
    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x0

    if-nez v4, :cond_3

    .line 65
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v8

    if-nez v8, :cond_2

    :goto_1
    move-object v8, v10

    goto :goto_2

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class cannot be created (the no-arg constructor is private): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 68
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class cannot be created (missing no-arg constructor): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 74
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array v8, v3, [Ljava/lang/Class;

    aput-object v0, v8, v2

    .line 76
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    :try_start_4
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    .line 87
    :goto_2
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com/esotericsoftware/reflectasm/PublicConstructorAccess"

    goto :goto_3

    :cond_4
    const-string v0, "com/esotericsoftware/reflectasm/ConstructorAccess"

    .line 91
    :goto_3
    new-instance v9, Lcom/esotericsoftware/a/g;

    invoke-direct {v9, v2}, Lcom/esotericsoftware/a/g;-><init>(I)V

    const v11, 0x3002d

    const/16 v12, 0x21

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v10, v9

    move-object v15, v0

    .line 92
    invoke-virtual/range {v10 .. v16}, Lcom/esotericsoftware/a/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v15, 0x1

    const-string v16, "<init>"

    const-string v17, "()V"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v9

    .line 1121
    invoke-virtual/range {v14 .. v19}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object v10

    const/16 v11, 0x19

    .line 1123
    invoke-virtual {v10, v11, v2}, Lcom/esotericsoftware/a/q;->b(II)V

    const-string v2, "<init>"

    const-string v12, "()V"

    const/16 v13, 0xb7

    .line 1124
    invoke-virtual {v10, v13, v0, v2, v12}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    .line 1125
    invoke-virtual {v10, v0}, Lcom/esotericsoftware/a/q;->a(I)V

    .line 1126
    invoke-virtual {v10, v3, v3}, Lcom/esotericsoftware/a/q;->d(II)V

    const/4 v15, 0x1

    const-string v16, "newInstance"

    const-string v17, "()Ljava/lang/Object;"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v9

    .line 1131
    invoke-virtual/range {v14 .. v19}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object v0

    const/16 v2, 0xbb

    .line 1133
    invoke-virtual {v0, v2, v5}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    const/16 v10, 0x59

    .line 1134
    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/q;->a(I)V

    const-string v12, "<init>"

    const-string v14, "()V"

    .line 1135
    invoke-virtual {v0, v13, v5, v12, v14}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xb0

    .line 1136
    invoke-virtual {v0, v12}, Lcom/esotericsoftware/a/q;->a(I)V

    const/4 v15, 0x2

    .line 1137
    invoke-virtual {v0, v15, v3}, Lcom/esotericsoftware/a/q;->d(II)V

    const/4 v0, 0x1

    const-string v16, "newInstance"

    const-string v17, "(Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v9

    move v15, v0

    .line 1142
    invoke-virtual/range {v14 .. v19}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object v0

    if-eqz v8, :cond_5

    .line 1145
    invoke-virtual {v0, v2, v5}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    .line 1146
    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/q;->a(I)V

    .line 1147
    invoke-virtual {v0, v11, v3}, Lcom/esotericsoftware/a/q;->b(II)V

    const/16 v2, 0xc0

    .line 1148
    invoke-virtual {v0, v2, v8}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    .line 1149
    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/q;->a(I)V

    const/16 v2, 0xb6

    const-string v3, "java/lang/Object"

    const-string v10, "getClass"

    const-string v11, "()Ljava/lang/Class;"

    .line 1150
    invoke-virtual {v0, v2, v3, v10, v11}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x57

    .line 1151
    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/q;->a(I)V

    const-string v2, "<init>"

    .line 1152
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "(L"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";)V"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v5, v2, v3}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, v12}, Lcom/esotericsoftware/a/q;->a(I)V

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 1154
    invoke-virtual {v0, v2, v3}, Lcom/esotericsoftware/a/q;->d(II)V

    goto :goto_4

    :cond_5
    const/4 v3, 0x2

    const-string v5, "java/lang/UnsupportedOperationException"

    .line 1156
    invoke-virtual {v0, v2, v5}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    .line 1157
    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/q;->a(I)V

    const-string v2, "Not an inner class."

    .line 1158
    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/Object;)V

    const-string v2, "java/lang/UnsupportedOperationException"

    const-string v5, "<init>"

    const-string v8, "(Ljava/lang/String;)V"

    .line 1159
    invoke-virtual {v0, v13, v2, v5, v8}, Lcom/esotericsoftware/a/q;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xbf

    .line 1160
    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/q;->a(I)V

    const/4 v2, 0x3

    .line 1161
    invoke-virtual {v0, v2, v3}, Lcom/esotericsoftware/a/q;->d(II)V

    .line 99
    :goto_4
    invoke-virtual {v9}, Lcom/esotericsoftware/a/g;->a()[B

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Lcom/esotericsoftware/c/a;->a(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v8

    goto :goto_5

    .line 83
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Non-static member class cannot be created (the enclosing class constructor is private): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 79
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Non-static member class cannot be created (missing enclosing class constructor): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    :cond_7
    :goto_5
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/c/b;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    instance-of v2, v0, Lcom/esotericsoftware/c/e;

    if-nez v2, :cond_9

    invoke-static {v1, v8}, Lcom/esotericsoftware/c/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_8

    const-string v3, "Class cannot be created (the no-arg constructor is protected or package-protected, and its ConstructorAccess could not be defined in the same class loader): "

    goto :goto_6

    :cond_8
    const-string v3, "Non-static member class cannot be created (the enclosing class constructor is protected or package-protected, and its ConstructorAccess could not be defined in the same class loader): "

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_9
    iput-boolean v4, v0, Lcom/esotericsoftware/c/b;->a:Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception constructing constructor access class: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 101
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
