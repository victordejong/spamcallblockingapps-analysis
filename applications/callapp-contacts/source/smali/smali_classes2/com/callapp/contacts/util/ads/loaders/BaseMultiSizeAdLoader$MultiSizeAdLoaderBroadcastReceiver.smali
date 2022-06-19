.class Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader$MultiSizeAdLoaderBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiSizeAdLoaderBroadcastReceiver"
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader$MultiSizeAdLoaderBroadcastReceiver;->a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 170
    const-class v0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "BaseMultiSizeAdLoader.onReceive called with ACTION = [%s],"

    invoke-static {v0, p2, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader$MultiSizeAdLoaderBroadcastReceiver;->a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    invoke-static {p1, v3}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Z)V

    :cond_1
    return-void

    .line 172
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader$MultiSizeAdLoaderBroadcastReceiver;->a:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Z)V

    return-void
.end method
