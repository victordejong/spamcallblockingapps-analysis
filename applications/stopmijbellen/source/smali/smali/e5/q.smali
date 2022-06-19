.class public Le5/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le5/p;


# direct methods
.method public constructor <init>(Le5/p;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/q;->c:Le5/p;

    iput-wide p2, p0, Le5/q;->a:J

    iput-object p4, p0, Le5/q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/q;->c:Le5/p;

    .line 2
    iget-object v0, v0, Le5/p;->m:Le5/z;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le5/z;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le5/q;->c:Le5/p;

    .line 5
    iget-object v0, v0, Le5/p;->h:Lf5/b;

    .line 6
    iget-wide v1, p0, Le5/q;->a:J

    iget-object v3, p0, Le5/q;->b:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lf5/b;->c:Lf5/a;

    invoke-interface {v0, v1, v2, v3}, Lf5/a;->c(JLjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
