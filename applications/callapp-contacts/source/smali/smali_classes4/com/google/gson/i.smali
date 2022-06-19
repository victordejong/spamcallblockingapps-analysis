.class public abstract enum Lcom/google/gson/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gson/i;

.field public static final enum DEFAULT:Lcom/google/gson/i;

.field public static final enum STRING:Lcom/google/gson/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/google/gson/i$1;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gson/i$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gson/i;->DEFAULT:Lcom/google/gson/i;

    .line 45
    new-instance v1, Lcom/google/gson/i$2;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/gson/i$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/gson/i;->STRING:Lcom/google/gson/i;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/gson/i;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 27
    sput-object v3, Lcom/google/gson/i;->$VALUES:[Lcom/google/gson/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/i$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/gson/i;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/i;
    .locals 1

    .line 27
    const-class v0, Lcom/google/gson/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gson/i;

    return-object p0
.end method

.method public static values()[Lcom/google/gson/i;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/gson/i;->$VALUES:[Lcom/google/gson/i;

    invoke-virtual {v0}, [Lcom/google/gson/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/i;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;
.end method
