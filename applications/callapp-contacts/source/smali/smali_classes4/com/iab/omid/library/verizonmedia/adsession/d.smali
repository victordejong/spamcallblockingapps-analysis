.class public final enum Lcom/iab/omid/library/verizonmedia/adsession/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/verizonmedia/adsession/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/verizonmedia/adsession/d;

.field public static final enum HTML:Lcom/iab/omid/library/verizonmedia/adsession/d;

.field public static final enum JAVASCRIPT:Lcom/iab/omid/library/verizonmedia/adsession/d;

.field public static final enum NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/d;


# instance fields
.field private final typeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/iab/omid/library/verizonmedia/adsession/d;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/verizonmedia/adsession/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/verizonmedia/adsession/d;->HTML:Lcom/iab/omid/library/verizonmedia/adsession/d;

    new-instance v1, Lcom/iab/omid/library/verizonmedia/adsession/d;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    const-string v5, "native"

    invoke-direct {v1, v3, v4, v5}, Lcom/iab/omid/library/verizonmedia/adsession/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/iab/omid/library/verizonmedia/adsession/d;->NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/d;

    new-instance v3, Lcom/iab/omid/library/verizonmedia/adsession/d;

    const-string v5, "JAVASCRIPT"

    const/4 v6, 0x2

    const-string v7, "javascript"

    invoke-direct {v3, v5, v6, v7}, Lcom/iab/omid/library/verizonmedia/adsession/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/iab/omid/library/verizonmedia/adsession/d;->JAVASCRIPT:Lcom/iab/omid/library/verizonmedia/adsession/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/iab/omid/library/verizonmedia/adsession/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/iab/omid/library/verizonmedia/adsession/d;->$VALUES:[Lcom/iab/omid/library/verizonmedia/adsession/d;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iab/omid/library/verizonmedia/adsession/d;->typeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/verizonmedia/adsession/d;
    .locals 1

    const-class v0, Lcom/iab/omid/library/verizonmedia/adsession/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/verizonmedia/adsession/d;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/verizonmedia/adsession/d;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/d;->$VALUES:[Lcom/iab/omid/library/verizonmedia/adsession/d;

    invoke-virtual {v0}, [Lcom/iab/omid/library/verizonmedia/adsession/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/verizonmedia/adsession/d;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/d;->typeString:Ljava/lang/String;

    return-object v0
.end method
