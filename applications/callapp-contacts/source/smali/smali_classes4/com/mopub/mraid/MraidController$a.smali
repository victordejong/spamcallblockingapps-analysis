.class final Lcom/mopub/mraid/MraidController$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidController;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$a;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    .line 959
    iput p1, p0, Lcom/mopub/mraid/MraidController$a;->c:I

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 963
    iget-object p1, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 967
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 968
    iget-object p1, p0, Lcom/mopub/mraid/MraidController$a;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {p1}, Lcom/mopub/mraid/MraidController;->w(Lcom/mopub/mraid/MraidController;)I

    move-result p1

    .line 970
    iget p2, p0, Lcom/mopub/mraid/MraidController$a;->c:I

    if-eq p1, p2, :cond_1

    .line 971
    iput p1, p0, Lcom/mopub/mraid/MraidController$a;->c:I

    .line 972
    iget-object p1, p0, Lcom/mopub/mraid/MraidController$a;->a:Lcom/mopub/mraid/MraidController;

    const/4 p2, 0x0

    .line 1483
    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final register(Landroid/content/Context;)V
    .locals 2

    .line 978
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 979
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 981
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final unregister()V
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 989
    iput-object v0, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method
