.class final enum Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AdapterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

.field public static final enum ABORTED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

.field public static final enum DEFAULT:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

.field public static final enum ERROR:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

.field public static final enum LOADED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

.field public static final enum LOADING:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

.field public static final enum PREPARED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

.field public static final enum RELEASED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 388
    new-instance v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 389
    new-instance v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    const-string v3, "PREPARED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 390
    new-instance v3, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    const-string v5, "LOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->LOADING:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 391
    new-instance v5, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    const-string v7, "LOADED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->LOADED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 392
    new-instance v7, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->ERROR:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 393
    new-instance v9, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    const-string v11, "ABORTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->ABORTED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 394
    new-instance v11, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    const-string v13, "RELEASED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->RELEASED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 387
    sput-object v13, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->$VALUES:[Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 387
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;
    .locals 1

    .line 387
    const-class v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;
    .locals 1

    .line 387
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->$VALUES:[Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    invoke-virtual {v0}, [Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    return-object v0
.end method
