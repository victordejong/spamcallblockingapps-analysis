.class public Lcom/mopub/network/MoPubNetworkError;
.super Lcom/mopub/volley/VolleyError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/MoPubNetworkError$Reason;
    }
.end annotation


# instance fields
.field private final b:Lcom/mopub/network/MoPubNetworkError$Reason;

.field private final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->b:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/NetworkResponse;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    .line 35
    iput-object p2, p0, Lcom/mopub/network/MoPubNetworkError;->b:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/mopub/network/MoPubNetworkError;->b:Lcom/mopub/network/MoPubNetworkError$Reason;

    .line 59
    iput-object p3, p0, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iput-object p3, p0, Lcom/mopub/network/MoPubNetworkError;->b:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 41
    iput-object p2, p0, Lcom/mopub/network/MoPubNetworkError;->b:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    .line 83
    iget-object v2, p0, Lcom/mopub/network/MoPubNetworkError;->b:Lcom/mopub/network/MoPubNetworkError$Reason;

    iget-object v3, p1, Lcom/mopub/network/MoPubNetworkError;->b:Lcom/mopub/network/MoPubNetworkError$Reason;

    if-eq v2, v3, :cond_2

    return v1

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    iget-object p1, p1, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    if-nez p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getReason()Lcom/mopub/network/MoPubNetworkError$Reason;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mopub/network/MoPubNetworkError;->b:Lcom/mopub/network/MoPubNetworkError$Reason;

    return-object v0
.end method

.method public getRefreshTimeMillis()Ljava/lang/Integer;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/mopub/network/MoPubNetworkError;->b:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError$Reason;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v1, p0, Lcom/mopub/network/MoPubNetworkError;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
