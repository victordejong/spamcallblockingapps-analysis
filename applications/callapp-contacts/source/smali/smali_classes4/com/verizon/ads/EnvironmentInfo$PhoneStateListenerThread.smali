.class final Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/EnvironmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhoneStateListenerThread"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/telephony/PhoneStateListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "vas-phone-state-listener"

    .line 951
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 953
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/verizon/ads/EnvironmentInfo$1;)V
    .locals 0

    .line 943
    invoke-direct {p0, p1}, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 960
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 962
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "phone"

    .line 966
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 969
    new-instance v1, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread$1;

    invoke-direct {v1, p0}, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread$1;-><init>(Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;)V

    iput-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;->b:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    .line 982
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    .line 985
    :cond_0
    invoke-static {}, Lcom/verizon/ads/EnvironmentInfo;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Could not register signals strength listener. No telephony service available."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 989
    :cond_1
    invoke-static {}, Lcom/verizon/ads/EnvironmentInfo;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Application context was destroyed. Cannot listen for signals strength."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method
