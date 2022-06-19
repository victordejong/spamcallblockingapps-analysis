.class public final enum Lcom/explorestack/iab/mraid/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/mraid/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/mraid/c;

.field public static final enum INLINE:Lcom/explorestack/iab/mraid/c;

.field public static final enum INTERSTITIAL:Lcom/explorestack/iab/mraid/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/explorestack/iab/mraid/c;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/iab/mraid/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/mraid/c;->INLINE:Lcom/explorestack/iab/mraid/c;

    .line 7
    new-instance v1, Lcom/explorestack/iab/mraid/c;

    const-string v3, "INTERSTITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/explorestack/iab/mraid/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/iab/mraid/c;->INTERSTITIAL:Lcom/explorestack/iab/mraid/c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/explorestack/iab/mraid/c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 5
    sput-object v3, Lcom/explorestack/iab/mraid/c;->$VALUES:[Lcom/explorestack/iab/mraid/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/mraid/c;
    .locals 1

    .line 5
    const-class v0, Lcom/explorestack/iab/mraid/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/mraid/c;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/mraid/c;
    .locals 1

    .line 5
    sget-object v0, Lcom/explorestack/iab/mraid/c;->$VALUES:[Lcom/explorestack/iab/mraid/c;

    invoke-virtual {v0}, [Lcom/explorestack/iab/mraid/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/mraid/c;

    return-object v0
.end method


# virtual methods
.method final toJsString()Ljava/lang/String;
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/c;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
