.class public final synthetic Lcom/allinone/callerid/inapputil/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/billingclient/api/m;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/inapputil/a;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/allinone/callerid/inapputil/a;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->t(Landroid/app/Activity;Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
