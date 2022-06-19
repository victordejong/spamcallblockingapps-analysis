.class final Lcom/android/billingclient/api/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/android/billingclient/api/p0;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/p0;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/o0;->d:Lcom/android/billingclient/api/p0;

    iput p2, p0, Lcom/android/billingclient/api/o0;->b:I

    iput-object p3, p0, Lcom/android/billingclient/api/o0;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/o0;->d:Lcom/android/billingclient/api/p0;

    iget-object v0, v0, Lcom/android/billingclient/api/p0;->b:Lcom/android/billingclient/api/b;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v1

    iget v2, p0, Lcom/android/billingclient/api/o0;->b:I

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    iget-object v2, p0, Lcom/android/billingclient/api/o0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    invoke-virtual {v1}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/g;)V

    return-void
.end method
