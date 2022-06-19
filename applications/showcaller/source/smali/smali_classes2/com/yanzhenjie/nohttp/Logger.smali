.class public Lcom/yanzhenjie/nohttp/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final D:Ljava/lang/String; = "d"

.field private static final E:Ljava/lang/String; = "e"

.field private static final I:Ljava/lang/String; = "i"

.field private static final MAX_LENGTH:I = 0xbb8

.field private static SDebug:Z = false

.field private static STag:Ljava/lang/String; = "NoHttp"

.field private static final V:Ljava/lang/String; = "v"

.field private static final W:Ljava/lang/String; = "w"

.field private static final WTF:Ljava/lang/String; = "wtf"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "d"

    .line 1
    invoke-static {v0, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/Logger;->d(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "d"

    .line 3
    invoke-static {v0, p1, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "e"

    .line 1
    invoke-static {v0, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    .line 3
    invoke-static {v0, p1, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "i"

    .line 1
    invoke-static {v0, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/Logger;->i(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "i"

    .line 3
    invoke-static {v0, p1, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static invokePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-class v1, Landroid/util/Log;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    .line 2
    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static invokePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 6
    const-class v0, Ljava/lang/String;

    sget-boolean v1, Lcom/yanzhenjie/nohttp/Logger;->SDebug:Z

    if-eqz v1, :cond_0

    .line 7
    :try_start_0
    const-class v1, Landroid/util/Log;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    .line 8
    const-class v0, Ljava/lang/Throwable;

    const/4 v6, 0x2

    aput-object v0, v3, v6

    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/Logger;->STag:Ljava/lang/String;

    invoke-static {p1}, Lcom/yanzhenjie/nohttp/Logger;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/yanzhenjie/nohttp/Logger;->STag:Ljava/lang/String;

    invoke-static {p1}, Lcom/yanzhenjie/nohttp/Logger;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2
    sget-boolean v0, Lcom/yanzhenjie/nohttp/Logger;->SDebug:Z

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/yanzhenjie/nohttp/Logger;->invokePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    div-int/lit16 v3, v0, 0xbb8

    rem-int/lit16 v4, v0, 0xbb8

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v3, v2, 0xbb8

    if-lt v0, v3, :cond_2

    add-int/lit16 v4, v3, -0xbb8

    .line 6
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/yanzhenjie/nohttp/Logger;->invokePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit16 v3, v3, -0xbb8

    .line 7
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/yanzhenjie/nohttp/Logger;->invokePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private static print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 9
    invoke-static {p0, p1, p2, p3}, Lcom/yanzhenjie/nohttp/Logger;->invokePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/yanzhenjie/nohttp/Logger;->SDebug:Z

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yanzhenjie/nohttp/Logger;->STag:Ljava/lang/String;

    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "v"

    .line 1
    invoke-static {v0, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/Logger;->v(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "v"

    .line 3
    invoke-static {v0, p1, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "w"

    .line 1
    invoke-static {v0, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "w"

    .line 3
    invoke-static {v0, p1, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1

    const-string v0, "wtf"

    .line 1
    invoke-static {v0, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/Logger;->wtf(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "wtf"

    .line 3
    invoke-static {v0, p1, p0}, Lcom/yanzhenjie/nohttp/Logger;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
