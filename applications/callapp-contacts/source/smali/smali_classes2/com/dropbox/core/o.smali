.class public final enum Lcom/dropbox/core/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/o;

.field public static final enum OFFLINE:Lcom/dropbox/core/o;

.field public static final enum ONLINE:Lcom/dropbox/core/o;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/dropbox/core/o;

    const-string v1, "ONLINE"

    const/4 v2, 0x0

    const-string v3, "online"

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/o;->ONLINE:Lcom/dropbox/core/o;

    .line 16
    new-instance v1, Lcom/dropbox/core/o;

    const-string v3, "OFFLINE"

    const/4 v4, 0x1

    const-string v5, "offline"

    invoke-direct {v1, v3, v4, v5}, Lcom/dropbox/core/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dropbox/core/o;->OFFLINE:Lcom/dropbox/core/o;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/dropbox/core/o;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 8
    sput-object v3, Lcom/dropbox/core/o;->$VALUES:[Lcom/dropbox/core/o;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/dropbox/core/o;->string:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/o;
    .locals 1

    .line 8
    const-class v0, Lcom/dropbox/core/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/o;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/o;
    .locals 1

    .line 8
    sget-object v0, Lcom/dropbox/core/o;->$VALUES:[Lcom/dropbox/core/o;

    invoke-virtual {v0}, [Lcom/dropbox/core/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/o;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/dropbox/core/o;->string:Ljava/lang/String;

    return-object v0
.end method
