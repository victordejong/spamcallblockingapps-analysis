.class public final enum Lcom/explorestack/iab/vast/VideoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/vast/VideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/vast/VideoType;

.field public static final enum NonRewarded:Lcom/explorestack/iab/vast/VideoType;

.field public static final enum Rewarded:Lcom/explorestack/iab/vast/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/explorestack/iab/vast/VideoType;

    const-string v1, "NonRewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/iab/vast/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    new-instance v1, Lcom/explorestack/iab/vast/VideoType;

    const-string v3, "Rewarded"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/explorestack/iab/vast/VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/iab/vast/VideoType;->Rewarded:Lcom/explorestack/iab/vast/VideoType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/explorestack/iab/vast/VideoType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/explorestack/iab/vast/VideoType;->$VALUES:[Lcom/explorestack/iab/vast/VideoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/vast/VideoType;
    .locals 1

    .line 3
    const-class v0, Lcom/explorestack/iab/vast/VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/vast/VideoType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/vast/VideoType;
    .locals 1

    .line 3
    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->$VALUES:[Lcom/explorestack/iab/vast/VideoType;

    invoke-virtual {v0}, [Lcom/explorestack/iab/vast/VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/vast/VideoType;

    return-object v0
.end method
