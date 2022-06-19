.class public final Lcom/criteo/publisher/logging/n$a;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/logging/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f/p;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/m0/b;)V
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

    .line 44
    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/n$a;->a:Lcom/criteo/publisher/f/p;

    iput-object p2, p0, Lcom/criteo/publisher/logging/n$a;->b:Lcom/criteo/publisher/j0/g;

    iput-object p3, p0, Lcom/criteo/publisher/logging/n$a;->c:Lcom/criteo/publisher/m0/g;

    iput-object p4, p0, Lcom/criteo/publisher/logging/n$a;->d:Lcom/criteo/publisher/m0/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/criteo/publisher/logging/n$a;->a:Lcom/criteo/publisher/f/p;

    const/16 v1, 0xc8

    invoke-interface {v0, v1}, Lcom/criteo/publisher/f/p;->a(I)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1069
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/logging/n$a;->d:Lcom/criteo/publisher/m0/b;

    invoke-virtual {v1}, Lcom/criteo/publisher/m0/b;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1084
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/criteo/publisher/logging/RemoteLogRecords;

    .line 2026
    iget-object v4, v3, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 2038
    iget-object v4, v4, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 3026
    iget-object v3, v3, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 3038
    iput-object v1, v3, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/criteo/publisher/logging/n$a;->b:Lcom/criteo/publisher/j0/g;

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/j0/g;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/logging/RemoteLogRecords;

    .line 60
    iget-object v3, p0, Lcom/criteo/publisher/logging/n$a;->a:Lcom/criteo/publisher/f/p;

    invoke-interface {v3, v2}, Lcom/criteo/publisher/f/p;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_3
    throw v1
.end method
