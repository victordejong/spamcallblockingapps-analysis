.class public final synthetic Lcom/criteo/publisher/-$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final synthetic INSTANCE:Lcom/criteo/publisher/-$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/criteo/publisher/-$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk;

    invoke-direct {v0}, Lcom/criteo/publisher/-$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk;-><init>()V

    sput-object v0, Lcom/criteo/publisher/-$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/criteo/publisher/model/s;

    invoke-static {p1}, Lcom/criteo/publisher/Bid;->lambda$WEs9SoAmX1RMoItE_GwFmu0EoGk(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/s;

    move-result-object p1

    return-object p1
.end method
