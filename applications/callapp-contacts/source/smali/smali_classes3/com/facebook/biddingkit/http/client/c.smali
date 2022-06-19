.class public final enum Lcom/facebook/biddingkit/http/client/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/http/client/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/http/client/c;

.field public static final enum GET:Lcom/facebook/biddingkit/http/client/c;

.field public static final enum POST:Lcom/facebook/biddingkit/http/client/c;


# instance fields
.field private doInput:Z

.field private doOutput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/facebook/biddingkit/http/client/c;

    const-string v1, "GET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/biddingkit/http/client/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/biddingkit/http/client/c;->GET:Lcom/facebook/biddingkit/http/client/c;

    .line 31
    new-instance v1, Lcom/facebook/biddingkit/http/client/c;

    const-string v4, "POST"

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/facebook/biddingkit/http/client/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/facebook/biddingkit/http/client/c;->POST:Lcom/facebook/biddingkit/http/client/c;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/facebook/biddingkit/http/client/c;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 29
    sput-object v4, Lcom/facebook/biddingkit/http/client/c;->$VALUES:[Lcom/facebook/biddingkit/http/client/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-boolean p3, p0, Lcom/facebook/biddingkit/http/client/c;->doInput:Z

    .line 38
    iput-boolean p4, p0, Lcom/facebook/biddingkit/http/client/c;->doOutput:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/http/client/c;
    .locals 1

    .line 29
    const-class v0, Lcom/facebook/biddingkit/http/client/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/http/client/c;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/http/client/c;
    .locals 1

    .line 29
    sget-object v0, Lcom/facebook/biddingkit/http/client/c;->$VALUES:[Lcom/facebook/biddingkit/http/client/c;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/http/client/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/http/client/c;

    return-object v0
.end method


# virtual methods
.method public final getDoInput()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/facebook/biddingkit/http/client/c;->doInput:Z

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/facebook/biddingkit/http/client/c;->doOutput:Z

    return v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
