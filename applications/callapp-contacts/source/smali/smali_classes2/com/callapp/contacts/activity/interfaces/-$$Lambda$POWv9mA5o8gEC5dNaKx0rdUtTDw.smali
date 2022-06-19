.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->a(Landroid/os/Bundle;)V

    return-void
.end method
