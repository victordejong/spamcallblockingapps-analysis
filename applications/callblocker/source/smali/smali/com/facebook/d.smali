.class public final enum Lcom/facebook/d;
.super Ljava/lang/Enum;
.source "AccessTokenSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/d;

.field public static final enum b:Lcom/facebook/d;

.field public static final enum c:Lcom/facebook/d;

.field public static final enum d:Lcom/facebook/d;

.field public static final enum e:Lcom/facebook/d;

.field public static final enum f:Lcom/facebook/d;

.field public static final enum g:Lcom/facebook/d;

.field public static final enum h:Lcom/facebook/d;

.field public static final enum i:Lcom/facebook/d;

.field private static final synthetic k:[Lcom/facebook/d;


# instance fields
.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 30
    new-instance v0, Lcom/facebook/d;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/d;->a:Lcom/facebook/d;

    .line 35
    new-instance v0, Lcom/facebook/d;

    const-string/jumbo v1, "FACEBOOK_APPLICATION_WEB"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/d;->b:Lcom/facebook/d;

    .line 40
    new-instance v0, Lcom/facebook/d;

    const-string/jumbo v1, "FACEBOOK_APPLICATION_NATIVE"

    invoke-direct {v0, v1, v5, v3}, Lcom/facebook/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/d;->c:Lcom/facebook/d;

    .line 46
    new-instance v0, Lcom/facebook/d;

    const-string/jumbo v1, "FACEBOOK_APPLICATION_SERVICE"

    invoke-direct {v0, v1, v6, v3}, Lcom/facebook/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/d;->d:Lcom/facebook/d;

    .line 51
    new-instance v0, Lcom/facebook/d;

    const-string/jumbo v1, "WEB_VIEW"

    invoke-direct {v0, v1, v7, v3}, Lcom/facebook/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/d;->e:Lcom/facebook/d;

    .line 56
    new-instance v0, Lcom/facebook/d;

    const-string/jumbo v1, "CHROME_CUSTOM_TAB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/d;->f:Lcom/facebook/d;

    .line 61
    new-instance v0, Lcom/facebook/d;

    const-string/jumbo v1, "TEST_USER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/d;->g:Lcom/facebook/d;

    .line 65
    new-instance v0, Lcom/facebook/d;

    const-string/jumbo v1, "CLIENT_TOKEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/d;->h:Lcom/facebook/d;

    .line 69
    new-instance v0, Lcom/facebook/d;

    const-string/jumbo v1, "DEVICE_AUTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/facebook/d;->i:Lcom/facebook/d;

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/d;

    sget-object v1, Lcom/facebook/d;->a:Lcom/facebook/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/d;->b:Lcom/facebook/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/d;->c:Lcom/facebook/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/d;->d:Lcom/facebook/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/d;->e:Lcom/facebook/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/d;->f:Lcom/facebook/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/d;->g:Lcom/facebook/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/d;->h:Lcom/facebook/d;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/d;->i:Lcom/facebook/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/d;->k:[Lcom/facebook/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-boolean p3, p0, Lcom/facebook/d;->j:Z

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/d;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/d;

    return-object v0
.end method

.method public static values()[Lcom/facebook/d;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/d;->k:[Lcom/facebook/d;

    invoke-virtual {v0}, [Lcom/facebook/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/d;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/facebook/d;->j:Z

    return v0
.end method
