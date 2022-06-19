.class public final enum Lcom/facebook/internal/q$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/q$a;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;",
        "",
        "(Ljava/lang/String;I)V",
        "NOT_LOADED",
        "LOADING",
        "SUCCESS",
        "ERROR",
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
.field private static final synthetic $VALUES:[Lcom/facebook/internal/q$a;

.field public static final enum ERROR:Lcom/facebook/internal/q$a;

.field public static final enum LOADING:Lcom/facebook/internal/q$a;

.field public static final enum NOT_LOADED:Lcom/facebook/internal/q$a;

.field public static final enum SUCCESS:Lcom/facebook/internal/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/internal/q$a;

    new-instance v1, Lcom/facebook/internal/q$a;

    const-string v2, "NOT_LOADED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/internal/q$a;->NOT_LOADED:Lcom/facebook/internal/q$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/q$a;

    const-string v2, "LOADING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/internal/q$a;->LOADING:Lcom/facebook/internal/q$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/q$a;

    const-string v2, "SUCCESS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/internal/q$a;->SUCCESS:Lcom/facebook/internal/q$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/internal/q$a;

    const-string v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/internal/q$a;->ERROR:Lcom/facebook/internal/q$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/internal/q$a;->$VALUES:[Lcom/facebook/internal/q$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/q$a;
    .locals 1

    const-class v0, Lcom/facebook/internal/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/q$a;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/q$a;
    .locals 1

    sget-object v0, Lcom/facebook/internal/q$a;->$VALUES:[Lcom/facebook/internal/q$a;

    invoke-virtual {v0}, [Lcom/facebook/internal/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/q$a;

    return-object v0
.end method
