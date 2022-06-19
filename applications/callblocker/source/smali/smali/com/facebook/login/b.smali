.class public final enum Lcom/facebook/login/b;
.super Ljava/lang/Enum;
.source "DefaultAudience.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/login/b;

.field public static final enum b:Lcom/facebook/login/b;

.field public static final enum c:Lcom/facebook/login/b;

.field public static final enum d:Lcom/facebook/login/b;

.field private static final synthetic f:[Lcom/facebook/login/b;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/facebook/login/b;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/login/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/b;->a:Lcom/facebook/login/b;

    .line 40
    new-instance v0, Lcom/facebook/login/b;

    const-string/jumbo v1, "ONLY_ME"

    const-string/jumbo v2, "only_me"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/login/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/b;->b:Lcom/facebook/login/b;

    .line 45
    new-instance v0, Lcom/facebook/login/b;

    const-string/jumbo v1, "FRIENDS"

    const-string/jumbo v2, "friends"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/login/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/b;->c:Lcom/facebook/login/b;

    .line 50
    new-instance v0, Lcom/facebook/login/b;

    const-string/jumbo v1, "EVERYONE"

    const-string/jumbo v2, "everyone"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/login/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/b;->d:Lcom/facebook/login/b;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/login/b;

    sget-object v1, Lcom/facebook/login/b;->a:Lcom/facebook/login/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/b;->b:Lcom/facebook/login/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/login/b;->c:Lcom/facebook/login/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/login/b;->d:Lcom/facebook/login/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/login/b;->f:[Lcom/facebook/login/b;

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

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/facebook/login/b;->e:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/b;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/login/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/b;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/login/b;->f:[Lcom/facebook/login/b;

    invoke-virtual {v0}, [Lcom/facebook/login/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/login/b;->e:Ljava/lang/String;

    return-object v0
.end method
