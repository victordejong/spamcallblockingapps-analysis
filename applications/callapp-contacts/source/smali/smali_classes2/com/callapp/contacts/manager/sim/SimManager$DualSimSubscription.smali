.class Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DualSimSubscription"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/sim/SimManager;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:J

.field private final e:J

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/sim/SimManager;Ljava/util/List;ZJJII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;ZJJII)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->a:Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->b:Ljava/util/List;

    .line 112
    iput-boolean p3, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->c:Z

    .line 113
    iput-wide p4, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->d:J

    .line 114
    iput-wide p6, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->e:J

    .line 115
    iput p8, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->f:I

    .line 116
    iput p9, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->g:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Ljava/util/List;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->f:I

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/callapp/contacts/manager/sim/SimManager$DualSimSubscription;->g:I

    return p0
.end method
