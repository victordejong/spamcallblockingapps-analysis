.class public final enum Lcom/facebook/internal/c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/c$c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;",
        "",
        "offset",
        "",
        "(Ljava/lang/String;II)V",
        "toRequestCode",
        "Login",
        "Share",
        "Message",
        "Like",
        "GameRequest",
        "AppGroupCreate",
        "AppGroupJoin",
        "AppInvite",
        "DeviceShare",
        "GamingFriendFinder",
        "GamingGroupIntegration",
        "Referral",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/c$c;

.field public static final enum AppGroupCreate:Lcom/facebook/internal/c$c;

.field public static final enum AppGroupJoin:Lcom/facebook/internal/c$c;

.field public static final enum AppInvite:Lcom/facebook/internal/c$c;

.field public static final enum DeviceShare:Lcom/facebook/internal/c$c;

.field public static final enum GameRequest:Lcom/facebook/internal/c$c;

.field public static final enum GamingFriendFinder:Lcom/facebook/internal/c$c;

.field public static final enum GamingGroupIntegration:Lcom/facebook/internal/c$c;

.field public static final enum Like:Lcom/facebook/internal/c$c;

.field public static final enum Login:Lcom/facebook/internal/c$c;

.field public static final enum Message:Lcom/facebook/internal/c$c;

.field public static final enum Referral:Lcom/facebook/internal/c$c;

.field public static final enum Share:Lcom/facebook/internal/c$c;


# instance fields
.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/facebook/internal/c$c;

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "Login"

    const/4 v3, 0x0

    .line 53
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->Login:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "Share"

    const/4 v3, 0x1

    .line 54
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->Share:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "Message"

    const/4 v3, 0x2

    .line 55
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->Message:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "Like"

    const/4 v3, 0x3

    .line 56
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->Like:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "GameRequest"

    const/4 v3, 0x4

    .line 57
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->GameRequest:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "AppGroupCreate"

    const/4 v3, 0x5

    .line 58
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->AppGroupCreate:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "AppGroupJoin"

    const/4 v3, 0x6

    .line 59
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->AppGroupJoin:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "AppInvite"

    const/4 v3, 0x7

    .line 60
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->AppInvite:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "DeviceShare"

    const/16 v3, 0x8

    .line 61
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->DeviceShare:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "GamingFriendFinder"

    const/16 v3, 0x9

    .line 62
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->GamingFriendFinder:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "GamingGroupIntegration"

    const/16 v3, 0xa

    .line 63
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->GamingGroupIntegration:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/c$c;

    const-string v2, "Referral"

    const/16 v3, 0xb

    .line 64
    invoke-direct {v1, v2, v3, v3}, Lcom/facebook/internal/c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/c$c;->Referral:Lcom/facebook/internal/c$c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/internal/c$c;->$VALUES:[Lcom/facebook/internal/c$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/internal/c$c;->offset:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/c$c;
    .locals 1

    const-class v0, Lcom/facebook/internal/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/c$c;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/c$c;
    .locals 1

    sget-object v0, Lcom/facebook/internal/c$c;->$VALUES:[Lcom/facebook/internal/c$c;

    invoke-virtual {v0}, [Lcom/facebook/internal/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/c$c;

    return-object v0
.end method


# virtual methods
.method public final toRequestCode()I
    .locals 2

    .line 67
    invoke-static {}, Lcom/facebook/g;->t()I

    move-result v0

    iget v1, p0, Lcom/facebook/internal/c$c;->offset:I

    add-int/2addr v0, v1

    return v0
.end method
