.class public final enum Lcom/twitter/sdk/android/core/internal/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twitter/sdk/android/core/internal/i$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twitter/sdk/android/core/internal/i$a;

.field public static final enum BIGGER:Lcom/twitter/sdk/android/core/internal/i$a;

.field public static final enum MINI:Lcom/twitter/sdk/android/core/internal/i$a;

.field public static final enum NORMAL:Lcom/twitter/sdk/android/core/internal/i$a;

.field public static final enum ORIGINAL:Lcom/twitter/sdk/android/core/internal/i$a;

.field public static final enum REASONABLY_SMALL:Lcom/twitter/sdk/android/core/internal/i$a;


# instance fields
.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 30
    new-instance v0, Lcom/twitter/sdk/android/core/internal/i$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, "_normal"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/core/internal/i$a;->NORMAL:Lcom/twitter/sdk/android/core/internal/i$a;

    .line 31
    new-instance v1, Lcom/twitter/sdk/android/core/internal/i$a;

    const-string v3, "BIGGER"

    const/4 v4, 0x1

    const-string v5, "_bigger"

    invoke-direct {v1, v3, v4, v5}, Lcom/twitter/sdk/android/core/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/twitter/sdk/android/core/internal/i$a;->BIGGER:Lcom/twitter/sdk/android/core/internal/i$a;

    .line 32
    new-instance v3, Lcom/twitter/sdk/android/core/internal/i$a;

    const-string v5, "MINI"

    const/4 v6, 0x2

    const-string v7, "_mini"

    invoke-direct {v3, v5, v6, v7}, Lcom/twitter/sdk/android/core/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/twitter/sdk/android/core/internal/i$a;->MINI:Lcom/twitter/sdk/android/core/internal/i$a;

    .line 33
    new-instance v5, Lcom/twitter/sdk/android/core/internal/i$a;

    const-string v7, "ORIGINAL"

    const/4 v8, 0x3

    const-string v9, "_original"

    invoke-direct {v5, v7, v8, v9}, Lcom/twitter/sdk/android/core/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/twitter/sdk/android/core/internal/i$a;->ORIGINAL:Lcom/twitter/sdk/android/core/internal/i$a;

    .line 34
    new-instance v7, Lcom/twitter/sdk/android/core/internal/i$a;

    const-string v9, "REASONABLY_SMALL"

    const/4 v10, 0x4

    const-string v11, "_reasonably_small"

    invoke-direct {v7, v9, v10, v11}, Lcom/twitter/sdk/android/core/internal/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/twitter/sdk/android/core/internal/i$a;->REASONABLY_SMALL:Lcom/twitter/sdk/android/core/internal/i$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/twitter/sdk/android/core/internal/i$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 29
    sput-object v9, Lcom/twitter/sdk/android/core/internal/i$a;->$VALUES:[Lcom/twitter/sdk/android/core/internal/i$a;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/i$a;->suffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/i$a;
    .locals 1

    .line 29
    const-class v0, Lcom/twitter/sdk/android/core/internal/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twitter/sdk/android/core/internal/i$a;

    return-object p0
.end method

.method public static values()[Lcom/twitter/sdk/android/core/internal/i$a;
    .locals 1

    .line 29
    sget-object v0, Lcom/twitter/sdk/android/core/internal/i$a;->$VALUES:[Lcom/twitter/sdk/android/core/internal/i$a;

    invoke-virtual {v0}, [Lcom/twitter/sdk/android/core/internal/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/sdk/android/core/internal/i$a;

    return-object v0
.end method


# virtual methods
.method final getSuffix()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/i$a;->suffix:Ljava/lang/String;

    return-object v0
.end method
