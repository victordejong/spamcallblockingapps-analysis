.class public final enum Lcom/mopub/network/MoPubNetworkError$Reason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/MoPubNetworkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/network/MoPubNetworkError$Reason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

.field public static final enum BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

.field public static final enum NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

.field public static final enum TOO_MANY_REQUESTS:Lcom/mopub/network/MoPubNetworkError$Reason;

.field public static final enum TRACKING_FAILURE:Lcom/mopub/network/MoPubNetworkError$Reason;

.field public static final enum UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

.field public static final enum WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

.field public static final synthetic a:[Lcom/mopub/network/MoPubNetworkError$Reason;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string v1, "WARMING_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/network/MoPubNetworkError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    new-instance v1, Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string v3, "NO_FILL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/network/MoPubNetworkError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

    new-instance v3, Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string v5, "BAD_HEADER_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mopub/network/MoPubNetworkError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

    new-instance v5, Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string v7, "BAD_BODY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mopub/network/MoPubNetworkError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    new-instance v7, Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string v9, "TRACKING_FAILURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mopub/network/MoPubNetworkError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mopub/network/MoPubNetworkError$Reason;->TRACKING_FAILURE:Lcom/mopub/network/MoPubNetworkError$Reason;

    new-instance v9, Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string v11, "TOO_MANY_REQUESTS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mopub/network/MoPubNetworkError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mopub/network/MoPubNetworkError$Reason;->TOO_MANY_REQUESTS:Lcom/mopub/network/MoPubNetworkError$Reason;

    new-instance v11, Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string v13, "UNSPECIFIED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/mopub/network/MoPubNetworkError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/mopub/network/MoPubNetworkError$Reason;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/mopub/network/MoPubNetworkError$Reason;->a:[Lcom/mopub/network/MoPubNetworkError$Reason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/network/MoPubNetworkError$Reason;
    .locals 1

    const-class v0, Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/network/MoPubNetworkError$Reason;

    return-object p0
.end method

.method public static values()[Lcom/mopub/network/MoPubNetworkError$Reason;
    .locals 1

    sget-object v0, Lcom/mopub/network/MoPubNetworkError$Reason;->a:[Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v0}, [Lcom/mopub/network/MoPubNetworkError$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/network/MoPubNetworkError$Reason;

    return-object v0
.end method
