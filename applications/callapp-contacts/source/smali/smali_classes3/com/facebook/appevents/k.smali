.class public final enum Lcom/facebook/appevents/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/k;

.field public static final enum NO_CONNECTIVITY:Lcom/facebook/appevents/k;

.field public static final enum SERVER_ERROR:Lcom/facebook/appevents/k;

.field public static final enum SUCCESS:Lcom/facebook/appevents/k;

.field public static final enum UNKNOWN_ERROR:Lcom/facebook/appevents/k;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/facebook/appevents/k;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/k;->SUCCESS:Lcom/facebook/appevents/k;

    .line 25
    new-instance v1, Lcom/facebook/appevents/k;

    const-string v3, "SERVER_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/k;->SERVER_ERROR:Lcom/facebook/appevents/k;

    .line 26
    new-instance v3, Lcom/facebook/appevents/k;

    const-string v5, "NO_CONNECTIVITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/appevents/k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/appevents/k;->NO_CONNECTIVITY:Lcom/facebook/appevents/k;

    .line 27
    new-instance v5, Lcom/facebook/appevents/k;

    const-string v7, "UNKNOWN_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/appevents/k;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/appevents/k;->UNKNOWN_ERROR:Lcom/facebook/appevents/k;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/appevents/k;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 23
    sput-object v7, Lcom/facebook/appevents/k;->$VALUES:[Lcom/facebook/appevents/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/k;
    .locals 1

    .line 23
    const-class v0, Lcom/facebook/appevents/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/k;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/k;
    .locals 1

    .line 23
    sget-object v0, Lcom/facebook/appevents/k;->$VALUES:[Lcom/facebook/appevents/k;

    invoke-virtual {v0}, [Lcom/facebook/appevents/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/k;

    return-object v0
.end method
