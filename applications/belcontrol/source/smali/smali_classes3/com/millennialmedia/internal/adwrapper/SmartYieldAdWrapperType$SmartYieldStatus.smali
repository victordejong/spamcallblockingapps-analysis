.class public final enum Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmartYieldStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

.field public static final enum BID_LOST:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

.field public static final enum BID_WON:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

.field public static final enum ERROR:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

.field public static final enum UNDECIDED:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    const-string v1, "BID_LOST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->BID_LOST:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    new-instance v1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    const-string v3, "BID_WON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->BID_WON:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    new-instance v3, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->ERROR:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    new-instance v5, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    const-string v7, "UNDECIDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->UNDECIDED:Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->$VALUES:[Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->$VALUES:[Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType$SmartYieldStatus;

    return-object v0
.end method
