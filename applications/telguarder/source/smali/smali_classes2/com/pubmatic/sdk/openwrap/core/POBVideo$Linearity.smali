.class public final enum Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/core/POBVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Linearity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LINEAR:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

.field public static final enum NON_LINEAR:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

.field private static final synthetic b:[Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->LINEAR:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    const-string v4, "NON_LINEAR"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->NON_LINEAR:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    new-array v4, v5, [Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->b:[Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->b:[Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->a:I

    return v0
.end method
