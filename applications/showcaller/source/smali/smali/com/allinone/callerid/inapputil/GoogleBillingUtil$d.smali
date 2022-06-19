.class Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;
.super Ljava/lang/Object;
.source "GoogleBillingUtil.java"

# interfaces
.implements Lcom/android/billingclient/api/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/inapputil/GoogleBillingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/inapputil/GoogleBillingUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->b:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/inapputil/GoogleBillingUtil;Lcom/allinone/callerid/inapputil/GoogleBillingUtil$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;-><init>(Lcom/allinone/callerid/inapputil/GoogleBillingUtil;)V

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
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/inapputil/c;

    .line 4
    iget-object v2, v1, Lcom/allinone/callerid/inapputil/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 5
    invoke-virtual {v1, p2, v2}, Lcom/allinone/callerid/inapputil/c;->f(Lcom/android/billingclient/api/Purchase;Z)Z

    move-result v1

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 7
    iget-object v2, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->b:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->b:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    iget-object v2, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->e(Lcom/allinone/callerid/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->b:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    iget-object v2, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->g(Lcom/allinone/callerid/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "subs"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-static {}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->b:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    iget-object v2, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->g(Lcom/allinone/callerid/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f85\u5904\u7406\u7684\u8ba2\u5355:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->h()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8d2d\u4e70\u5931\u8d25,responseCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",msg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->d(Ljava/lang/String;)V

    .line 21
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/inapputil/c;

    .line 22
    sget-object v1, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->e:Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v2

    iget-object v3, v0, Lcom/allinone/callerid/inapputil/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/allinone/callerid/inapputil/GoogleBillingUtil$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/allinone/callerid/inapputil/c;->e(Lcom/allinone/callerid/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;IZ)V

    goto :goto_1

    :cond_7
    return-void
.end method
