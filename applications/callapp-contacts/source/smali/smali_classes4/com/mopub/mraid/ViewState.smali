.class public final enum Lcom/mopub/mraid/ViewState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mraid/ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mraid/ViewState;

.field public static final enum DEFAULT:Lcom/mopub/mraid/ViewState;

.field public static final enum EXPANDED:Lcom/mopub/mraid/ViewState;

.field public static final enum HIDDEN:Lcom/mopub/mraid/ViewState;

.field public static final enum LOADING:Lcom/mopub/mraid/ViewState;

.field public static final enum RESIZED:Lcom/mopub/mraid/ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/mopub/mraid/ViewState;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mraid/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    .line 11
    new-instance v1, Lcom/mopub/mraid/ViewState;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/mraid/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    .line 12
    new-instance v3, Lcom/mopub/mraid/ViewState;

    const-string v5, "RESIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mopub/mraid/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    .line 13
    new-instance v5, Lcom/mopub/mraid/ViewState;

    const-string v7, "EXPANDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mopub/mraid/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    .line 14
    new-instance v7, Lcom/mopub/mraid/ViewState;

    const-string v9, "HIDDEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mopub/mraid/ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mopub/mraid/ViewState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 9
    sput-object v9, Lcom/mopub/mraid/ViewState;->$VALUES:[Lcom/mopub/mraid/ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mraid/ViewState;
    .locals 1

    .line 9
    const-class v0, Lcom/mopub/mraid/ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mraid/ViewState;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mraid/ViewState;
    .locals 1

    .line 9
    sget-object v0, Lcom/mopub/mraid/ViewState;->$VALUES:[Lcom/mopub/mraid/ViewState;

    invoke-virtual {v0}, [Lcom/mopub/mraid/ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mraid/ViewState;

    return-object v0
.end method


# virtual methods
.method public final toJavascriptString()Ljava/lang/String;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/mopub/mraid/ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
