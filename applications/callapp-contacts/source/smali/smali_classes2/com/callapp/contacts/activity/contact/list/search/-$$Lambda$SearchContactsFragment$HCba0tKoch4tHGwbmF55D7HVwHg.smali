.class public final synthetic Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg;->INSTANCE:Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg;

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

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->lambda$HCba0tKoch4tHGwbmF55D7HVwHg(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)I

    move-result p1

    return p1
.end method
