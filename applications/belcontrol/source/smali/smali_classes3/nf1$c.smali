.class public Lnf1$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf1$c$b;
    }
.end annotation


# static fields
.field public static final f:J


# instance fields
.field public final a:Ldf1;

.field public final b:Ljava/lang/String;

.field public final c:Lnf1$c$b;

.field public d:Lmf1$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lue1;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x15f90

    :goto_0
    sput-wide v0, Lnf1$c;->f:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldf1;Lnf1$c$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf1$b;->a:Lmf1$b;

    iput-object v0, p0, Lnf1$c;->d:Lmf1$b;

    iput-object p2, p0, Lnf1$c;->a:Ldf1;

    iput-object p3, p0, Lnf1$c;->c:Lnf1$c$b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://z.moatads.com/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/android/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "4724e28"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/status.json"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnf1$c;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ldf1;Lnf1$c$b;Lnf1$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnf1$c;-><init>(Ljava/lang/String;Ldf1;Lnf1$c$b;)V

    return-void
.end method

.method public static synthetic a(Lnf1$c;)Lnf1$c$b;
    .locals 0

    iget-object p0, p0, Lnf1$c;->c:Lnf1$c$b;

    return-object p0
.end method


# virtual methods
.method public final b()Lmf1$b;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnf1$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.7.11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnf1$c;->a:Ldf1;

    invoke-interface {v1, v0}, Ldf1;->a(Ljava/lang/String;)Lvf1;

    move-result-object v0

    invoke-virtual {v0}, Lvf1;->c()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lmf1$b;->a:Lmf1$b;

    return-object v0

    :cond_0
    new-instance v1, Laf1;

    invoke-virtual {v0}, Lvf1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Laf1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Laf1;->b()Z

    move-result v0

    invoke-static {v0}, Lnf1;->h(Z)Z

    invoke-virtual {v1}, Laf1;->a()I

    move-result v0

    invoke-static {v0}, Lnf1;->j(I)I

    invoke-virtual {v1}, Laf1;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmf1$b;->b:Lmf1$b;

    goto :goto_0

    :cond_1
    sget-object v0, Lmf1$b;->a:Lmf1$b;

    :goto_0
    return-object v0
.end method

.method public final c()V
    .locals 9

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-wide v4, Lnf1$c;->f:J

    const-string v6, "MoatOnOffLoop"

    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    const-wide/16 v7, 0xa

    add-long/2addr v4, v7

    sub-long/2addr v4, v2

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lue1;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interruption attempted (and ignored): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lnf1$c;->b()Lmf1$b;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lnf1$c;->d:Lmf1$b;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lue1;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moat is now "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnf1$c;->d:Lmf1$b;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v2, p0, Lnf1$c;->d:Lmf1$b;

    new-instance v3, Lnf1$c$a;

    invoke-direct {v3, p0, v2}, Lnf1$c$a;-><init>(Lnf1$c;Lmf1$b;)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lnf1$c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :catch_0
    move-exception v0

    sget-object v1, Lmf1$b;->a:Lmf1$b;

    iput-object v1, p0, Lnf1$c;->d:Lmf1$b;

    invoke-static {v0}, Luf1;->a(Ljava/lang/Exception;)V

    return-void
.end method
