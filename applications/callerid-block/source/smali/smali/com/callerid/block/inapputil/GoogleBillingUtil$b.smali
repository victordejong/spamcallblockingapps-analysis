.class Lcom/callerid/block/inapputil/GoogleBillingUtil$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/billingclient/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/inapputil/GoogleBillingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/g;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_0

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

    iget-object v1, v0, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/inapputil/c;->a(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/inapputil/c;

    sget-object v2, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->f:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v3

    iget-object v4, v1, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/callerid/block/inapputil/c;->e(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u786e\u8ba4\u8d2d\u4e70\u5931\u8d25,responseCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
