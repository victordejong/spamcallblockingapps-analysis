.class final enum Lcom/bumptech/glide/load/engine/h$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/engine/h$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/engine/h$f;

.field public static final enum DECODE_DATA:Lcom/bumptech/glide/load/engine/h$f;

.field public static final enum INITIALIZE:Lcom/bumptech/glide/load/engine/h$f;

.field public static final enum SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/h$f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 733
    new-instance v0, Lcom/bumptech/glide/load/engine/h$f;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/h$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/h$f;->INITIALIZE:Lcom/bumptech/glide/load/engine/h$f;

    .line 735
    new-instance v1, Lcom/bumptech/glide/load/engine/h$f;

    const-string v3, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bumptech/glide/load/engine/h$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bumptech/glide/load/engine/h$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/h$f;

    .line 740
    new-instance v3, Lcom/bumptech/glide/load/engine/h$f;

    const-string v5, "DECODE_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bumptech/glide/load/engine/h$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bumptech/glide/load/engine/h$f;->DECODE_DATA:Lcom/bumptech/glide/load/engine/h$f;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bumptech/glide/load/engine/h$f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 731
    sput-object v5, Lcom/bumptech/glide/load/engine/h$f;->$VALUES:[Lcom/bumptech/glide/load/engine/h$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 731
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/h$f;
    .locals 1

    .line 731
    const-class v0, Lcom/bumptech/glide/load/engine/h$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/h$f;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/h$f;
    .locals 1

    .line 731
    sget-object v0, Lcom/bumptech/glide/load/engine/h$f;->$VALUES:[Lcom/bumptech/glide/load/engine/h$f;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/h$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/h$f;

    return-object v0
.end method
