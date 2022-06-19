.class public Lcom/b/a/a/a/e;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/b/a/a/a/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/b/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/b/a/a/a/e$1;

    invoke-direct {v0}, Lcom/b/a/a/a/e$1;-><init>()V

    sput-object v0, Lcom/b/a/a/a/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/e;->a:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/e;->b:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/b/a/a/a/e;->a()Lcom/b/a/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/b/a/a/a/e;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/b/a/a/a/e;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/b/a/a/a/e;->a()Lcom/b/a/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    .line 48
    return-void
.end method


# virtual methods
.method a()Lcom/b/a/a/a/d;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 63
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/b/a/a/a/e;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/b/a/a/a/d;

    invoke-direct {v0}, Lcom/b/a/a/a/d;-><init>()V

    .line 65
    const-string/jumbo v2, "orderId"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/b/a/a/a/d;->a:Ljava/lang/String;

    .line 66
    const-string/jumbo v2, "packageName"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/b/a/a/a/d;->b:Ljava/lang/String;

    .line 67
    const-string/jumbo v2, "productId"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/b/a/a/a/d;->c:Ljava/lang/String;

    .line 68
    const-string/jumbo v2, "purchaseTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 69
    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v2, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 70
    invoke-static {}, Lcom/b/a/a/a/f;->values()[Lcom/b/a/a/a/f;

    move-result-object v2

    const-string/jumbo v4, "purchaseState"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    aget-object v2, v2, v4

    iput-object v2, v0, Lcom/b/a/a/a/d;->e:Lcom/b/a/a/a/f;

    .line 71
    const-string/jumbo v2, "developerPayload"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/b/a/a/a/d;->f:Ljava/lang/String;

    .line 72
    const-string/jumbo v2, "purchaseToken"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/b/a/a/a/d;->g:Ljava/lang/String;

    .line 73
    const-string/jumbo v2, "autoRenewing"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/b/a/a/a/d;->h:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    .line 69
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    const-string/jumbo v2, "iabv3.purchaseInfo"

    const-string/jumbo v3, "Failed to parse response data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 79
    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/b/a/a/a/e;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_3
    check-cast p1, Lcom/b/a/a/a/e;

    .line 129
    iget-object v2, p0, Lcom/b/a/a/a/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/b/a/a/a/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/a/a/e;->b:Ljava/lang/String;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v2, v2, Lcom/b/a/a/a/d;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v3, v3, Lcom/b/a/a/a/d;->g:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v2, v2, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    iget-object v3, p1, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v3, v3, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 132
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/b/a/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/b/a/a/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return-void
.end method
