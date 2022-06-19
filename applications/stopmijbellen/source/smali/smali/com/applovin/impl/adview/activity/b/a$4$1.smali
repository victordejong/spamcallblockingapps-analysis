.class Lcom/applovin/impl/adview/activity/b/a$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/a$4;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/activity/b/a$4;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/activity/b/a$4;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/a$4$1;->a:Lcom/applovin/impl/adview/activity/b/a$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AppLovinFullscreenActivity"

    const-string v1, "Dismissing on-screen ad due to app relaunched via launcher."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a$4$1;->a:Lcom/applovin/impl/adview/activity/b/a$4;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/a$4;->a:Lcom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->h()V

    return-void
.end method
