.class Lcom/callapp/contacts/receiver/WifiStateReceiver$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/receiver/WifiStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/receiver/WifiStateReceiver;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/receiver/WifiStateReceiver;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/receiver/WifiStateReceiver$1;->a:Lcom/callapp/contacts/receiver/WifiStateReceiver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 38
    invoke-static {}, Lcom/callapp/contacts/receiver/WifiStateReceiver;->a()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    return-void
.end method
