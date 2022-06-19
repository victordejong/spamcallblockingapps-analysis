.class public Lcom/criteo/publisher/logging/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/logging/n$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/f/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f/p<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/j0/g;

.field private final c:Lcom/criteo/publisher/m0/g;

.field private final d:Lcom/criteo/publisher/m0/b;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f/p;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/m0/b;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/f/p<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;",
            "Lcom/criteo/publisher/j0/g;",
            "Lcom/criteo/publisher/m0/g;",
            "Lcom/criteo/publisher/m0/b;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "sendingQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildConfigWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/n;->a:Lcom/criteo/publisher/f/p;

    iput-object p2, p0, Lcom/criteo/publisher/logging/n;->b:Lcom/criteo/publisher/j0/g;

    iput-object p3, p0, Lcom/criteo/publisher/logging/n;->c:Lcom/criteo/publisher/m0/g;

    iput-object p4, p0, Lcom/criteo/publisher/logging/n;->d:Lcom/criteo/publisher/m0/b;

    iput-object p5, p0, Lcom/criteo/publisher/logging/n;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/criteo/publisher/logging/n;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/logging/n$a;

    iget-object v2, p0, Lcom/criteo/publisher/logging/n;->a:Lcom/criteo/publisher/f/p;

    iget-object v3, p0, Lcom/criteo/publisher/logging/n;->b:Lcom/criteo/publisher/j0/g;

    iget-object v4, p0, Lcom/criteo/publisher/logging/n;->c:Lcom/criteo/publisher/m0/g;

    iget-object v5, p0, Lcom/criteo/publisher/logging/n;->d:Lcom/criteo/publisher/m0/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/criteo/publisher/logging/n$a;-><init>(Lcom/criteo/publisher/f/p;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/m0/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
