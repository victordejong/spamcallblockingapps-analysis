.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$o;
.super Ljava/lang/Object;
.source "CallScreenPdtActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$o;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$o;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->q0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Z)Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/gg/e;->d()Lcom/allinone/callerid/util/gg/e;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$o;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/util/gg/e;->e(ZLandroid/app/Activity;)V

    :cond_0
    return-void
.end method
