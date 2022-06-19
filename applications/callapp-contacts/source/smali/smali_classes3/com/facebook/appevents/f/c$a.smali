.class public final enum Lcom/facebook/appevents/f/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/f/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/f/c$a;

.field public static final enum CUSTOM_APP_EVENTS:Lcom/facebook/appevents/f/c$a;

.field public static final enum MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/f/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lcom/facebook/appevents/f/c$a;

    const-string v1, "MOBILE_INSTALL_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/f/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/f/c$a;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/f/c$a;

    .line 44
    new-instance v1, Lcom/facebook/appevents/f/c$a;

    const-string v3, "CUSTOM_APP_EVENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/f/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/f/c$a;->CUSTOM_APP_EVENTS:Lcom/facebook/appevents/f/c$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/appevents/f/c$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 42
    sput-object v3, Lcom/facebook/appevents/f/c$a;->$VALUES:[Lcom/facebook/appevents/f/c$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/f/c$a;
    .locals 1

    .line 42
    const-class v0, Lcom/facebook/appevents/f/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/f/c$a;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/f/c$a;
    .locals 1

    .line 42
    sget-object v0, Lcom/facebook/appevents/f/c$a;->$VALUES:[Lcom/facebook/appevents/f/c$a;

    invoke-virtual {v0}, [Lcom/facebook/appevents/f/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/f/c$a;

    return-object v0
.end method
