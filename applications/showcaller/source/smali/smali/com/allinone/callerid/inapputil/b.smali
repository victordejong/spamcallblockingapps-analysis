.class public final synthetic Lcom/allinone/callerid/inapputil/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/allinone/callerid/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/inapputil/b;->d:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    iput-object p2, p0, Lcom/allinone/callerid/inapputil/b;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/allinone/callerid/inapputil/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/allinone/callerid/inapputil/b;->d:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    iget-object v1, p0, Lcom/allinone/callerid/inapputil/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/allinone/callerid/inapputil/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
