.class public final synthetic Lcom/callapp/contacts/event/listener/-$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/event/listener/-$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/event/listener/-$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk;

    invoke-direct {v0}, Lcom/callapp/contacts/event/listener/-$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk;-><init>()V

    sput-object v0, Lcom/callapp/contacts/event/listener/-$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk;->INSTANCE:Lcom/callapp/contacts/event/listener/-$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fire(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/callapp/contacts/event/listener/PauseListener;

    invoke-static {p1, p2}, Lcom/callapp/contacts/event/listener/PauseListener$-CC;->lambda$PYokDSVeBBqXQ1JgrsDGpD3bqWk(Lcom/callapp/contacts/event/listener/PauseListener;Ljava/lang/Object;)V

    return-void
.end method
