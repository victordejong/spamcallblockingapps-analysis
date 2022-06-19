.class public final enum Lcom/facebook/share/widget/LikeView$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/LikeView$e;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$e;

.field public static DEFAULT:Lcom/facebook/share/widget/LikeView$e;

.field public static final enum OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$e;

.field public static final enum PAGE:Lcom/facebook/share/widget/LikeView$e;

.field public static final enum UNKNOWN:Lcom/facebook/share/widget/LikeView$e;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 63
    new-instance v0, Lcom/facebook/share/widget/LikeView$e;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/share/widget/LikeView$e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$e;->UNKNOWN:Lcom/facebook/share/widget/LikeView$e;

    .line 66
    new-instance v1, Lcom/facebook/share/widget/LikeView$e;

    const-string v3, "OPEN_GRAPH"

    const/4 v4, 0x1

    const-string v5, "open_graph"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/facebook/share/widget/LikeView$e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/facebook/share/widget/LikeView$e;->OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$e;

    .line 69
    new-instance v3, Lcom/facebook/share/widget/LikeView$e;

    const-string v5, "PAGE"

    const/4 v6, 0x2

    const-string v7, "page"

    invoke-direct {v3, v5, v6, v7, v6}, Lcom/facebook/share/widget/LikeView$e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/facebook/share/widget/LikeView$e;->PAGE:Lcom/facebook/share/widget/LikeView$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/share/widget/LikeView$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 60
    sput-object v5, Lcom/facebook/share/widget/LikeView$e;->$VALUES:[Lcom/facebook/share/widget/LikeView$e;

    .line 71
    sput-object v0, Lcom/facebook/share/widget/LikeView$e;->DEFAULT:Lcom/facebook/share/widget/LikeView$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$e;->stringValue:Ljava/lang/String;

    .line 88
    iput p4, p0, Lcom/facebook/share/widget/LikeView$e;->intValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/facebook/share/widget/LikeView$e;
    .locals 5

    .line 74
    invoke-static {}, Lcom/facebook/share/widget/LikeView$e;->values()[Lcom/facebook/share/widget/LikeView$e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 75
    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$e;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$e;
    .locals 1

    .line 60
    const-class v0, Lcom/facebook/share/widget/LikeView$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/widget/LikeView$e;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$e;
    .locals 1

    .line 60
    sget-object v0, Lcom/facebook/share/widget/LikeView$e;->$VALUES:[Lcom/facebook/share/widget/LikeView$e;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$e;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/facebook/share/widget/LikeView$e;->intValue:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$e;->stringValue:Ljava/lang/String;

    return-object v0
.end method
