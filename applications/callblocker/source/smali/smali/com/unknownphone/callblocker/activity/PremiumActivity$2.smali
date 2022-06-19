.class Lcom/unknownphone/callblocker/activity/PremiumActivity$2;
.super Ljava/lang/Object;
.source "PremiumActivity.java"

# interfaces
.implements Lcom/unknownphone/callblocker/custom/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/PremiumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/PremiumActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/PremiumActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$2;->a:Lcom/unknownphone/callblocker/activity/PremiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$2;->a:Lcom/unknownphone/callblocker/activity/PremiumActivity;

    invoke-static {v0}, Lcom/b/a/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$2;->a:Lcom/unknownphone/callblocker/activity/PremiumActivity;

    .line 85
    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->a(Lcom/unknownphone/callblocker/activity/PremiumActivity;)Lcom/b/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$2;->a:Lcom/unknownphone/callblocker/activity/PremiumActivity;

    .line 86
    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->a(Lcom/unknownphone/callblocker/activity/PremiumActivity;)Lcom/b/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string/jumbo v2, "item_name"

    const-string/jumbo v3, "3 months"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, "add_to_cart"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$2;->a:Lcom/unknownphone/callblocker/activity/PremiumActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->a(Lcom/unknownphone/callblocker/activity/PremiumActivity;)Lcom/b/a/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$2;->a:Lcom/unknownphone/callblocker/activity/PremiumActivity;

    const-string/jumbo v2, "inapp.unknownphone.callblocker2"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/a/c;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 96
    :cond_1
    return-void
.end method
