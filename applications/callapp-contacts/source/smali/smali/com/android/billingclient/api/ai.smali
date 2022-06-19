.class final Lcom/android/billingclient/api/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/m;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/m;)V
    .locals 0

    iput-object p2, p0, Lcom/android/billingclient/api/ai;->a:Lcom/android/billingclient/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/ai;->a:Lcom/android/billingclient/api/m;

    .line 1
    sget-object v1, Lcom/android/billingclient/api/y;->r:Lcom/android/billingclient/api/g;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/m;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
