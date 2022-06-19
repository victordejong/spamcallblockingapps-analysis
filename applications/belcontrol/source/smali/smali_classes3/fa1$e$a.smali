.class public final Lfa1$e$a;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa1$e;->q(Landroid/app/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {}, Lfa1$e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lfa1$e;->b(I)I

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-static {}, Lfa1$e;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kedlin/cca/core/call/Call;

    invoke-virtual {v3}, Lcom/kedlin/cca/core/call/Call;->d()V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p2}, Lfa1$e;->h(Ljava/lang/String;)Lcom/kedlin/cca/core/call/Call;

    move-result-object v2

    :cond_4
    invoke-static {v1}, Lb91;->l(I)I

    move-result p1

    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/kedlin/cca/core/call/Call;->c()I

    move-result v2

    if-eq v2, p1, :cond_6

    :cond_5
    invoke-static {}, Lfa1$e;->c()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v2, Lcom/kedlin/cca/core/call/Call;

    invoke-static {v1}, Lb91;->l(I)I

    move-result v3

    invoke-direct {v2, p2, v3}, Lcom/kedlin/cca/core/call/Call;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-static {}, Lfa1$e;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current active callers: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfa1$e;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lfa1$e;->d()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lfa1$e;->d()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "state"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "incoming_number"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lfa1$e;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Lfa1;->P(Landroid/content/Intent;)V

    :cond_9
    return-void
.end method
