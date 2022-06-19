.class public final synthetic Lcom/callerid/block/inapputil/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/callerid/block/inapputil/GoogleBillingUtil;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/inapputil/a;->b:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    iput-object p2, p0, Lcom/callerid/block/inapputil/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/inapputil/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/inapputil/a;->b:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    iget-object v1, p0, Lcom/callerid/block/inapputil/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/callerid/block/inapputil/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
