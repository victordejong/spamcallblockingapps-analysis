.class Lcom/callerid/block/start/StartActivityTest$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/StartActivityTest;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/StartActivityTest;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/StartActivityTest;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/StartActivityTest$d;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedJudge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/start/StartActivityTest$d;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-static {v1}, Lcom/callerid/block/start/StartActivityTest;->R(Lcom/callerid/block/start/StartActivityTest;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOpenManager"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$d;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-static {v0}, Lcom/callerid/block/start/StartActivityTest;->R(Lcom/callerid/block/start/StartActivityTest;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$d;->b:Lcom/callerid/block/start/StartActivityTest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/start/StartActivityTest;->S(Lcom/callerid/block/start/StartActivityTest;Z)Z

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$d;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-static {v0}, Lcom/callerid/block/start/StartActivityTest;->T(Lcom/callerid/block/start/StartActivityTest;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$d;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-static {v0}, Lcom/callerid/block/start/StartActivityTest;->T(Lcom/callerid/block/start/StartActivityTest;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/main/EZCallApplication;->d:Lcom/callerid/block/util/AppOpenManager;

    iget-object v0, v0, Lcom/callerid/block/util/AppOpenManager;->b:Lcom/google/android/gms/ads/t/a;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    :goto_0
    sput-boolean v1, Lcom/callerid/block/start/StartActivityTest;->z:Z

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$d;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-virtual {v0}, Lcom/callerid/block/start/StartActivityTest;->V()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/main/EZCallApplication;->d:Lcom/callerid/block/util/AppOpenManager;

    iget-boolean v0, v0, Lcom/callerid/block/util/AppOpenManager;->g:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
