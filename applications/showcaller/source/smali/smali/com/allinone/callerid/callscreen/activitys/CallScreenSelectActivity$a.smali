.class Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$a;
.super Ljava/lang/Object;
.source "CallScreenSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->X(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->j0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    return-void
.end method
