.class final enum Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AdapterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

.field public static final enum ABORTED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

.field public static final enum DEFAULT:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

.field public static final enum ERROR:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

.field public static final enum LOADED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

.field public static final enum LOADING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

.field public static final enum PREPARED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

.field public static final enum RELEASED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

.field public static final enum SHOWING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

.field public static final enum SHOWN:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 48
    new-instance v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 49
    new-instance v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const-string v3, "PREPARED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 50
    new-instance v3, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const-string v5, "LOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->LOADING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 51
    new-instance v5, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const-string v7, "LOADED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->LOADED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 52
    new-instance v7, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const-string v9, "SHOWING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->SHOWING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 53
    new-instance v9, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const-string v11, "SHOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->SHOWN:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 54
    new-instance v11, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const-string v13, "ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->ERROR:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 55
    new-instance v13, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const-string v15, "ABORTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->ABORTED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    .line 56
    new-instance v15, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const-string v14, "RELEASED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->RELEASED:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 47
    sput-object v14, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->$VALUES:[Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;
    .locals 1

    .line 47
    const-class v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;
    .locals 1

    .line 47
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->$VALUES:[Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    invoke-virtual {v0}, [Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    return-object v0
.end method
