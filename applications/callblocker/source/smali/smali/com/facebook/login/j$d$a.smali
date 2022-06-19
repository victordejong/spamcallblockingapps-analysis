.class final enum Lcom/facebook/login/j$d$a;
.super Ljava/lang/Enum;
.source "LoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/j$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/j$d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/login/j$d$a;

.field public static final enum b:Lcom/facebook/login/j$d$a;

.field public static final enum c:Lcom/facebook/login/j$d$a;

.field private static final synthetic e:[Lcom/facebook/login/j$d$a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 578
    new-instance v0, Lcom/facebook/login/j$d$a;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "success"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/login/j$d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/j$d$a;->a:Lcom/facebook/login/j$d$a;

    .line 579
    new-instance v0, Lcom/facebook/login/j$d$a;

    const-string/jumbo v1, "CANCEL"

    const-string/jumbo v2, "cancel"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/login/j$d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/j$d$a;->b:Lcom/facebook/login/j$d$a;

    .line 580
    new-instance v0, Lcom/facebook/login/j$d$a;

    const-string/jumbo v1, "ERROR"

    const-string/jumbo v2, "error"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/login/j$d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/login/j$d$a;->c:Lcom/facebook/login/j$d$a;

    .line 577
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/login/j$d$a;

    sget-object v1, Lcom/facebook/login/j$d$a;->a:Lcom/facebook/login/j$d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/j$d$a;->b:Lcom/facebook/login/j$d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/login/j$d$a;->c:Lcom/facebook/login/j$d$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/login/j$d$a;->e:[Lcom/facebook/login/j$d$a;

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
    .line 584
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 585
    iput-object p3, p0, Lcom/facebook/login/j$d$a;->d:Ljava/lang/String;

    .line 586
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/j$d$a;
    .locals 1

    .prologue
    .line 577
    const-class v0, Lcom/facebook/login/j$d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/j$d$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/j$d$a;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/facebook/login/j$d$a;->e:[Lcom/facebook/login/j$d$a;

    invoke-virtual {v0}, [Lcom/facebook/login/j$d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/j$d$a;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/facebook/login/j$d$a;->d:Ljava/lang/String;

    return-object v0
.end method
