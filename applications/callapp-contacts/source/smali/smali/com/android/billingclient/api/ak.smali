.class final Lcom/android/billingclient/api/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/billingclient/api/al;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/al;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/ak;->c:Lcom/android/billingclient/api/al;

    iput p2, p0, Lcom/android/billingclient/api/ak;->a:I

    iput-object p3, p0, Lcom/android/billingclient/api/ak;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/ak;->c:Lcom/android/billingclient/api/al;

    iget-object v0, v0, Lcom/android/billingclient/api/al;->b:Lcom/android/billingclient/api/b;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v1

    iget v2, p0, Lcom/android/billingclient/api/ak;->a:I

    .line 1000
    iput v2, v1, Lcom/android/billingclient/api/g$a;->a:I

    .line 1
    iget-object v2, p0, Lcom/android/billingclient/api/ak;->b:Ljava/lang/String;

    .line 2000
    iput-object v2, v1, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/g;)V

    return-void
.end method
