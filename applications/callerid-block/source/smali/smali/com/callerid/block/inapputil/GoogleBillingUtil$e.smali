.class Lcom/callerid/block/inapputil/GoogleBillingUtil$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/inapputil/GoogleBillingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/inapputil/c;

    iget-object v1, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$e;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/callerid/block/inapputil/c;->g(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/inapputil/c;

    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->b:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v2

    iget-object v3, v0, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/callerid/block/inapputil/c;->e(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u67e5\u8be2\u5931\u8d25,responseCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",msg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
