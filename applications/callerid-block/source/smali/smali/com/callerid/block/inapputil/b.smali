.class public final synthetic Lcom/callerid/block/inapputil/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/billingclient/api/m;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/inapputil/b;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/inapputil/b;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->s(Landroid/app/Activity;Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
