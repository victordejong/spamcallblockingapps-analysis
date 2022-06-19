.class public final Lcom/esotericsoftware/kryo/serializers/c;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    .line 54
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/c;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 56
    :try_start_0
    const-class v0, Ljava/lang/invoke/SerializedLambda;

    const-string v1, "readResolve"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    sput-object v0, Lcom/esotericsoftware/kryo/serializers/c;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    const-string v2, "Unable to obtain SerializedLambda#readResolve via reflection."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/invoke/SerializedLambda;
    .locals 4

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "writeReplace"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 113
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :try_start_1
    check-cast p0, Ljava/lang/invoke/SerializedLambda;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writeReplace must return a SerializedLambda: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/esotericsoftware/kryo/c/n;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 115
    instance-of p0, p0, Ljava/io/Serializable;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Error serializing closure."

    invoke-direct {p0, v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 116
    :cond_1
    new-instance p0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Closure must implement java.io.Serializable."

    invoke-direct {p0, v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public final copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 102
    :try_start_0
    sget-object p1, Lcom/esotericsoftware/kryo/serializers/c;->a:Ljava/lang/reflect/Method;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/c;->a(Ljava/lang/Object;)Ljava/lang/invoke/SerializedLambda;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    const-string v0, "Error copying closure."

    invoke-direct {p2, v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p2

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v2

    .line 87
    new-array v13, v2, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 89
    invoke-virtual/range {p1 .. p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v2, Ljava/lang/invoke/SerializedLambda;

    invoke-virtual/range {p1 .. p2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object v3

    .line 1046
    iget-object v4, v3, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object v10

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object v12

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Ljava/lang/invoke/SerializedLambda;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/c;->a:Ljava/lang/reflect/Method;

    new-array v1, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    const-string v2, "Error reading closure."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 4

    .line 65
    invoke-static {p3}, Lcom/esotericsoftware/kryo/serializers/c;->a(Ljava/lang/Object;)Ljava/lang/invoke/SerializedLambda;

    move-result-object p3

    .line 66
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getCapturedArgCount()I

    move-result v0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 69
    invoke-virtual {p3, v2}, Ljava/lang/invoke/SerializedLambda;->getCapturedArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getCapturingClass()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getFunctionalInterfaceClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getFunctionalInterfaceMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getFunctionalInterfaceMethodSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getImplMethodKind()I

    move-result p1

    invoke-virtual {p2, p1, v1}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 79
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getImplClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getImplMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getImplMethodSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Ljava/lang/invoke/SerializedLambda;->getInstantiatedMethodType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    const-string p3, "Error writing closure."

    invoke-direct {p2, p3, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
