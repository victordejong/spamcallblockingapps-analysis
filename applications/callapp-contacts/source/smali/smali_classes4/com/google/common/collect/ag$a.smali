.class abstract enum Lcom/google/common/collect/ag$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/ag$a;",
        ">;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/ag$a;

.field public static final enum KEY:Lcom/google/common/collect/ag$a;

.field public static final enum VALUE:Lcom/google/common/collect/ag$a;


# direct methods
.method private static synthetic $values()[Lcom/google/common/collect/ag$a;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/ag$a;

    .line 84
    sget-object v1, Lcom/google/common/collect/ag$a;->KEY:Lcom/google/common/collect/ag$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/ag$a;->VALUE:Lcom/google/common/collect/ag$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Lcom/google/common/collect/ag$a$1;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ag$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/ag$a;->KEY:Lcom/google/common/collect/ag$a;

    .line 92
    new-instance v0, Lcom/google/common/collect/ag$a$2;

    const-string v1, "VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ag$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/ag$a;->VALUE:Lcom/google/common/collect/ag$a;

    .line 84
    invoke-static {}, Lcom/google/common/collect/ag$a;->$values()[Lcom/google/common/collect/ag$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ag$a;->$VALUES:[Lcom/google/common/collect/ag$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/ag$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ag$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/ag$a;
    .locals 1

    .line 84
    const-class v0, Lcom/google/common/collect/ag$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/ag$a;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/ag$a;
    .locals 1

    .line 84
    sget-object v0, Lcom/google/common/collect/ag$a;->$VALUES:[Lcom/google/common/collect/ag$a;

    invoke-virtual {v0}, [Lcom/google/common/collect/ag$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/ag$a;

    return-object v0
.end method
