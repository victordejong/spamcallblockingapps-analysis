.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;

    check-cast p2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener$-CC;->lambda$sjoz5dxx1_RzP2GdTJgBASpnMZ4(Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    return-void
.end method
