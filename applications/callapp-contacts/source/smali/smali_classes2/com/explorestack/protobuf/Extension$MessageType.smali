.class public final enum Lcom/explorestack/protobuf/Extension$MessageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Extension$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Extension$MessageType;

.field public static final enum PROTO1:Lcom/explorestack/protobuf/Extension$MessageType;

.field public static final enum PROTO2:Lcom/explorestack/protobuf/Extension$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lcom/explorestack/protobuf/Extension$MessageType;

    const-string v1, "PROTO1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Extension$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/protobuf/Extension$MessageType;->PROTO1:Lcom/explorestack/protobuf/Extension$MessageType;

    .line 70
    new-instance v1, Lcom/explorestack/protobuf/Extension$MessageType;

    const-string v3, "PROTO2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/explorestack/protobuf/Extension$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/protobuf/Extension$MessageType;->PROTO2:Lcom/explorestack/protobuf/Extension$MessageType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/explorestack/protobuf/Extension$MessageType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 68
    sput-object v3, Lcom/explorestack/protobuf/Extension$MessageType;->$VALUES:[Lcom/explorestack/protobuf/Extension$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Extension$MessageType;
    .locals 1

    .line 68
    const-class v0, Lcom/explorestack/protobuf/Extension$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Extension$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Extension$MessageType;
    .locals 1

    .line 68
    sget-object v0, Lcom/explorestack/protobuf/Extension$MessageType;->$VALUES:[Lcom/explorestack/protobuf/Extension$MessageType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Extension$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Extension$MessageType;

    return-object v0
.end method
