.class final enum Lcom/mopub/mobileads/FullscreenAdController$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/FullscreenAdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/FullscreenAdController$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/FullscreenAdController$b;

.field public static final enum HTML:Lcom/mopub/mobileads/FullscreenAdController$b;

.field public static final enum IMAGE:Lcom/mopub/mobileads/FullscreenAdController$b;

.field public static final enum MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

.field public static final enum VIDEO:Lcom/mopub/mobileads/FullscreenAdController$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 127
    new-instance v0, Lcom/mopub/mobileads/FullscreenAdController$b;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/FullscreenAdController$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->VIDEO:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 128
    new-instance v1, Lcom/mopub/mobileads/FullscreenAdController$b;

    const-string v3, "MRAID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/mobileads/FullscreenAdController$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/FullscreenAdController$b;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 129
    new-instance v3, Lcom/mopub/mobileads/FullscreenAdController$b;

    const-string v5, "HTML"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mopub/mobileads/FullscreenAdController$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mopub/mobileads/FullscreenAdController$b;->HTML:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 130
    new-instance v5, Lcom/mopub/mobileads/FullscreenAdController$b;

    const-string v7, "IMAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mopub/mobileads/FullscreenAdController$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mopub/mobileads/FullscreenAdController$b;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mopub/mobileads/FullscreenAdController$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 125
    sput-object v7, Lcom/mopub/mobileads/FullscreenAdController$b;->$VALUES:[Lcom/mopub/mobileads/FullscreenAdController$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/FullscreenAdController$b;
    .locals 1

    .line 125
    const-class v0, Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/FullscreenAdController$b;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/FullscreenAdController$b;
    .locals 1

    .line 125
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->$VALUES:[Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/FullscreenAdController$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/FullscreenAdController$b;

    return-object v0
.end method
