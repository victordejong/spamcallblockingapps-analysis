.class public final Lorg/mistergroup/shouldianswer/b/h$h;
.super Ljava/util/TimerTask;
.source "RingingAlertPopup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/h;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/b/h;

.field final synthetic b:Landroid/telephony/TelephonyManager;

.field final synthetic c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic d:Lkotlin/e/b/m$b;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/b/h;Landroid/telephony/TelephonyManager;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/e/b/m$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Lkotlin/e/b/m$b;",
            ")V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$h;->a:Lorg/mistergroup/shouldianswer/b/h;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/h$h;->b:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/b/h$h;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/b/h$h;->d:Lkotlin/e/b/m$b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 68
    :try_start_0
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h$h;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_0

    .line 70
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h$h;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/b/h;->a(Lorg/mistergroup/shouldianswer/b/h;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "RingingAlertPopup.show Timer - Detected iddle, closing alert_popup"

    invoke-static {v3, v4, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 72
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h$h;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/b/h;->b(Lorg/mistergroup/shouldianswer/b/h;)V

    .line 73
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/e$a;->h:Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/h$h;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/mistergroup/shouldianswer/utils/e;->c(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/h$h;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/b/h;->a(Lorg/mistergroup/shouldianswer/b/h;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RingingAlertPopup.show Timer - Waited for nonidle! state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 78
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h$h;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v3, v0}, Lorg/mistergroup/shouldianswer/b/h;->a(Lorg/mistergroup/shouldianswer/b/h;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 82
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v4, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 84
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$h;->d:Lkotlin/e/b/m$b;

    iget v1, v1, Lkotlin/e/b/m$b;->a:I

    const/16 v2, 0x1770

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$h;->a:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {v1, v0}, Lorg/mistergroup/shouldianswer/b/h;->a(Lorg/mistergroup/shouldianswer/b/h;Z)V

    .line 85
    :cond_2
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$h;->d:Lkotlin/e/b/m$b;

    iget v1, v0, Lkotlin/e/b/m$b;->a:I

    add-int/lit16 v1, v1, 0xc8

    iput v1, v0, Lkotlin/e/b/m$b;->a:I

    return-void
.end method
