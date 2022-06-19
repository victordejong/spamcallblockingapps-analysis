.class final Lcom/android/billingclient/api/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/z;

.field final synthetic b:Lcom/android/billingclient/api/r;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/r;Lcom/android/billingclient/api/z;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/q;->b:Lcom/android/billingclient/api/r;

    iput-object p2, p0, Lcom/android/billingclient/api/q;->a:Lcom/android/billingclient/api/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/q;->b:Lcom/android/billingclient/api/r;

    iget-object v0, v0, Lcom/android/billingclient/api/r;->c:Lcom/android/billingclient/api/m;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/q;->a:Lcom/android/billingclient/api/z;

    .line 1000
    iget v2, v2, Lcom/android/billingclient/api/z;->b:I

    .line 2000
    iput v2, v1, Lcom/android/billingclient/api/g$a;->a:I

    .line 1
    iget-object v2, p0, Lcom/android/billingclient/api/q;->a:Lcom/android/billingclient/api/z;

    .line 3000
    iget-object v2, v2, Lcom/android/billingclient/api/z;->c:Ljava/lang/String;

    .line 4000
    iput-object v2, v1, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/q;->a:Lcom/android/billingclient/api/z;

    .line 5000
    iget-object v2, v2, Lcom/android/billingclient/api/z;->a:Ljava/util/List;

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/m;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
