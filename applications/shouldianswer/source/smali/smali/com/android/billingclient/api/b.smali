.class public abstract Lcom/android/billingclient/api/b;
.super Ljava/lang/Object;
.source "BillingClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/billingclient/api/b$a;
    .locals 2

    .line 200
    new-instance v0, Lcom/android/billingclient/api/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/b$a;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/b$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcom/android/billingclient/api/e;)I
.end method

.method public abstract a(Ljava/lang/String;)Lcom/android/billingclient/api/f$a;
.end method

.method public abstract a(Lcom/android/billingclient/api/d;)V
.end method

.method public abstract a(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/j;)V
.end method
