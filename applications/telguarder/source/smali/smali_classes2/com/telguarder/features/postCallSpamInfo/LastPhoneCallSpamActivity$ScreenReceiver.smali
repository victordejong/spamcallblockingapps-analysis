.class public Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LastPhoneCallSpamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;


# direct methods
.method public constructor <init>(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 262
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->access$100(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->access$200(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->access$300(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->access$300(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->access$200(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$ScreenReceiver;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->access$400(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)V

    :cond_1
    return-void
.end method
