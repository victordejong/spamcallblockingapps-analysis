.class Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$3;
.super Ljava/lang/Object;
.source "MainTutorialActivity.java"

# interfaces
.implements Lcom/unknownphone/callblocker/custom/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$3;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$3;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$3;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$3;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    const-class v3, Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity$3;->a:Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/tutorial_main/MainTutorialActivity;->finish()V

    .line 74
    return-void
.end method
