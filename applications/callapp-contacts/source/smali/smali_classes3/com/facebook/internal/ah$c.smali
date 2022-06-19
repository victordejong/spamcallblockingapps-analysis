.class final Lcom/facebook/internal/ah$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/ah$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0012\u001a\u00060\u0000R\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0018\u00010\u0000R\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0008J\u0008\u0010\u0015\u001a\u00020\u0008H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u001a\u0010\u0018\u001a\u0008\u0018\u00010\u0000R\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0018\u00010\u0000R\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\t\"\u0004\u0008\n\u0010\u000bR*\u0010\u000e\u001a\u0008\u0018\u00010\u0000R\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0018\u00010\u0000R\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u0008\u0018\u00010\u0000R\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/facebook/internal/WorkQueue$WorkNode;",
        "Lcom/facebook/internal/WorkQueue$WorkItem;",
        "callback",
        "Ljava/lang/Runnable;",
        "(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V",
        "getCallback",
        "()Ljava/lang/Runnable;",
        "isRunning",
        "",
        "()Z",
        "setRunning",
        "(Z)V",
        "<set-?>",
        "Lcom/facebook/internal/WorkQueue;",
        "next",
        "getNext",
        "()Lcom/facebook/internal/WorkQueue$WorkNode;",
        "prev",
        "addToList",
        "list",
        "addToFront",
        "cancel",
        "moveToFront",
        "",
        "removeFromList",
        "verify",
        "shouldBeRunning",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field a:Z

.field final b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/facebook/internal/ah;

.field private d:Lcom/facebook/internal/ah$c;

.field private e:Lcom/facebook/internal/ah$c;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/ah;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/facebook/internal/ah$c;->c:Lcom/facebook/internal/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/internal/ah$c;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/internal/ah$c;)Lcom/facebook/internal/ah$c;
    .locals 3

    .line 162
    sget-object v0, Lcom/facebook/internal/ah;->a:Lcom/facebook/internal/ah$a;

    iget-object v0, p0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/ah$a;->a(Z)V

    .line 163
    sget-object v0, Lcom/facebook/internal/ah;->a:Lcom/facebook/internal/ah$a;

    iget-object v0, p0, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/facebook/internal/ah$a;->a(Z)V

    .line 164
    move-object v0, p0

    check-cast v0, Lcom/facebook/internal/ah$c;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 166
    iget-object p1, p0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    if-ne p1, v0, :cond_2

    move-object p1, v1

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    iput-object v2, v0, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    if-eqz v2, :cond_4

    iput-object v0, v2, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    .line 174
    :cond_4
    iput-object v1, p0, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    .line 175
    iput-object v1, p0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    return-object p1
.end method

.method public final a(Lcom/facebook/internal/ah$c;Z)Lcom/facebook/internal/ah$c;
    .locals 3

    .line 144
    sget-object v0, Lcom/facebook/internal/ah;->a:Lcom/facebook/internal/ah$a;

    iget-object v0, p0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/ah$a;->a(Z)V

    .line 145
    sget-object v0, Lcom/facebook/internal/ah;->a:Lcom/facebook/internal/ah$a;

    iget-object v0, p0, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/facebook/internal/ah$a;->a(Z)V

    if-nez p1, :cond_2

    .line 147
    move-object p1, p0

    check-cast p1, Lcom/facebook/internal/ah$c;

    iput-object p1, p0, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    .line 148
    iput-object p1, p0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    goto :goto_3

    .line 151
    :cond_2
    iput-object p1, p0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    .line 152
    iget-object v0, p1, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    iput-object v0, p0, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    if-eqz v0, :cond_3

    .line 153
    move-object v1, p0

    check-cast v1, Lcom/facebook/internal/ah$c;

    iput-object v1, v0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/facebook/internal/ah$c;->d:Lcom/facebook/internal/ah$c;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-object v0, v1, Lcom/facebook/internal/ah$c;->e:Lcom/facebook/internal/ah$c;

    :cond_5
    :goto_3
    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    return-object p0

    :cond_6
    return-object p1

    .line 156
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
