.class public final Lcom/criteo/publisher/logging/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/g/a<",
            "Lcom/criteo/publisher/logging/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Logger"

    .line 27
    invoke-static {v0}, Lcom/criteo/publisher/logging/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/logging/g;->a:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/criteo/publisher/logging/g$a;

    invoke-direct {v0}, Lcom/criteo/publisher/logging/g$a;-><init>()V

    sput-object v0, Lcom/criteo/publisher/logging/g;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/g/a<",
            "Lcom/criteo/publisher/logging/d;",
            ">;>;)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/logging/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/g/a<",
            "Lcom/criteo/publisher/logging/d;",
            ">;>;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/criteo/publisher/logging/g;->c:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/criteo/publisher/logging/g;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/criteo/publisher/logging/e;)V
    .locals 7

    .line 104
    sget-object v0, Lcom/criteo/publisher/logging/g;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/criteo/publisher/logging/g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/g/a;

    .line 110
    sget-object v3, Lcom/criteo/publisher/logging/g;->b:Ljava/lang/ThreadLocal;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 112
    :try_start_0
    invoke-virtual {v2}, Lcom/criteo/publisher/g/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/criteo/publisher/logging/d;

    iget-object v4, p0, Lcom/criteo/publisher/logging/g;->c:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Lcom/criteo/publisher/logging/d;->a(Ljava/lang/String;Lcom/criteo/publisher/logging/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 114
    :try_start_1
    sget-object v4, Lcom/criteo/publisher/logging/g;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Impossible to log with handler: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 118
    :goto_1
    sget-object v2, Lcom/criteo/publisher/logging/g;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 120
    :cond_1
    sget-object v2, Lcom/criteo/publisher/logging/g;->b:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    if-nez v0, :cond_2

    .line 118
    sget-object v0, Lcom/criteo/publisher/logging/g;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_3

    .line 120
    :cond_2
    sget-object v1, Lcom/criteo/publisher/logging/g;->b:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 122
    :goto_3
    throw p1

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 96
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 100
    new-instance v0, Lcom/criteo/publisher/logging/e;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1, v1}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method
