.class final Landroidx/media2/session/n$44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n;->b()Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/n$c<",
        "Lcom/google/common/util/concurrent/a<",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;)V
    .locals 0

    .line 494
    iput-object p1, p0, Landroidx/media2/session/n$44;->a:Landroidx/media2/session/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1498
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->d()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->a()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 1501
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->c()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    .line 1502
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->a()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1507
    :cond_1
    sget-object v1, Landroidx/media2/session/s;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/util/concurrent/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Landroidx/media2/session/n$a;->a(Ljava/util/concurrent/Executor;[Lcom/google/common/util/concurrent/a;)Landroidx/media2/session/n$a;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
