.class public final enum Lcom/hbb20/CountryCodePicker$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hbb20/CountryCodePicker$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hbb20/CountryCodePicker$a;

.field public static final enum LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum LOCALE_NETWORK_SIM:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum LOCALE_ONLY:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum LOCALE_SIM:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum LOCALE_SIM_NETWORK:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum NETWORK_LOCALE_SIM:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum NETWORK_ONLY:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum NETWORK_SIM:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum NETWORK_SIM_LOCALE:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum SIM_LOCALE:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum SIM_LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum SIM_NETWORK:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$a;

.field public static final enum SIM_ONLY:Lcom/hbb20/CountryCodePicker$a;


# instance fields
.field representation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 2529
    new-instance v0, Lcom/hbb20/CountryCodePicker$a;

    const-string v1, "SIM_ONLY"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$a;->SIM_ONLY:Lcom/hbb20/CountryCodePicker$a;

    .line 2530
    new-instance v1, Lcom/hbb20/CountryCodePicker$a;

    const-string v3, "NETWORK_ONLY"

    const/4 v4, 0x1

    const-string v5, "2"

    invoke-direct {v1, v3, v4, v5}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/hbb20/CountryCodePicker$a;->NETWORK_ONLY:Lcom/hbb20/CountryCodePicker$a;

    .line 2531
    new-instance v3, Lcom/hbb20/CountryCodePicker$a;

    const-string v5, "LOCALE_ONLY"

    const/4 v6, 0x2

    const-string v7, "3"

    invoke-direct {v3, v5, v6, v7}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/hbb20/CountryCodePicker$a;->LOCALE_ONLY:Lcom/hbb20/CountryCodePicker$a;

    .line 2532
    new-instance v5, Lcom/hbb20/CountryCodePicker$a;

    const-string v7, "SIM_NETWORK"

    const/4 v8, 0x3

    const-string v9, "12"

    invoke-direct {v5, v7, v8, v9}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/hbb20/CountryCodePicker$a;->SIM_NETWORK:Lcom/hbb20/CountryCodePicker$a;

    .line 2533
    new-instance v7, Lcom/hbb20/CountryCodePicker$a;

    const-string v9, "NETWORK_SIM"

    const/4 v10, 0x4

    const-string v11, "21"

    invoke-direct {v7, v9, v10, v11}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/hbb20/CountryCodePicker$a;->NETWORK_SIM:Lcom/hbb20/CountryCodePicker$a;

    .line 2534
    new-instance v9, Lcom/hbb20/CountryCodePicker$a;

    const-string v11, "SIM_LOCALE"

    const/4 v12, 0x5

    const-string v13, "13"

    invoke-direct {v9, v11, v12, v13}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/hbb20/CountryCodePicker$a;->SIM_LOCALE:Lcom/hbb20/CountryCodePicker$a;

    .line 2535
    new-instance v11, Lcom/hbb20/CountryCodePicker$a;

    const-string v13, "LOCALE_SIM"

    const/4 v14, 0x6

    const-string v15, "31"

    invoke-direct {v11, v13, v14, v15}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/hbb20/CountryCodePicker$a;->LOCALE_SIM:Lcom/hbb20/CountryCodePicker$a;

    .line 2536
    new-instance v13, Lcom/hbb20/CountryCodePicker$a;

    const-string v15, "NETWORK_LOCALE"

    const/4 v14, 0x7

    const-string v12, "23"

    invoke-direct {v13, v15, v14, v12}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/hbb20/CountryCodePicker$a;->NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$a;

    .line 2537
    new-instance v12, Lcom/hbb20/CountryCodePicker$a;

    const-string v15, "LOCALE_NETWORK"

    const/16 v14, 0x8

    const-string v10, "32"

    invoke-direct {v12, v15, v14, v10}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/hbb20/CountryCodePicker$a;->LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$a;

    .line 2538
    new-instance v10, Lcom/hbb20/CountryCodePicker$a;

    const-string v15, "SIM_NETWORK_LOCALE"

    const/16 v14, 0x9

    const-string v8, "123"

    invoke-direct {v10, v15, v14, v8}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/hbb20/CountryCodePicker$a;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$a;

    .line 2539
    new-instance v8, Lcom/hbb20/CountryCodePicker$a;

    const-string v15, "SIM_LOCALE_NETWORK"

    const/16 v14, 0xa

    const-string v6, "132"

    invoke-direct {v8, v15, v14, v6}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/hbb20/CountryCodePicker$a;->SIM_LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$a;

    .line 2540
    new-instance v6, Lcom/hbb20/CountryCodePicker$a;

    const-string v15, "NETWORK_SIM_LOCALE"

    const/16 v14, 0xb

    const-string v4, "213"

    invoke-direct {v6, v15, v14, v4}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/hbb20/CountryCodePicker$a;->NETWORK_SIM_LOCALE:Lcom/hbb20/CountryCodePicker$a;

    .line 2541
    new-instance v4, Lcom/hbb20/CountryCodePicker$a;

    const-string v15, "NETWORK_LOCALE_SIM"

    const/16 v14, 0xc

    const-string v2, "231"

    invoke-direct {v4, v15, v14, v2}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$a;->NETWORK_LOCALE_SIM:Lcom/hbb20/CountryCodePicker$a;

    .line 2542
    new-instance v2, Lcom/hbb20/CountryCodePicker$a;

    const-string v15, "LOCALE_SIM_NETWORK"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "312"

    invoke-direct {v2, v15, v14, v4}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/hbb20/CountryCodePicker$a;->LOCALE_SIM_NETWORK:Lcom/hbb20/CountryCodePicker$a;

    .line 2543
    new-instance v4, Lcom/hbb20/CountryCodePicker$a;

    const-string v15, "LOCALE_NETWORK_SIM"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "321"

    invoke-direct {v4, v15, v14, v2}, Lcom/hbb20/CountryCodePicker$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/hbb20/CountryCodePicker$a;->LOCALE_NETWORK_SIM:Lcom/hbb20/CountryCodePicker$a;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/hbb20/CountryCodePicker$a;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v14

    .line 2528
    sput-object v2, Lcom/hbb20/CountryCodePicker$a;->$VALUES:[Lcom/hbb20/CountryCodePicker$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2547
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2548
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker$a;->representation:Ljava/lang/String;

    return-void
.end method

.method public static getPrefForValue(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$a;
    .locals 5

    .line 2552
    invoke-static {}, Lcom/hbb20/CountryCodePicker$a;->values()[Lcom/hbb20/CountryCodePicker$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2553
    iget-object v4, v3, Lcom/hbb20/CountryCodePicker$a;->representation:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2557
    :cond_1
    sget-object p0, Lcom/hbb20/CountryCodePicker$a;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$a;
    .locals 1

    .line 2528
    const-class v0, Lcom/hbb20/CountryCodePicker$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hbb20/CountryCodePicker$a;

    return-object p0
.end method

.method public static values()[Lcom/hbb20/CountryCodePicker$a;
    .locals 1

    .line 2528
    sget-object v0, Lcom/hbb20/CountryCodePicker$a;->$VALUES:[Lcom/hbb20/CountryCodePicker$a;

    invoke-virtual {v0}, [Lcom/hbb20/CountryCodePicker$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hbb20/CountryCodePicker$a;

    return-object v0
.end method
