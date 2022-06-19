.class public final enum Lcom/facebook/appevents/g/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/g/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/g/c$a;

.field public static final enum MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/g/c$a;

.field public static final enum MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/g/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Lcom/facebook/appevents/g/c$a;

    const-string v1, "MTML_INTEGRITY_DETECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/g/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/g/c$a;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/g/c$a;

    .line 61
    new-instance v1, Lcom/facebook/appevents/g/c$a;

    const-string v3, "MTML_APP_EVENT_PREDICTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/g/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/g/c$a;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/g/c$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/appevents/g/c$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 59
    sput-object v3, Lcom/facebook/appevents/g/c$a;->$VALUES:[Lcom/facebook/appevents/g/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/g/c$a;
    .locals 1

    .line 59
    const-class v0, Lcom/facebook/appevents/g/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/g/c$a;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/g/c$a;
    .locals 1

    .line 59
    sget-object v0, Lcom/facebook/appevents/g/c$a;->$VALUES:[Lcom/facebook/appevents/g/c$a;

    invoke-virtual {v0}, [Lcom/facebook/appevents/g/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/g/c$a;

    return-object v0
.end method


# virtual methods
.method public final toKey()Ljava/lang/String;
    .locals 2

    .line 64
    sget-object v0, Lcom/facebook/appevents/g/c$4;->a:[I

    invoke-virtual {p0}, Lcom/facebook/appevents/g/c$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    const-string v0, "app_event_pred"

    return-object v0

    :cond_1
    const-string v0, "integrity_detect"

    return-object v0
.end method

.method public final toUseCase()Ljava/lang/String;
    .locals 2

    .line 75
    sget-object v0, Lcom/facebook/appevents/g/c$4;->a:[I

    invoke-virtual {p0}, Lcom/facebook/appevents/g/c$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "MTML_APP_EVENT_PRED"

    return-object v0

    :cond_1
    const-string v0, "MTML_INTEGRITY_DETECT"

    return-object v0
.end method
