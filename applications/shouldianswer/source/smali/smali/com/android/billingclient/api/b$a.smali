.class public final Lcom/android/billingclient/api/b$a;
.super Ljava/lang/Object;
.source "BillingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/android/billingclient/api/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/billingclient/api/b$a;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/b$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b$a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/b$a;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/billingclient/api/b$a;->b:Lcom/android/billingclient/api/g;

    return-object p0
.end method

.method public a()Lcom/android/billingclient/api/b;
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/billingclient/api/b$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/billingclient/api/b$a;->b:Lcom/android/billingclient/api/g;

    if-eqz v1, :cond_0

    .line 188
    new-instance v2, Lcom/android/billingclient/api/c;

    invoke-direct {v2, v0, v1}, Lcom/android/billingclient/api/c;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/g;)V

    return-object v2

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for purchases updates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
