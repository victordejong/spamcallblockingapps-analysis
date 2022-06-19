.class final Lcom/android/billingclient/api/zzaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/b;
.implements Lcom/android/billingclient/api/e;
.implements Lcom/android/billingclient/api/h;
.implements Lcom/android/billingclient/api/j;
.implements Lcom/android/billingclient/api/m;


# instance fields
.field private final a:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/billingclient/api/zzaj;->a:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/billingclient/api/zzaj;->a:J

    return-void
.end method

.method public static native nativeOnAcknowledgePurchaseResponse(ILjava/lang/String;J)V
.end method

.method public static native nativeOnBillingServiceDisconnected()V
.end method

.method public static native nativeOnBillingSetupFinished(ILjava/lang/String;J)V
.end method

.method public static native nativeOnPriceChangeConfirmationResult(ILjava/lang/String;J)V
.end method

.method public static native nativeOnPurchasesUpdated(ILjava/lang/String;[Lcom/android/billingclient/api/i;)V
.end method

.method public static native nativeOnSkuDetailsResponse(ILjava/lang/String;[Lcom/android/billingclient/api/k;J)V
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/zzaj;->nativeOnBillingServiceDisconnected()V

    return-void
.end method

.method public final a(Lcom/android/billingclient/api/g;)V
    .locals 3

    .line 3000
    iget v0, p1, Lcom/android/billingclient/api/g;->a:I

    .line 4000
    iget-object p1, p1, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    .line 1
    iget-wide v1, p0, Lcom/android/billingclient/api/zzaj;->a:J

    .line 2
    invoke-static {v0, p1, v1, v2}, Lcom/android/billingclient/api/zzaj;->nativeOnAcknowledgePurchaseResponse(ILjava/lang/String;J)V

    return-void
.end method

.method public final a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/billingclient/api/i;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/billingclient/api/i;

    .line 9000
    iget v0, p1, Lcom/android/billingclient/api/g;->a:I

    .line 10000
    iget-object p1, p1, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/android/billingclient/api/zzaj;->nativeOnPurchasesUpdated(ILjava/lang/String;[Lcom/android/billingclient/api/i;)V

    return-void
.end method

.method public final b(Lcom/android/billingclient/api/g;)V
    .locals 3

    .line 5000
    iget v0, p1, Lcom/android/billingclient/api/g;->a:I

    .line 6000
    iget-object p1, p1, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    .line 1
    iget-wide v1, p0, Lcom/android/billingclient/api/zzaj;->a:J

    .line 2
    invoke-static {v0, p1, v1, v2}, Lcom/android/billingclient/api/zzaj;->nativeOnBillingSetupFinished(ILjava/lang/String;J)V

    return-void
.end method

.method public final b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/billingclient/api/k;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/billingclient/api/k;

    .line 1000
    iget v0, p1, Lcom/android/billingclient/api/g;->a:I

    .line 2000
    iget-object p1, p1, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    .line 4
    iget-wide v1, p0, Lcom/android/billingclient/api/zzaj;->a:J

    .line 5
    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/billingclient/api/zzaj;->nativeOnSkuDetailsResponse(ILjava/lang/String;[Lcom/android/billingclient/api/k;J)V

    return-void
.end method

.method public final c(Lcom/android/billingclient/api/g;)V
    .locals 3

    .line 7000
    iget v0, p1, Lcom/android/billingclient/api/g;->a:I

    .line 8000
    iget-object p1, p1, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    .line 1
    iget-wide v1, p0, Lcom/android/billingclient/api/zzaj;->a:J

    .line 2
    invoke-static {v0, p1, v1, v2}, Lcom/android/billingclient/api/zzaj;->nativeOnPriceChangeConfirmationResult(ILjava/lang/String;J)V

    return-void
.end method
