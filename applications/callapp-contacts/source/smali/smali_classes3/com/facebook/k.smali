.class public final enum Lcom/facebook/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/k;

.field public static final enum DELETE:Lcom/facebook/k;

.field public static final enum GET:Lcom/facebook/k;

.field public static final enum POST:Lcom/facebook/k;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lcom/facebook/k;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/k;->GET:Lcom/facebook/k;

    .line 29
    new-instance v1, Lcom/facebook/k;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/k;->POST:Lcom/facebook/k;

    .line 32
    new-instance v3, Lcom/facebook/k;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/k;->DELETE:Lcom/facebook/k;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/k;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 24
    sput-object v5, Lcom/facebook/k;->$VALUES:[Lcom/facebook/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/k;
    .locals 1

    .line 24
    const-class v0, Lcom/facebook/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/k;

    return-object p0
.end method

.method public static values()[Lcom/facebook/k;
    .locals 1

    .line 24
    sget-object v0, Lcom/facebook/k;->$VALUES:[Lcom/facebook/k;

    invoke-virtual {v0}, [Lcom/facebook/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/k;

    return-object v0
.end method
