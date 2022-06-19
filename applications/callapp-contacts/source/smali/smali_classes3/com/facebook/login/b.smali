.class public final enum Lcom/facebook/login/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/login/b;

.field public static final enum EVERYONE:Lcom/facebook/login/b;

.field public static final enum FRIENDS:Lcom/facebook/login/b;

.field public static final enum NONE:Lcom/facebook/login/b;

.field public static final enum ONLY_ME:Lcom/facebook/login/b;


# instance fields
.field private final nativeProtocolAudience:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 33
    new-instance v0, Lcom/facebook/login/b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/login/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/b;->NONE:Lcom/facebook/login/b;

    .line 36
    new-instance v1, Lcom/facebook/login/b;

    const-string v3, "ONLY_ME"

    const/4 v4, 0x1

    const-string v5, "only_me"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/login/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/login/b;->ONLY_ME:Lcom/facebook/login/b;

    .line 39
    new-instance v3, Lcom/facebook/login/b;

    const-string v5, "FRIENDS"

    const/4 v6, 0x2

    const-string v7, "friends"

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/login/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/login/b;->FRIENDS:Lcom/facebook/login/b;

    .line 42
    new-instance v5, Lcom/facebook/login/b;

    const-string v7, "EVERYONE"

    const/4 v8, 0x3

    const-string v9, "everyone"

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/login/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/login/b;->EVERYONE:Lcom/facebook/login/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/login/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 31
    sput-object v7, Lcom/facebook/login/b;->$VALUES:[Lcom/facebook/login/b;

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

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/facebook/login/b;->nativeProtocolAudience:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/b;
    .locals 1

    .line 31
    const-class v0, Lcom/facebook/login/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/login/b;

    return-object p0
.end method

.method public static values()[Lcom/facebook/login/b;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/login/b;->$VALUES:[Lcom/facebook/login/b;

    invoke-virtual {v0}, [Lcom/facebook/login/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/b;

    return-object v0
.end method


# virtual methods
.method public final getNativeProtocolAudience()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/facebook/login/b;->nativeProtocolAudience:Ljava/lang/String;

    return-object v0
.end method
