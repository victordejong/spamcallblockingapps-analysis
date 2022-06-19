.class final Lcom/android/billingclient/api/o0;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/android/billingclient/api/p0;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/p0;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/o0;->f:Lcom/android/billingclient/api/p0;

    iput p2, p0, Lcom/android/billingclient/api/o0;->d:I

    iput-object p3, p0, Lcom/android/billingclient/api/o0;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/o0;->f:Lcom/android/billingclient/api/p0;

    iget-object v0, v0, Lcom/android/billingclient/api/p0;->b:Lcom/android/billingclient/api/b;

    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v1

    iget v2, p0, Lcom/android/billingclient/api/o0;->d:I

    .line 1
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    iget-object v2, p0, Lcom/android/billingclient/api/o0;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 3
    invoke-virtual {v1}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/g;)V

    return-void
.end method
