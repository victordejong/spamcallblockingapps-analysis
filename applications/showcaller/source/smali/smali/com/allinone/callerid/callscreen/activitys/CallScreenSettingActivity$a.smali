.class Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$a;
.super Ljava/lang/Object;
.source "CallScreenSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->X(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V

    return-void
.end method
