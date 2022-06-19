.class public final enum Lcom/facebook/biddingkit/http/a/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/http/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/http/a/a;

.field public static final enum BAD_REQUEST:Lcom/facebook/biddingkit/http/a/a;

.field public static final enum NO_BID:Lcom/facebook/biddingkit/http/a/a;

.field public static final enum SUCCESS:Lcom/facebook/biddingkit/http/a/a;

.field public static final enum TIMEOUT:Lcom/facebook/biddingkit/http/a/a;

.field public static final enum UNKNOWN:Lcom/facebook/biddingkit/http/a/a;


# instance fields
.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 24
    new-instance v0, Lcom/facebook/biddingkit/http/a/a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/biddingkit/http/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/http/a/a;->SUCCESS:Lcom/facebook/biddingkit/http/a/a;

    .line 25
    new-instance v1, Lcom/facebook/biddingkit/http/a/a;

    const-string v3, "NO_BID"

    const/4 v4, 0x1

    const/16 v5, 0xcc

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/biddingkit/http/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/biddingkit/http/a/a;->NO_BID:Lcom/facebook/biddingkit/http/a/a;

    .line 26
    new-instance v3, Lcom/facebook/biddingkit/http/a/a;

    const-string v5, "BAD_REQUEST"

    const/4 v6, 0x2

    const/16 v7, 0x190

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/biddingkit/http/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/biddingkit/http/a/a;->BAD_REQUEST:Lcom/facebook/biddingkit/http/a/a;

    .line 27
    new-instance v5, Lcom/facebook/biddingkit/http/a/a;

    const-string v7, "TIMEOUT"

    const/4 v8, 0x3

    const/16 v9, 0x1f8

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/biddingkit/http/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/facebook/biddingkit/http/a/a;->TIMEOUT:Lcom/facebook/biddingkit/http/a/a;

    .line 28
    new-instance v7, Lcom/facebook/biddingkit/http/a/a;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/facebook/biddingkit/http/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/facebook/biddingkit/http/a/a;->UNKNOWN:Lcom/facebook/biddingkit/http/a/a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/facebook/biddingkit/http/a/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 23
    sput-object v9, Lcom/facebook/biddingkit/http/a/a;->$VALUES:[Lcom/facebook/biddingkit/http/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/facebook/biddingkit/http/a/a;->mStatusCode:I

    return-void
.end method

.method public static getValue(I)Lcom/facebook/biddingkit/http/a/a;
    .locals 5

    .line 53
    invoke-static {}, Lcom/facebook/biddingkit/http/a/a;->values()[Lcom/facebook/biddingkit/http/a/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 54
    iget v4, v3, Lcom/facebook/biddingkit/http/a/a;->mStatusCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    sget-object p0, Lcom/facebook/biddingkit/http/a/a;->UNKNOWN:Lcom/facebook/biddingkit/http/a/a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/http/a/a;
    .locals 1

    .line 23
    const-class v0, Lcom/facebook/biddingkit/http/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/http/a/a;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/http/a/a;
    .locals 1

    .line 23
    sget-object v0, Lcom/facebook/biddingkit/http/a/a;->$VALUES:[Lcom/facebook/biddingkit/http/a/a;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/http/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/http/a/a;

    return-object v0
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/String;
    .locals 2

    .line 38
    sget-object v0, Lcom/facebook/biddingkit/http/a/a$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown error"

    return-object v0

    :cond_0
    const-string v0, "Server timeout"

    return-object v0

    :cond_1
    const-string v0, "Invalid request"

    return-object v0

    :cond_2
    const-string v0, "No bid"

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/facebook/biddingkit/http/a/a;->mStatusCode:I

    return v0
.end method
