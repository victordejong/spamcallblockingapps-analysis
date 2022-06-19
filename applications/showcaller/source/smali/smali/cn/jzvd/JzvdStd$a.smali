.class Lcn/jzvd/JzvdStd$a;
.super Landroid/content/BroadcastReceiver;
.source "JzvdStd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jzvd/JzvdStd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/jzvd/JzvdStd;


# direct methods
.method constructor <init>(Lcn/jzvd/JzvdStd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/jzvd/JzvdStd$a;->a:Lcn/jzvd/JzvdStd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "level"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "scale"

    const/16 v1, 0x64

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    mul-int/lit8 p1, p1, 0x64

    .line 5
    div-int/2addr p1, p2

    .line 6
    sput p1, Lcn/jzvd/JzvdStd;->d0:I

    .line 7
    iget-object p1, p0, Lcn/jzvd/JzvdStd$a;->a:Lcn/jzvd/JzvdStd;

    invoke-virtual {p1}, Lcn/jzvd/JzvdStd;->setBatteryLevel()V

    .line 8
    :try_start_0
    iget-object p1, p0, Lcn/jzvd/JzvdStd$a;->a:Lcn/jzvd/JzvdStd;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcn/jzvd/JzvdStd$a;->a:Lcn/jzvd/JzvdStd;

    invoke-static {p2}, Lcn/jzvd/JzvdStd;->V(Lcn/jzvd/JzvdStd;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
