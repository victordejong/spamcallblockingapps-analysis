.class public final enum Lcom/explorestack/iab/mraid/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/mraid/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/mraid/g;

.field public static final enum DEFAULT:Lcom/explorestack/iab/mraid/g;

.field public static final enum EXPANDED:Lcom/explorestack/iab/mraid/g;

.field public static final enum HIDDEN:Lcom/explorestack/iab/mraid/g;

.field public static final enum LOADING:Lcom/explorestack/iab/mraid/g;

.field public static final enum RESIZED:Lcom/explorestack/iab/mraid/g;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 6
    new-instance v0, Lcom/explorestack/iab/mraid/g;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/iab/mraid/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/mraid/g;->LOADING:Lcom/explorestack/iab/mraid/g;

    .line 7
    new-instance v1, Lcom/explorestack/iab/mraid/g;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/explorestack/iab/mraid/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/iab/mraid/g;->DEFAULT:Lcom/explorestack/iab/mraid/g;

    .line 8
    new-instance v3, Lcom/explorestack/iab/mraid/g;

    const-string v5, "RESIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/explorestack/iab/mraid/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/explorestack/iab/mraid/g;->RESIZED:Lcom/explorestack/iab/mraid/g;

    .line 9
    new-instance v5, Lcom/explorestack/iab/mraid/g;

    const-string v7, "EXPANDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/explorestack/iab/mraid/g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/explorestack/iab/mraid/g;->EXPANDED:Lcom/explorestack/iab/mraid/g;

    .line 10
    new-instance v7, Lcom/explorestack/iab/mraid/g;

    const-string v9, "HIDDEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/explorestack/iab/mraid/g;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/explorestack/iab/mraid/g;->HIDDEN:Lcom/explorestack/iab/mraid/g;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/explorestack/iab/mraid/g;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 5
    sput-object v9, Lcom/explorestack/iab/mraid/g;->$VALUES:[Lcom/explorestack/iab/mraid/g;

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

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/mraid/g;
    .locals 1

    .line 5
    const-class v0, Lcom/explorestack/iab/mraid/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/mraid/g;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/mraid/g;
    .locals 1

    .line 5
    sget-object v0, Lcom/explorestack/iab/mraid/g;->$VALUES:[Lcom/explorestack/iab/mraid/g;

    invoke-virtual {v0}, [Lcom/explorestack/iab/mraid/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/mraid/g;

    return-object v0
.end method


# virtual methods
.method public final toJsString()Ljava/lang/String;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/g;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
