.class public final enum Lcom/explorestack/iab/mraid/MraidActivity$MraidType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/MraidActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MraidType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/mraid/MraidActivity$MraidType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

.field public static final enum Rewarded:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

.field public static final enum Static:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

.field public static final enum Video:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    const-string v1, "Static"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;->Static:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    new-instance v1, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    const-string v3, "Video"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;->Video:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    new-instance v3, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    const-string v5, "Rewarded"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;->Rewarded:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 18
    sput-object v5, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;->$VALUES:[Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidActivity$MraidType;
    .locals 1

    .line 18
    const-class v0, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/mraid/MraidActivity$MraidType;
    .locals 1

    .line 18
    sget-object v0, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;->$VALUES:[Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    invoke-virtual {v0}, [Lcom/explorestack/iab/mraid/MraidActivity$MraidType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    return-object v0
.end method
