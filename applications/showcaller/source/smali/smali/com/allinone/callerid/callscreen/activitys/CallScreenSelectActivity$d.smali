.class Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$d;
.super Ljava/lang/Object;
.source "CallScreenSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
