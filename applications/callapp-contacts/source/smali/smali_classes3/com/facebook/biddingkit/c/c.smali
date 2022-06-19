.class public final enum Lcom/facebook/biddingkit/c/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/c/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/c/c;

.field public static final enum FIRST_PRICE:Lcom/facebook/biddingkit/c/c;

.field public static final enum SECOND_PRICE:Lcom/facebook/biddingkit/c/c;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/facebook/biddingkit/c/c;

    const-string v1, "FIRST_PRICE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/biddingkit/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/c/c;->FIRST_PRICE:Lcom/facebook/biddingkit/c/c;

    .line 25
    new-instance v1, Lcom/facebook/biddingkit/c/c;

    const-string v4, "SECOND_PRICE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/facebook/biddingkit/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/biddingkit/c/c;->SECOND_PRICE:Lcom/facebook/biddingkit/c/c;

    new-array v4, v5, [Lcom/facebook/biddingkit/c/c;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 23
    sput-object v4, Lcom/facebook/biddingkit/c/c;->$VALUES:[Lcom/facebook/biddingkit/c/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/facebook/biddingkit/c/c;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/c/c;
    .locals 1

    .line 23
    const-class v0, Lcom/facebook/biddingkit/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/c/c;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/c/c;
    .locals 1

    .line 23
    sget-object v0, Lcom/facebook/biddingkit/c/c;->$VALUES:[Lcom/facebook/biddingkit/c/c;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/c/c;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/facebook/biddingkit/c/c;->mValue:I

    return v0
.end method
