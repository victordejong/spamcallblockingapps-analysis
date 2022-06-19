.class final enum Lcom/facebook/internal/m$a;
.super Ljava/lang/Enum;
.source "FetchedAppSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/internal/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/internal/m$a;

.field public static final enum b:Lcom/facebook/internal/m$a;

.field public static final enum c:Lcom/facebook/internal/m$a;

.field public static final enum d:Lcom/facebook/internal/m$a;

.field private static final synthetic e:[Lcom/facebook/internal/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/facebook/internal/m$a;

    const-string/jumbo v1, "NOT_LOADED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/m$a;->a:Lcom/facebook/internal/m$a;

    .line 66
    new-instance v0, Lcom/facebook/internal/m$a;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/internal/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/m$a;->b:Lcom/facebook/internal/m$a;

    .line 67
    new-instance v0, Lcom/facebook/internal/m$a;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/internal/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/m$a;->c:Lcom/facebook/internal/m$a;

    .line 68
    new-instance v0, Lcom/facebook/internal/m$a;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/facebook/internal/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/m$a;->d:Lcom/facebook/internal/m$a;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/internal/m$a;

    sget-object v1, Lcom/facebook/internal/m$a;->a:Lcom/facebook/internal/m$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/m$a;->b:Lcom/facebook/internal/m$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/internal/m$a;->c:Lcom/facebook/internal/m$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/internal/m$a;->d:Lcom/facebook/internal/m$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/internal/m$a;->e:[Lcom/facebook/internal/m$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/m$a;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/facebook/internal/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/m$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/internal/m$a;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/facebook/internal/m$a;->e:[Lcom/facebook/internal/m$a;

    invoke-virtual {v0}, [Lcom/facebook/internal/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/m$a;

    return-object v0
.end method
