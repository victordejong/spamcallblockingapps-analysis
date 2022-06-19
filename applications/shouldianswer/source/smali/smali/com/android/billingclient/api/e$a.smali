.class public Lcom/android/billingclient/api/e$a;
.super Ljava/lang/Object;
.source "BillingFlowParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/android/billingclient/api/h;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/android/billingclient/api/e$a;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/e$1;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/android/billingclient/api/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/billingclient/api/e$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/billingclient/api/e$a;->c:Lcom/android/billingclient/api/h;

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/android/billingclient/api/e$a;->a:Ljava/lang/String;

    return-object p0

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sku details already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/android/billingclient/api/e;
    .locals 2

    .line 324
    new-instance v0, Lcom/android/billingclient/api/e;

    invoke-direct {v0}, Lcom/android/billingclient/api/e;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/android/billingclient/api/e$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->a(Lcom/android/billingclient/api/e;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/android/billingclient/api/e$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->b(Lcom/android/billingclient/api/e;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcom/android/billingclient/api/e$a;->c:Lcom/android/billingclient/api/h;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->a(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 328
    iget-object v1, p0, Lcom/android/billingclient/api/e$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->c(Lcom/android/billingclient/api/e;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/android/billingclient/api/e$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->d(Lcom/android/billingclient/api/e;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    iget-boolean v1, p0, Lcom/android/billingclient/api/e$a;->f:Z

    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->a(Lcom/android/billingclient/api/e;Z)Z

    .line 331
    iget v1, p0, Lcom/android/billingclient/api/e$a;->g:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->a(Lcom/android/billingclient/api/e;I)I

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/e$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/billingclient/api/e$a;->c:Lcom/android/billingclient/api/h;

    if-nez v0, :cond_0

    .line 183
    iput-object p1, p0, Lcom/android/billingclient/api/e$a;->b:Ljava/lang/String;

    return-object p0

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sku details already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
