.class final enum Lcom/facebook/appevents/h/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/h/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/h/c$a;

.field public static final enum CUSTOM_APP_EVENTS:Lcom/facebook/appevents/h/c$a;

.field public static final enum MOBILE_APP_INSTALL:Lcom/facebook/appevents/h/c$a;


# instance fields
.field private eventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 164
    new-instance v0, Lcom/facebook/appevents/h/c$a;

    const-string v1, "MOBILE_APP_INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/facebook/appevents/h/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/h/c$a;->MOBILE_APP_INSTALL:Lcom/facebook/appevents/h/c$a;

    .line 165
    new-instance v1, Lcom/facebook/appevents/h/c$a;

    const-string v3, "CUSTOM_APP_EVENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/facebook/appevents/h/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/appevents/h/c$a;->CUSTOM_APP_EVENTS:Lcom/facebook/appevents/h/c$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/appevents/h/c$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 163
    sput-object v3, Lcom/facebook/appevents/h/c$a;->$VALUES:[Lcom/facebook/appevents/h/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-object p3, p0, Lcom/facebook/appevents/h/c$a;->eventType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/h/c$a;
    .locals 1

    .line 163
    const-class v0, Lcom/facebook/appevents/h/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/h/c$a;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/h/c$a;
    .locals 1

    .line 163
    sget-object v0, Lcom/facebook/appevents/h/c$a;->$VALUES:[Lcom/facebook/appevents/h/c$a;

    invoke-virtual {v0}, [Lcom/facebook/appevents/h/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/h/c$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/facebook/appevents/h/c$a;->eventType:Ljava/lang/String;

    return-object v0
.end method
