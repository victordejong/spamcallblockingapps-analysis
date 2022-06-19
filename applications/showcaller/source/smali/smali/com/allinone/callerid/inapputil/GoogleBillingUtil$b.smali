.class Lcom/allinone/callerid/inapputil/GoogleBillingUtil$b;
.super Ljava/lang/Object;
.source "GoogleBillingUtil.java"

# interfaces
.implements Lcom/android/billingclient/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/inapputil/GoogleBillingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/inapputil/GoogleBillingUtil;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$b;->b:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/g;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/inapputil/c;

    .line 3
    iget-object v1, v0, Lcom/allinone/callerid/inapputil/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/inapputil/c;->a(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/inapputil/c;

    .line 5
    sget-object v2, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->h:Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v3

    iget-object v4, v1, Lcom/allinone/callerid/inapputil/c;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/allinone/callerid/inapputil/c;->e(Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
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

    invoke-static {p1}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
