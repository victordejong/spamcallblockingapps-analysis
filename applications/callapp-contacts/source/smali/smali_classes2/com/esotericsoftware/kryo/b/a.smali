.class public final Lcom/esotericsoftware/kryo/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:J

.field public static final g:J

.field public static final h:J

.field public static final i:J

.field private static j:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v1, "kryo"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 64
    :try_start_0
    sget-boolean v0, Lcom/esotericsoftware/kryo/c/n;->a:Z

    if-nez v0, :cond_0

    .line 65
    const-class v0, Lsun/misc/Unsafe;

    const-string v6, "theUnsafe"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 68
    :try_start_1
    const-class v0, [B

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    int-to-long v7, v0

    .line 69
    :try_start_2
    const-class v0, [C

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    int-to-long v9, v0

    .line 70
    :try_start_3
    const-class v0, [S

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    int-to-long v11, v0

    .line 71
    :try_start_4
    const-class v0, [I

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    int-to-long v13, v0

    .line 72
    :try_start_5
    const-class v0, [F

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    int-to-long v4, v0

    .line 73
    :try_start_6
    const-class v0, [J

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    int-to-long v2, v0

    .line 74
    :try_start_7
    const-class v0, [D

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-wide/from16 v17, v2

    int-to-long v2, v0

    .line 75
    :try_start_8
    const-class v0, [Z

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-wide/from16 v19, v2

    int-to-long v2, v0

    move-wide v15, v4

    move-wide v4, v7

    move-wide/from16 v21, v2

    move-wide/from16 v2, v19

    move-wide/from16 v19, v21

    goto :goto_7

    :catch_0
    move-exception v0

    move-wide/from16 v19, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide/from16 v17, v2

    const-wide/16 v2, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_4

    :catch_3
    move-exception v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_4

    :catch_4
    move-exception v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_3

    :catch_5
    move-exception v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_2

    :catch_6
    move-exception v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_1

    :catch_7
    move-exception v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_0

    .line 77
    :cond_0
    :try_start_9
    sget-boolean v0, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "Unsafe is not available on Android."

    invoke-static {v1, v0}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    goto :goto_6

    :catch_8
    move-exception v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    const-wide/16 v7, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    :goto_2
    const-wide/16 v11, 0x0

    :goto_3
    const-wide/16 v13, 0x0

    :goto_4
    const-wide/16 v17, 0x0

    .line 80
    :goto_5
    sget-boolean v19, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v19, :cond_2

    const-string v15, "Unsafe is not available."

    invoke-static {v1, v15, v0}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-wide v15, v4

    move-wide v4, v7

    :goto_6
    const-wide/16 v19, 0x0

    .line 83
    :goto_7
    sput-wide v4, Lcom/esotericsoftware/kryo/b/a;->b:J

    .line 84
    sput-wide v9, Lcom/esotericsoftware/kryo/b/a;->h:J

    .line 85
    sput-wide v11, Lcom/esotericsoftware/kryo/b/a;->g:J

    .line 86
    sput-wide v13, Lcom/esotericsoftware/kryo/b/a;->e:J

    .line 87
    sput-wide v15, Lcom/esotericsoftware/kryo/b/a;->c:J

    .line 88
    sput-wide v17, Lcom/esotericsoftware/kryo/b/a;->f:J

    .line 89
    sput-wide v2, Lcom/esotericsoftware/kryo/b/a;->d:J

    .line 90
    sput-wide v19, Lcom/esotericsoftware/kryo/b/a;->i:J

    .line 91
    sput-object v6, Lcom/esotericsoftware/kryo/b/a;->a:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    .line 97
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    .line 99
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 100
    sput-object v0, Lcom/esotericsoftware/kryo/b/a;->j:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    move-exception v0

    .line 102
    sget-boolean v3, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v3, :cond_3

    const-string v3, "No direct ByteBuffer constructor is available."

    invoke-static {v1, v3, v0}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 v3, 0x0

    .line 103
    sput-object v3, Lcom/esotericsoftware/kryo/b/a;->j:Ljava/lang/reflect/Constructor;

    .line 110
    :goto_8
    :try_start_b
    const-class v0, Lsun/nio/ch/DirectBuffer;

    const-string v3, "cleaner"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    sput-object v0, Lcom/esotericsoftware/kryo/b/a;->k:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    sget-object v0, Lcom/esotericsoftware/kryo/b/a;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "clean"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/b/a;->l:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    return-void

    :catch_a
    move-exception v0

    .line 114
    sget-boolean v2, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v2, :cond_4

    const-string v2, "No direct ByteBuffer clean method is available."

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const/4 v1, 0x0

    .line 115
    sput-object v1, Lcom/esotericsoftware/kryo/b/a;->k:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
