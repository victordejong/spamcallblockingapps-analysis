.class public final enum Lcom/flurry/android/FlurrySyndicationEventName;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/android/FlurrySyndicationEventName;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAST_REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

.field public static final enum LIKE:Lcom/flurry/android/FlurrySyndicationEventName;

.field public static final enum REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

.field public static final enum SOURCE_LINK:Lcom/flurry/android/FlurrySyndicationEventName;

.field private static final synthetic b:[Lcom/flurry/android/FlurrySyndicationEventName;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/flurry/android/FlurrySyndicationEventName;

    const-string v1, "REBLOG"

    const/4 v2, 0x0

    const-string v3, "Reblog"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/FlurrySyndicationEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurrySyndicationEventName;->REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

    new-instance v1, Lcom/flurry/android/FlurrySyndicationEventName;

    const-string v3, "FAST_REBLOG"

    const/4 v4, 0x1

    const-string v5, "FastReblog"

    invoke-direct {v1, v3, v4, v5}, Lcom/flurry/android/FlurrySyndicationEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/flurry/android/FlurrySyndicationEventName;->FAST_REBLOG:Lcom/flurry/android/FlurrySyndicationEventName;

    new-instance v3, Lcom/flurry/android/FlurrySyndicationEventName;

    const-string v5, "SOURCE_LINK"

    const/4 v6, 0x2

    const-string v7, "SourceClick"

    invoke-direct {v3, v5, v6, v7}, Lcom/flurry/android/FlurrySyndicationEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/flurry/android/FlurrySyndicationEventName;->SOURCE_LINK:Lcom/flurry/android/FlurrySyndicationEventName;

    new-instance v5, Lcom/flurry/android/FlurrySyndicationEventName;

    const-string v7, "LIKE"

    const/4 v8, 0x3

    const-string v9, "Like"

    invoke-direct {v5, v7, v8, v9}, Lcom/flurry/android/FlurrySyndicationEventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/flurry/android/FlurrySyndicationEventName;->LIKE:Lcom/flurry/android/FlurrySyndicationEventName;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/flurry/android/FlurrySyndicationEventName;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/flurry/android/FlurrySyndicationEventName;->b:[Lcom/flurry/android/FlurrySyndicationEventName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/flurry/android/FlurrySyndicationEventName;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/FlurrySyndicationEventName;
    .locals 1

    const-class v0, Lcom/flurry/android/FlurrySyndicationEventName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/FlurrySyndicationEventName;

    return-object p0
.end method

.method public static values()[Lcom/flurry/android/FlurrySyndicationEventName;
    .locals 1

    sget-object v0, Lcom/flurry/android/FlurrySyndicationEventName;->b:[Lcom/flurry/android/FlurrySyndicationEventName;

    invoke-virtual {v0}, [Lcom/flurry/android/FlurrySyndicationEventName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/FlurrySyndicationEventName;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/FlurrySyndicationEventName;->a:Ljava/lang/String;

    return-object v0
.end method
