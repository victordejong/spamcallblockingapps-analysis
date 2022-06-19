.class public final synthetic Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD-9o_WoI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD-9o_WoI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD-9o_WoI;

    invoke-direct {v0}, Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD-9o_WoI;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD-9o_WoI;->INSTANCE:Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD-9o_WoI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    check-cast p2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CallLogUtils;->lambda$_cMpZ9whXzfbzAtLP2tD-9o_WoI(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)I

    move-result p1

    return p1
.end method
