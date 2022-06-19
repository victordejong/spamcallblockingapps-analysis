.class public final enum Lcom/pubmatic/sdk/common/models/POBLocation$Source;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/models/POBLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/models/POBLocation$Source;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GPS:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

.field public static final enum IP_ADDRESS:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

.field public static final enum USER:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

.field private static final synthetic b:[Lcom/pubmatic/sdk/common/models/POBLocation$Source;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    const-string v1, "GPS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/common/models/POBLocation$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->GPS:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    new-instance v1, Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    const-string v4, "IP_ADDRESS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/pubmatic/sdk/common/models/POBLocation$Source;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->IP_ADDRESS:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    new-instance v4, Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    const-string v6, "USER"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/pubmatic/sdk/common/models/POBLocation$Source;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->USER:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    new-array v6, v7, [Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->b:[Lcom/pubmatic/sdk/common/models/POBLocation$Source;

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

    iput p3, p0, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/models/POBLocation$Source;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/models/POBLocation$Source;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->b:[Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/models/POBLocation$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->a:I

    return v0
.end method
