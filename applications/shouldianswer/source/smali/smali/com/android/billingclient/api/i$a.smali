.class public Lcom/android/billingclient/api/i$a;
.super Ljava/lang/Object;
.source "SkuDetailsParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/i$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/billingclient/api/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/billingclient/api/i$a;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/billingclient/api/i$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/android/billingclient/api/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/i$a;"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/android/billingclient/api/i$a;->b:Ljava/util/List;

    return-object p0
.end method

.method public a()Lcom/android/billingclient/api/i;
    .locals 3

    .line 70
    new-instance v0, Lcom/android/billingclient/api/i;

    invoke-direct {v0}, Lcom/android/billingclient/api/i;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/android/billingclient/api/i$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/i;->a(Lcom/android/billingclient/api/i;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/billingclient/api/i$a;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/android/billingclient/api/i;->a(Lcom/android/billingclient/api/i;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method
