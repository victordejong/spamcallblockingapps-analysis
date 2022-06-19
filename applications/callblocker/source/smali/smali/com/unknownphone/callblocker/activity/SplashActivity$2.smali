.class Lcom/unknownphone/callblocker/activity/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/SplashActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/SplashActivity$2;->a:Lcom/unknownphone/callblocker/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SplashActivity$2;->a:Lcom/unknownphone/callblocker/activity/SplashActivity;

    const-string/jumbo v1, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {v0, v1, v2}, Lcom/unknownphone/callblocker/activity/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "seen_tutorial"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SplashActivity$2;->a:Lcom/unknownphone/callblocker/activity/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/SplashActivity$2;->a:Lcom/unknownphone/callblocker/activity/SplashActivity;

    const-class v3, Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SplashActivity$2;->a:Lcom/unknownphone/callblocker/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/SplashActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SplashActivity$2;->a:Lcom/unknownphone/callblocker/activity/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/SplashActivity$2;->a:Lcom/unknownphone/callblocker/activity/SplashActivity;

    const-class v3, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SplashActivity$2;->a:Lcom/unknownphone/callblocker/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/SplashActivity;->finish()V

    goto :goto_0
.end method
