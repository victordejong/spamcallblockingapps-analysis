.class public Lcom/allinone/callerid/inapputil/c;
.super Ljava/lang/Object;
.source "OnGoogleBillingListener.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/inapputil/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public d(Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V
    .locals 0

    return-void
.end method

.method public e(Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V
    .locals 0

    return-void
.end method

.method public f(Lcom/android/billingclient/api/Purchase;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public g(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/android/billingclient/api/Purchase;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method
