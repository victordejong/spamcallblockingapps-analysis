.class Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DualSimSubscriptionBuilder"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:J

.field d:J

.field e:I

.field f:I

.field final synthetic g:Lcom/callapp/contacts/manager/sim/SimManager;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/manager/sim/SimManager;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->g:Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/manager/sim/SimManager;Lcom/callapp/contacts/manager/sim/SimManager$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;-><init>(Lcom/callapp/contacts/manager/sim/SimManager;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;)Ljava/util/List;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;
    .locals 11

    .line 129
    new-instance v10, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;

    iget-object v1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->g:Lcom/callapp/contacts/manager/sim/SimManager;

    iget-object v2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->a:Ljava/util/List;

    iget-boolean v3, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->b:Z

    iget-wide v4, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->c:J

    iget-wide v6, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->d:J

    iget v8, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->e:I

    iget v9, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder;->f:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;-><init>(Lcom/callapp/contacts/manager/sim/SimManager;Ljava/util/List;ZJJII)V

    return-object v10
.end method
