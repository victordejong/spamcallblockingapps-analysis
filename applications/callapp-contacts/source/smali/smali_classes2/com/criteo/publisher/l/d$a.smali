.class public final Lcom/criteo/publisher/l/d$a;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/l/d;->a(Lcom/criteo/publisher/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/l/d;

.field final synthetic b:Lcom/criteo/publisher/o;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/l/d;Lcom/criteo/publisher/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/o;",
            ")V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/criteo/publisher/l/d$a;->a:Lcom/criteo/publisher/l/d;

    iput-object p2, p0, Lcom/criteo/publisher/l/d$a;->b:Lcom/criteo/publisher/o;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/criteo/publisher/l/d$a;->a:Lcom/criteo/publisher/l/d;

    .line 1042
    iget-object v0, v0, Lcom/criteo/publisher/l/d;->b:Ljava/lang/ref/Reference;

    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/CriteoInterstitialAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/criteo/publisher/l/d$a;->a:Lcom/criteo/publisher/l/d;

    iget-object v2, p0, Lcom/criteo/publisher/l/d$a;->b:Lcom/criteo/publisher/o;

    .line 2071
    sget-object v3, Lcom/criteo/publisher/l/c;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return-void

    .line 2078
    :pswitch_0
    invoke-interface {v0}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdClicked()V

    .line 2079
    invoke-interface {v0}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdLeftApplication()V

    return-void

    .line 2076
    :pswitch_1
    invoke-interface {v0}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdClosed()V

    return-void

    .line 2075
    :pswitch_2
    invoke-interface {v0}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdOpened()V

    return-void

    .line 2074
    :pswitch_3
    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    return-void

    .line 2073
    :pswitch_4
    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    return-void

    .line 2072
    :pswitch_5
    iget-object v1, v1, Lcom/criteo/publisher/l/d;->a:Lcom/criteo/publisher/CriteoInterstitial;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/CriteoInterstitialAdListener;->onAdReceived(Lcom/criteo/publisher/CriteoInterstitial;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
