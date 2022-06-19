.class public final synthetic Lcom/callapp/contacts/event/listener/-$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H--zpVts22A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/event/listener/-$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H--zpVts22A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/event/listener/-$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H--zpVts22A;

    invoke-direct {v0}, Lcom/callapp/contacts/event/listener/-$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H--zpVts22A;-><init>()V

    sput-object v0, Lcom/callapp/contacts/event/listener/-$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H--zpVts22A;->INSTANCE:Lcom/callapp/contacts/event/listener/-$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H--zpVts22A;

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

    check-cast p1, Lcom/callapp/contacts/event/listener/DestroyListener;

    invoke-static {p1, p2}, Lcom/callapp/contacts/event/listener/DestroyListener$-CC;->lambda$czCJR2RoTKyHdmE5H--zpVts22A(Lcom/callapp/contacts/event/listener/DestroyListener;Ljava/lang/Object;)V

    return-void
.end method
