.class public Lcom/facebook/ads/AudienceNetworkActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AudienceNetworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/ads/AudienceNetworkActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$601(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/AudienceNetworkActivity;->access$1101(Lcom/facebook/ads/AudienceNetworkActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$801(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$901(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$701(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$201(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$301(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$501(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$101(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->access$401(Lcom/facebook/ads/AudienceNetworkActivity;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$a;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->access$1001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
