.class final enum Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/AdChoicesButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AdChoicesButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

.field public static final enum COMPLETE:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

.field public static final enum READY:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

.field public static final enum SHOWING:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

.field public static final enum SHOWN:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->READY:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    new-instance v1, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    const-string v3, "SHOWING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->SHOWING:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    new-instance v3, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    const-string v5, "SHOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->SHOWN:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    new-instance v5, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    const-string v7, "COMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->COMPLETE:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 39
    sput-object v7, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->$VALUES:[Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;
    .locals 1

    .line 39
    const-class v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;
    .locals 1

    .line 39
    sget-object v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->$VALUES:[Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    invoke-virtual {v0}, [Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    return-object v0
.end method
