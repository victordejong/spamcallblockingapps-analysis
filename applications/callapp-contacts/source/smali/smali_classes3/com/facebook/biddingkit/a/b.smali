.class public final enum Lcom/facebook/biddingkit/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/a/b;

.field public static final enum DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/a/b;

.field public static final enum NO_BID:Lcom/facebook/biddingkit/a/b;

.field public static final enum OUTBID:Lcom/facebook/biddingkit/a/b;

.field public static final enum TIMEOUT:Lcom/facebook/biddingkit/a/b;

.field public static final enum WIN:Lcom/facebook/biddingkit/a/b;


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 24
    new-instance v0, Lcom/facebook/biddingkit/a/b;

    const-string v1, "WIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/biddingkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/a/b;->WIN:Lcom/facebook/biddingkit/a/b;

    .line 25
    new-instance v1, Lcom/facebook/biddingkit/a/b;

    const-string v3, "TIMEOUT"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/biddingkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/biddingkit/a/b;->TIMEOUT:Lcom/facebook/biddingkit/a/b;

    .line 26
    new-instance v3, Lcom/facebook/biddingkit/a/b;

    const-string v6, "NO_BID"

    const/16 v7, 0x9

    invoke-direct {v3, v6, v5, v7}, Lcom/facebook/biddingkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/biddingkit/a/b;->NO_BID:Lcom/facebook/biddingkit/a/b;

    .line 27
    new-instance v6, Lcom/facebook/biddingkit/a/b;

    const-string v7, "OUTBID"

    const/4 v8, 0x3

    const/16 v9, 0x66

    invoke-direct {v6, v7, v8, v9}, Lcom/facebook/biddingkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/facebook/biddingkit/a/b;->OUTBID:Lcom/facebook/biddingkit/a/b;

    .line 28
    new-instance v7, Lcom/facebook/biddingkit/a/b;

    const-string v9, "DID_NOT_PARTICIPATE"

    const/4 v10, 0x4

    const/16 v11, 0x7d3

    invoke-direct {v7, v9, v10, v11}, Lcom/facebook/biddingkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/facebook/biddingkit/a/b;->DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/a/b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/facebook/biddingkit/a/b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v5

    aput-object v6, v9, v8

    aput-object v7, v9, v10

    .line 23
    sput-object v9, Lcom/facebook/biddingkit/a/b;->$VALUES:[Lcom/facebook/biddingkit/a/b;

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
    iput p3, p0, Lcom/facebook/biddingkit/a/b;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/a/b;
    .locals 1

    .line 23
    const-class v0, Lcom/facebook/biddingkit/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/a/b;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/a/b;
    .locals 1

    .line 23
    sget-object v0, Lcom/facebook/biddingkit/a/b;->$VALUES:[Lcom/facebook/biddingkit/a/b;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/a/b;

    return-object v0
.end method


# virtual methods
.method public final getStringValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget v0, p0, Lcom/facebook/biddingkit/a/b;->mCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
