.class public Lo91;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo91$b;,
        Lo91$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "o91"

.field public static b:Ljava/util/concurrent/ScheduledExecutorService;

.field public static c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public static d:I

.field public static e:Lo91$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lo91;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const v0, 0x1d4c0

    sput v0, Lo91;->d:I

    const/4 v0, 0x0

    sput-object v0, Lo91;->e:Lo91$b;

    return-void
.end method

.method public static a(Lo91$c;)V
    .locals 2

    sget-object v0, Lo91;->e:Lo91$b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lo91$c;->a:Lo91$c;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {}, Lfa1$e;->f()I

    move-result p0

    if-le p0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mute requested, no previous state found, but Target.CALL cannot be muted while there is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfa1$e;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " active callers"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Lo91$b;

    invoke-direct {p0}, Lo91$b;-><init>()V

    iget v0, p0, Lo91$b;->a:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    sput-object p0, Lo91;->e:Lo91$b;

    invoke-static {p0}, Lo91;->d(Lo91$b;)V

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    invoke-virtual {p0, v0, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-void
.end method

.method public static b(Lo91$c;)V
    .locals 4

    invoke-static {p0}, Lo91;->a(Lo91$c;)V

    sget-object p0, Lo91;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    sget-object p0, Lo91;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lo91$a;

    invoke-direct {v0}, Lo91$a;-><init>()V

    const-wide/16 v1, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lo91;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static c()V
    .locals 6

    sget-object v0, Lr71$a;->J:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lo91$b;

    invoke-direct {v2, v1}, Lo91$b;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lr71$a;->o(Ljava/lang/String;)V

    iget-wide v0, v2, Lo91$b;->d:J

    sget v3, Lo91;->d:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    return-void

    :cond_1
    sput-object v2, Lo91;->e:Lo91$b;

    invoke-static {}, Lo91;->e()V

    return-void
.end method

.method public static d(Lo91$b;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lo91$b;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Save silencer state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lr71$a;->J:Lr71$a;

    invoke-virtual {v0, p0}, Lr71$a;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lo91;->e:Lo91$b;

    if-nez v0, :cond_0

    invoke-static {}, Lo91;->c()V

    return-void

    :cond_0
    sget-object v0, Lo91;->e:Lo91$b;

    invoke-virtual {v0}, Lo91$b;->a()V

    const/4 v0, 0x0

    sput-object v0, Lo91;->e:Lo91$b;

    return-void
.end method
