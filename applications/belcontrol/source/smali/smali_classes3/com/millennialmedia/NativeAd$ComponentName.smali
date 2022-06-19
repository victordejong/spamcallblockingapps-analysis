.class public final enum Lcom/millennialmedia/NativeAd$ComponentName;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComponentName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/NativeAd$ComponentName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum BODY:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum RATING:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum TITLE:Lcom/millennialmedia/NativeAd$ComponentName;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v1, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v3, "BODY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/millennialmedia/NativeAd$ComponentName;->BODY:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v3, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v5, "ICON_IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v5, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v7, "MAIN_IMAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v7, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v9, "CALL_TO_ACTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v9, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v11, "RATING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/millennialmedia/NativeAd$ComponentName;->RATING:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v11, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v13, "DISCLAIMER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/millennialmedia/NativeAd$ComponentName;->DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/millennialmedia/NativeAd$ComponentName;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/millennialmedia/NativeAd$ComponentName;->$VALUES:[Lcom/millennialmedia/NativeAd$ComponentName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/NativeAd$ComponentName;
    .locals 1

    const-class v0, Lcom/millennialmedia/NativeAd$ComponentName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/NativeAd$ComponentName;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/NativeAd$ComponentName;
    .locals 1

    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->$VALUES:[Lcom/millennialmedia/NativeAd$ComponentName;

    invoke-virtual {v0}, [Lcom/millennialmedia/NativeAd$ComponentName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/NativeAd$ComponentName;

    return-object v0
.end method
