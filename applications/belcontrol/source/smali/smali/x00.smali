.class public Lx00;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public c:I

.field public final d:Lw00;

.field public final e:Lw00$c;

.field public f:Lu00;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lt00;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Landroid/content/ServiceConnection;

.field public final k:Ljava/lang/Runnable;

.field public final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lw00;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx00$a;

    invoke-direct {v0, p0}, Lx00$a;-><init>(Lx00;)V

    iput-object v0, p0, Lx00;->h:Lt00;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lx00;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lx00$b;

    invoke-direct {v0, p0}, Lx00$b;-><init>(Lx00;)V

    iput-object v0, p0, Lx00;->j:Landroid/content/ServiceConnection;

    new-instance v1, Lx00$c;

    invoke-direct {v1, p0}, Lx00$c;-><init>(Lx00;)V

    iput-object v1, p0, Lx00;->k:Ljava/lang/Runnable;

    new-instance v1, Lx00$d;

    invoke-direct {v1, p0}, Lx00$d;-><init>(Lx00;)V

    iput-object v1, p0, Lx00;->l:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lx00;->a:Landroid/content/Context;

    iput-object p2, p0, Lx00;->b:Ljava/lang/String;

    iput-object p3, p0, Lx00;->d:Lw00;

    iput-object p4, p0, Lx00;->g:Ljava/util/concurrent/Executor;

    new-instance p1, Lx00$e;

    iget-object p2, p3, Lw00;->b:[Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lx00$e;-><init>(Lx00;[Ljava/lang/String;)V

    iput-object p1, p0, Lx00;->e:Lw00$c;

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lx00;->a:Landroid/content/Context;

    const-class p3, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lx00;->a:Landroid/content/Context;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, v0, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
