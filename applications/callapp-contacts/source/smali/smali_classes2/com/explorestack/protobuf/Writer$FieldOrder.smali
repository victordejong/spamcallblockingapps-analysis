.class public final enum Lcom/explorestack/protobuf/Writer$FieldOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Writer$FieldOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Writer$FieldOrder;

.field public static final enum ASCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

.field public static final enum DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lcom/explorestack/protobuf/Writer$FieldOrder;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    .line 47
    new-instance v1, Lcom/explorestack/protobuf/Writer$FieldOrder;

    const-string v3, "DESCENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/explorestack/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/explorestack/protobuf/Writer$FieldOrder;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 42
    sput-object v3, Lcom/explorestack/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/explorestack/protobuf/Writer$FieldOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Writer$FieldOrder;
    .locals 1

    .line 42
    const-class v0, Lcom/explorestack/protobuf/Writer$FieldOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Writer$FieldOrder;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Writer$FieldOrder;
    .locals 1

    .line 42
    sget-object v0, Lcom/explorestack/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/explorestack/protobuf/Writer$FieldOrder;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Writer$FieldOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Writer$FieldOrder;

    return-object v0
.end method
