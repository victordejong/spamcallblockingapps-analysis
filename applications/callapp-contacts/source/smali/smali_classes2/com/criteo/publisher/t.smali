.class public final Lcom/criteo/publisher/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/criteo/publisher/t;

    invoke-direct {v0}, Lcom/criteo/publisher/t;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;
    .locals 4
    .annotation runtime Lcom/criteo/publisher/logging/a$a;
    .end annotation

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal error in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/criteo/publisher/logging/b;

    invoke-direct {v1}, Lcom/criteo/publisher/logging/b;-><init>()V

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 46
    const-class v3, Lcom/criteo/publisher/logging/a$a;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    sget-object v1, Lcom/criteo/publisher/logging/a;->a:Lcom/criteo/publisher/logging/a;

    .line 56
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/b;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/g/k;->a(Ljava/util/Iterator;)Lkotlin/g/h;

    move-result-object v1

    invoke-static {v1}, Lkotlin/g/k;->c(Lkotlin/g/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stackTraceElement.className"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.criteo.publisher."

    invoke-static {v2, v3}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 49
    :cond_0
    sget-object v2, Lcom/criteo/publisher/logging/a;->a:Lcom/criteo/publisher/logging/a;

    invoke-static {v1}, Lcom/criteo/publisher/logging/a;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/criteo/publisher/logging/e;

    const/4 v2, 0x6

    const-string v3, "onUncaughtErrorAtPublicApi"

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final b(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;
    .locals 4

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const/4 v1, 0x6

    const-string v2, "Uncaught error in thread"

    const-string v3, "onUncaughtErrorInThread"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;
    .locals 4

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const/4 v1, 0x6

    const-string v2, "Assertion failed"

    const-string v3, "onAssertFailed"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final d(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;
    .locals 4

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const/4 v1, 0x4

    const-string v2, "Uncaught expected exception in thread"

    const-string v3, "onUncaughtExpectedExceptionInThread"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method
