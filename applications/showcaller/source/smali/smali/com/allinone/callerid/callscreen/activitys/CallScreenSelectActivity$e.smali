.class Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$e;
.super Ljava/lang/Object;
.source "CallScreenSelectActivity.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->o0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->n0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->c0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$i;

    move-result-object p1

    const/16 v0, 0x309

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->p0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
