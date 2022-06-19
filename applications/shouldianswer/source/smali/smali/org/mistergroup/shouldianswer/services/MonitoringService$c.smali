.class final Lorg/mistergroup/shouldianswer/services/MonitoringService$c;
.super Landroid/telephony/PhoneStateListener;
.source "MonitoringService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/services/MonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 114
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/c;->M()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object p2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/c;->M()Ljava/lang/String;

    move-result-object p2

    .line 115
    :cond_1
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MyPhoneStateListener.onCallStateChanged state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 118
    :cond_2
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/e$a;->i:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {p1, v2, p2}, Lorg/mistergroup/shouldianswer/utils/e;->b(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_3
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/e$a;->i:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {p1, v2, p2}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_4
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/e$a;->i:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {p1, v2, p2}, Lorg/mistergroup/shouldianswer/utils/e;->c(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 124
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
