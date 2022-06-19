.class public Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;
.super Landroid/app/Activity;
.source "PhoneCallWidgetDcyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static openPermDcyActivity(Landroid/content/Context;)V
    .locals 2

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x14808000

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isInstantiated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity$1;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 40
    invoke-virtual {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;->finish()V

    return-void
.end method
