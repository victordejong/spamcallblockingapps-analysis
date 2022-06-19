.class public abstract Lcom/facebook/internal/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/aa$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field public b:Lcom/facebook/internal/aa$a;

.field public c:Z

.field d:I

.field private final e:Landroid/os/Handler;

.field private f:Landroid/os/Messenger;

.field private g:I

.field private final h:Ljava/lang/String;

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/facebook/internal/aa;->a:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/facebook/internal/aa;->g:I

    .line 55
    iput p3, p0, Lcom/facebook/internal/aa;->d:I

    .line 56
    iput-object p5, p0, Lcom/facebook/internal/aa;->h:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/facebook/internal/aa;->i:I

    .line 59
    new-instance p1, Lcom/facebook/internal/aa$1;

    invoke-direct {p1, p0}, Lcom/facebook/internal/aa$1;-><init>(Lcom/facebook/internal/aa;)V

    iput-object p1, p0, Lcom/facebook/internal/aa;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method public final a()Z
    .locals 3

    .line 77
    iget-boolean v0, p0, Lcom/facebook/internal/aa;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    iget v0, p0, Lcom/facebook/internal/aa;->i:I

    .line 83
    invoke-static {v0}, Lcom/facebook/internal/z;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/facebook/internal/aa;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/z;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/facebook/internal/aa;->c:Z

    .line 93
    iget-object v2, p0, Lcom/facebook/internal/aa;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return v1
.end method

.method final b(Landroid/os/Bundle;)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/facebook/internal/aa;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/facebook/internal/aa;->c:Z

    .line 160
    iget-object v0, p0, Lcom/facebook/internal/aa;->b:Lcom/facebook/internal/aa$a;

    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v0, p1}, Lcom/facebook/internal/aa$a;->a(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 103
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/facebook/internal/aa;->f:Landroid/os/Messenger;

    .line 1118
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1119
    iget-object p2, p0, Lcom/facebook/internal/aa;->h:Ljava/lang/String;

    const-string v0, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0, p1}, Lcom/facebook/internal/aa;->a(Landroid/os/Bundle;)V

    .line 1123
    iget p2, p0, Lcom/facebook/internal/aa;->g:I

    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 1124
    iget v1, p0, Lcom/facebook/internal/aa;->i:I

    iput v1, p2, Landroid/os/Message;->arg1:I

    .line 1125
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1126
    new-instance p1, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/facebook/internal/aa;->e:Landroid/os/Handler;

    invoke-direct {p1, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1129
    :try_start_0
    iget-object p1, p0, Lcom/facebook/internal/aa;->f:Landroid/os/Messenger;

    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1131
    :catch_0
    invoke-virtual {p0, v0}, Lcom/facebook/internal/aa;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/facebook/internal/aa;->f:Landroid/os/Messenger;

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/aa;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    invoke-virtual {p0, p1}, Lcom/facebook/internal/aa;->b(Landroid/os/Bundle;)V

    return-void
.end method
