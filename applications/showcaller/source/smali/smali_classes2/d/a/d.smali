.class final Ld/a/d;
.super Ld/a/b$g;
.source "ThreadLocalContextStorage.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ld/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ld/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ld/a/d;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ld/a/d;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/a/b$g;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ld/a/b;
    .locals 1

    .line 1
    sget-object v0, Ld/a/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/b;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ld/a/b;->f:Ld/a/b;

    :cond_0
    return-object v0
.end method

.method public c(Ld/a/b;Ld/a/b;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld/a/d;->b()Ld/a/b;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    sget-object p1, Ld/a/d;->a:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Context was not attached when detaching"

    .line 4
    invoke-virtual {p1, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    sget-object p1, Ld/a/b;->f:Ld/a/b;

    if-eq p2, p1, :cond_1

    .line 6
    sget-object p1, Ld/a/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Ld/a/d;->b:Ljava/lang/ThreadLocal;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d(Ld/a/b;)Ld/a/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld/a/d;->b()Ld/a/b;

    move-result-object v0

    .line 2
    sget-object v1, Ld/a/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method
