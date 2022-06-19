.class public final enum Lcom/telguarder/helpers/ui/UiHelper$PageType;
.super Ljava/lang/Enum;
.source "UiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/UiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/helpers/ui/UiHelper$PageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/helpers/ui/UiHelper$PageType;

.field public static final enum ANALYZE:Lcom/telguarder/helpers/ui/UiHelper$PageType;

.field public static final enum BLOCKED_POSTCALL:Lcom/telguarder/helpers/ui/UiHelper$PageType;

.field public static final enum BLOCKLIST:Lcom/telguarder/helpers/ui/UiHelper$PageType;

.field public static final enum CALLLIST:Lcom/telguarder/helpers/ui/UiHelper$PageType;

.field public static final enum SETTINGS:Lcom/telguarder/helpers/ui/UiHelper$PageType;

.field public static final enum SPAMCALLS:Lcom/telguarder/helpers/ui/UiHelper$PageType;

.field public static final enum TRENDING:Lcom/telguarder/helpers/ui/UiHelper$PageType;

.field private static final map:Ljava/util/Map;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 58
    new-instance v0, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const-string v1, "BLOCKED_POSTCALL"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/telguarder/helpers/ui/UiHelper$PageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/telguarder/helpers/ui/UiHelper$PageType;->BLOCKED_POSTCALL:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    .line 59
    new-instance v1, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const-string v3, "ANALYZE"

    const/4 v4, 0x1

    const/16 v5, 0x14

    invoke-direct {v1, v3, v4, v5}, Lcom/telguarder/helpers/ui/UiHelper$PageType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/telguarder/helpers/ui/UiHelper$PageType;->ANALYZE:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    .line 60
    new-instance v3, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const-string v5, "BLOCKLIST"

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-direct {v3, v5, v6, v7}, Lcom/telguarder/helpers/ui/UiHelper$PageType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/telguarder/helpers/ui/UiHelper$PageType;->BLOCKLIST:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    .line 61
    new-instance v5, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const-string v7, "CALLLIST"

    const/4 v8, 0x3

    const/16 v9, 0x28

    invoke-direct {v5, v7, v8, v9}, Lcom/telguarder/helpers/ui/UiHelper$PageType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/telguarder/helpers/ui/UiHelper$PageType;->CALLLIST:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    .line 62
    new-instance v7, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const-string v9, "SETTINGS"

    const/4 v10, 0x4

    const/16 v11, 0x32

    invoke-direct {v7, v9, v10, v11}, Lcom/telguarder/helpers/ui/UiHelper$PageType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/telguarder/helpers/ui/UiHelper$PageType;->SETTINGS:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    .line 63
    new-instance v9, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const-string v11, "SPAMCALLS"

    const/4 v12, 0x5

    const/16 v13, 0x3c

    invoke-direct {v9, v11, v12, v13}, Lcom/telguarder/helpers/ui/UiHelper$PageType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/telguarder/helpers/ui/UiHelper$PageType;->SPAMCALLS:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    .line 64
    new-instance v11, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const-string v13, "TRENDING"

    const/4 v14, 0x6

    const/16 v15, 0x46

    invoke-direct {v11, v13, v14, v15}, Lcom/telguarder/helpers/ui/UiHelper$PageType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/telguarder/helpers/ui/UiHelper$PageType;->TRENDING:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/telguarder/helpers/ui/UiHelper$PageType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 56
    sput-object v13, Lcom/telguarder/helpers/ui/UiHelper$PageType;->$VALUES:[Lcom/telguarder/helpers/ui/UiHelper$PageType;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/telguarder/helpers/ui/UiHelper$PageType;->map:Ljava/util/Map;

    .line 74
    invoke-static {}, Lcom/telguarder/helpers/ui/UiHelper$PageType;->values()[Lcom/telguarder/helpers/ui/UiHelper$PageType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 75
    sget-object v4, Lcom/telguarder/helpers/ui/UiHelper$PageType;->map:Ljava/util/Map;

    iget v5, v3, Lcom/telguarder/helpers/ui/UiHelper$PageType;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/telguarder/helpers/ui/UiHelper$PageType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/telguarder/helpers/ui/UiHelper$PageType;
    .locals 1

    .line 80
    sget-object v0, Lcom/telguarder/helpers/ui/UiHelper$PageType;->map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/helpers/ui/UiHelper$PageType;
    .locals 1

    .line 56
    const-class v0, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/helpers/ui/UiHelper$PageType;
    .locals 1

    .line 56
    sget-object v0, Lcom/telguarder/helpers/ui/UiHelper$PageType;->$VALUES:[Lcom/telguarder/helpers/ui/UiHelper$PageType;

    invoke-virtual {v0}, [Lcom/telguarder/helpers/ui/UiHelper$PageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/helpers/ui/UiHelper$PageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/telguarder/helpers/ui/UiHelper$PageType;->value:I

    return v0
.end method
