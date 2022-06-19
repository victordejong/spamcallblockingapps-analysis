.class Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$a;
.super Ljava/lang/Object;
.source "CallScreenUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/NoHttp;->initialize(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->X(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;)V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_upload_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
