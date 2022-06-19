.class final enum Lio/bidmachine/BidMachineAd$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/BidMachineAd$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/BidMachineAd$a;

.field public static final enum Destroyed:Lio/bidmachine/BidMachineAd$a;

.field public static final enum Expired:Lio/bidmachine/BidMachineAd$a;

.field public static final enum Failed:Lio/bidmachine/BidMachineAd$a;

.field public static final enum Idle:Lio/bidmachine/BidMachineAd$a;

.field public static final enum Loading:Lio/bidmachine/BidMachineAd$a;

.field public static final enum Requesting:Lio/bidmachine/BidMachineAd$a;

.field public static final enum Success:Lio/bidmachine/BidMachineAd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 659
    new-instance v0, Lio/bidmachine/BidMachineAd$a;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/BidMachineAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/BidMachineAd$a;->Idle:Lio/bidmachine/BidMachineAd$a;

    new-instance v1, Lio/bidmachine/BidMachineAd$a;

    const-string v3, "Requesting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/bidmachine/BidMachineAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/BidMachineAd$a;->Requesting:Lio/bidmachine/BidMachineAd$a;

    new-instance v3, Lio/bidmachine/BidMachineAd$a;

    const-string v5, "Loading"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/bidmachine/BidMachineAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/bidmachine/BidMachineAd$a;->Loading:Lio/bidmachine/BidMachineAd$a;

    new-instance v5, Lio/bidmachine/BidMachineAd$a;

    const-string v7, "Success"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/bidmachine/BidMachineAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/bidmachine/BidMachineAd$a;->Success:Lio/bidmachine/BidMachineAd$a;

    new-instance v7, Lio/bidmachine/BidMachineAd$a;

    const-string v9, "Failed"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/bidmachine/BidMachineAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/bidmachine/BidMachineAd$a;->Failed:Lio/bidmachine/BidMachineAd$a;

    new-instance v9, Lio/bidmachine/BidMachineAd$a;

    const-string v11, "Destroyed"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/bidmachine/BidMachineAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/bidmachine/BidMachineAd$a;->Destroyed:Lio/bidmachine/BidMachineAd$a;

    new-instance v11, Lio/bidmachine/BidMachineAd$a;

    const-string v13, "Expired"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/bidmachine/BidMachineAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/bidmachine/BidMachineAd$a;->Expired:Lio/bidmachine/BidMachineAd$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/bidmachine/BidMachineAd$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 658
    sput-object v13, Lio/bidmachine/BidMachineAd$a;->$VALUES:[Lio/bidmachine/BidMachineAd$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 658
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/BidMachineAd$a;
    .locals 1

    .line 658
    const-class v0, Lio/bidmachine/BidMachineAd$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/BidMachineAd$a;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/BidMachineAd$a;
    .locals 1

    .line 658
    sget-object v0, Lio/bidmachine/BidMachineAd$a;->$VALUES:[Lio/bidmachine/BidMachineAd$a;

    invoke-virtual {v0}, [Lio/bidmachine/BidMachineAd$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/BidMachineAd$a;

    return-object v0
.end method
