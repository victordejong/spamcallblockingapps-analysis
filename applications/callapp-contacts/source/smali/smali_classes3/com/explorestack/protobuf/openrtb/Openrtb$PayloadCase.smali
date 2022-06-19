.class public final enum Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 143
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const-string v1, "REQUEST"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 144
    new-instance v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const-string v3, "RESPONSE"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 145
    new-instance v3, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const-string v5, "PAYLOAD_NOT_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 141
    sput-object v5, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->$VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput p3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0

    .line 160
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0

    .line 162
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 141
    const-class v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 141
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->$VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->value:I

    return v0
.end method
