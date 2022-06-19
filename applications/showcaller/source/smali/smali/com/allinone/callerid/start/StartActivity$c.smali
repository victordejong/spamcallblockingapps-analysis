.class Lcom/allinone/callerid/start/StartActivity$c;
.super Landroid/os/CountDownTimer;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/StartActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/StartActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/StartActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/StartActivity$c;->a:Lcom/allinone/callerid/start/StartActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AppOpenManager"

    const-string v1, "onFinish"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->j:Lcom/allinone/callerid/util/gg/AppOpenManager;

    iget-object v0, v0, Lcom/allinone/callerid/util/gg/AppOpenManager;->d:Lcom/google/android/gms/ads/u/a;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    sput-boolean v1, Lcom/allinone/callerid/start/StartActivity;->u:Z

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$c;->a:Lcom/allinone/callerid/start/StartActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/start/StartActivity;->a0()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->j:Lcom/allinone/callerid/util/gg/AppOpenManager;

    iget-boolean v0, v0, Lcom/allinone/callerid/util/gg/AppOpenManager;->j:Z

    if-nez v0, :cond_2

    .line 7
    sput-boolean v1, Lcom/allinone/callerid/start/StartActivity;->u:Z

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$c;->a:Lcom/allinone/callerid/start/StartActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/start/StartActivity;->a0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "millisUntilFinished:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppOpenManager"

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
