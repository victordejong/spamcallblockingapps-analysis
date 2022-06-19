.class synthetic Lcom/explorestack/protobuf/openrtb/Openrtb$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 759
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->values()[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$2;->$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I

    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$2;->$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I

    sget-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$2;->$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase:[I

    sget-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
