.class public Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/KeypadLayoutChanges;
.implements Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragment<",
        "Ljava/util/List;",
        ">;",
        "Lcom/callapp/contacts/activity/interfaces/KeypadLayoutChanges;",
        "Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;"
    }
.end annotation


# static fields
.field private static g:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;",
            ">;>;"
        }
    .end annotation
.end field

.field private static r:Z


# instance fields
.field private A:Z

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private D:Z

.field private E:Landroid/view/ViewGroup;

.field private F:Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;

.field private G:Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;

.field private H:Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l:I

.field private m:I

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private s:Lcom/callapp/contacts/manager/task/Task;

.field private t:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;

.field private u:La/a/a/a/a/c;

.field private v:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

.field private w:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

.field private x:Lcom/callapp/contacts/activity/interfaces/KeypadParamsChanged;

.field private y:Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;

.field private z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 129
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->g:Landroidx/b/e;

    const/4 v0, 0x1

    .line 138
    sput-boolean v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->r:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 106
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d:Z

    const-string v1, ""

    .line 127
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->e:Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f:Ljava/util/List;

    .line 132
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v1, 0x0

    .line 134
    iput-wide v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->n:J

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->p:Z

    .line 137
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->q:Z

    const v1, 0x7f1202d8

    .line 149
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->B:Ljava/lang/String;

    const v1, 0x7f1202d9

    .line 150
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->C:Ljava/lang/String;

    .line 152
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->D:Z

    .line 155
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$R2qXqLAJc17pyph7HNWgzvkk9uw;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$R2qXqLAJc17pyph7HNWgzvkk9uw;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->F:Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;

    .line 168
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$21hK__GD5QWxsUeMNKKkYW3KQVk;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$21hK__GD5QWxsUeMNKKkYW3KQVk;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->G:Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;

    .line 181
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$1;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->H:Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)I
    .locals 0

    .line 360
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getTotalInteractionCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getTotalInteractionCount()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Lcom/callapp/contacts/manager/task/Task;)Lcom/callapp/contacts/manager/task/Task;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->s:Lcom/callapp/contacts/manager/task/Task;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f:Ljava/util/List;

    return-object p1
.end method

.method private static a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    .line 480
    invoke-virtual {p0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    if-ltz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 483
    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "sans-serif-medium"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x21

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 484
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz p2, :cond_0

    .line 487
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p2, 0x12

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/lang/CharSequence;)V
    .locals 1

    .line 5564
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5566
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
    .locals 2

    .line 553
    invoke-static {}, Lcom/callapp/contacts/manager/LocationManager;->get()Lcom/callapp/contacts/manager/LocationManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$4;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$9;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->D:Z

    .line 174
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->refreshData()V

    .line 175
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "location - permission"

    const-string v2, "granted"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 0

    .line 106
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->e(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Z
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->A:Z

    return v0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->y:Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c(Ljava/util/List;)V

    return-void
.end method

.method private synthetic b(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 158
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$9;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->D:Z

    .line 161
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "location - permission"

    const-string v2, "denied"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)V"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 272
    invoke-static {}, Lcom/callapp/contacts/loader/FastCacheDataManager;->getAllFastCacheDataWithName()Ljava/util/Map;

    move-result-object v1

    .line 273
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLog()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 274
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 275
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 276
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 277
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 278
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-nez v7, :cond_5

    .line 279
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 281
    invoke-virtual {v7}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 286
    iget-object v10, v7, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v10}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v10

    .line 287
    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 288
    invoke-virtual {v3, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 289
    invoke-virtual {v3, v10, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_1
    invoke-virtual {v7}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getAggregateSize()I

    move-result v11

    .line 293
    invoke-virtual {v4, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 294
    invoke-virtual {v4, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 296
    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_3
    :goto_1
    invoke-virtual {v7}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 301
    invoke-virtual {v7}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v10, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-direct {v10, v7}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;-><init>(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V

    .line 304
    iget-wide v11, v7, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    cmp-long v13, v11, v8

    if-lez v13, :cond_4

    .line 305
    iget-wide v7, v7, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_4
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_5
    invoke-static {v6}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 312
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 313
    invoke-virtual {v6}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 314
    iget-object v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v11}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v11

    .line 315
    invoke-static {v11}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 316
    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setTotalInteractionCount(I)V

    .line 318
    :cond_7
    iget-object v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    invoke-static {v11}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 319
    iget-wide v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    cmp-long v13, v11, v8

    if-lez v13, :cond_8

    .line 321
    iget-wide v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz v11, :cond_a

    .line 323
    iget-object v11, v11, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    goto :goto_3

    .line 328
    :cond_8
    new-instance v11, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v11}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v11

    invoke-virtual {v11}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v11

    new-instance v12, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v12}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v11

    .line 329
    invoke-virtual {v6}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v11

    .line 330
    invoke-virtual {v11}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v11

    cmp-long v13, v11, v8

    if-lez v13, :cond_9

    .line 332
    iget-wide v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz v11, :cond_a

    .line 334
    iget-object v11, v11, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    goto :goto_3

    .line 338
    :cond_9
    invoke-virtual {v6}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    iget-wide v12, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    invoke-static {v11, v12, v13}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v11

    .line 340
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    if-eqz v11, :cond_a

    .line 341
    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 342
    invoke-virtual {v11}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    .line 347
    :cond_a
    :goto_3
    iget-object v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    invoke-static {v11}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 348
    iput-object v10, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    .line 352
    :cond_b
    invoke-static {v6}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 353
    iget-object v11, v6, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->normalNumbers:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v6, v7}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setSectionId(I)V

    .line 356
    iget-object v10, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v10, :cond_6

    .line 357
    iget-object v10, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v10, v6, v7}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Z)V

    goto/16 :goto_2

    .line 360
    :cond_c
    sget-object v1, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg;->INSTANCE:Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg;

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 362
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 364
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getFavoriteContacts()Ljava/util/List;

    move-result-object v1

    .line 365
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 366
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 367
    iget-object v3, v2, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->nameT9:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 368
    invoke-static {v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 370
    :cond_e
    invoke-virtual {v2, v7}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->setSectionId(I)V

    .line 371
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/View;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c()Landroidx/b/e;
    .locals 1

    .line 106
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->g:Landroidx/b/e;

    return-object v0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d(Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;)V"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    const/4 v2, 0x3

    .line 379
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setSectionId(I)V

    .line 380
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/manager/task/Task;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->s:Lcom/callapp/contacts/manager/task/Task;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c:Ljava/util/List;

    return-object p1
.end method

.method private synthetic d()V
    .locals 3

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b(Ljava/util/List;)V

    .line 792
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c()V

    .line 795
    :cond_0
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b:Ljava/util/List;

    const/4 v1, 0x0

    .line 796
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c:Ljava/util/List;

    .line 798
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HoxYCN-cRWv1ifD2UAdWgopfVIA;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$HoxYCN-cRWv1ifD2UAdWgopfVIA;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;)V"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 3684
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3685
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 3686
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;

    .line 3687
    invoke-interface {v2}, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;->getSectionId()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 3688
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 671
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 675
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$6;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/List;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f:Ljava/util/List;

    return-object p0
.end method

.method private static e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)V"
        }
    .end annotation

    .line 993
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 995
    iget-object v1, v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    const/4 v1, -0x1

    .line 996
    iput v1, v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexEnd:I

    .line 997
    iput v1, v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->numberMatchIndexStart:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private synthetic f(Ljava/util/List;)V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->getCurrentFilter()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->setData(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 806
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c:Ljava/util/List;

    .line 807
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->getCurrentFilter()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->o:Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Ljava/lang/String;ZZZ)V

    :goto_0
    const/4 p1, 0x1

    .line 809
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d:Z

    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/lang/Object;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->data:Ljava/lang/Object;

    return-object p0
.end method

.method private isLocationPermissionDenied()Z
    .locals 1

    .line 266
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/View;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->j:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic lambda$21hK__GD5QWxsUeMNKKkYW3KQVk(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method

.method public static synthetic lambda$HCba0tKoch4tHGwbmF55D7HVwHg(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$HoxYCN-cRWv1ifD2UAdWgopfVIA(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$R2qXqLAJc17pyph7HNWgzvkk9uw(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method

.method public static synthetic lambda$SlA90MidhMceno8BlhY6YMYAyTA(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d()V

    return-void
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    return-object p0
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->p:Z

    return v0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/lang/Object;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->data:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/lang/Object;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->data:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic q(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Z
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->isLocationPermissionDenied()Z

    move-result p0

    return p0
.end method

.method static synthetic r(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->n:J

    return-wide v0
.end method

.method static synthetic s(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/List;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic t(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d:Z

    return p0
.end method

.method static synthetic u(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/List;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic w(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic x(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    return-object p0
.end method

.method static synthetic y(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    return-object p0
.end method

.method static synthetic z(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->getCurrentFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->a(Ljava/lang/String;)Z

    move-result v0

    .line 700
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$7;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Z)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZZZ)V
    .locals 3

    .line 816
    iput-boolean p4, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->o:Z

    .line 818
    invoke-static {p1}, Lcom/callapp/framework/phone/PhoneNumberUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    .line 3856
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p4

    const-string v0, "searchNearbyEnabled"

    invoke-virtual {p4, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    if-nez p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x4

    if-lt p4, v0, :cond_2

    .line 3858
    :cond_0
    iget-object p4, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    if-eqz p3, :cond_1

    .line 3860
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a()V

    .line 3863
    :cond_1
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->n:J

    .line 3864
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;

    invoke-direct {v0, p0, p3, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;ZLjava/lang/String;)V

    const-wide/16 v1, 0x2ee

    invoke-virtual {p4, v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 823
    :cond_2
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_3

    .line 824
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getFilter()Landroid/widget/Filter;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    .line 827
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    .line 832
    :cond_3
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 833
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 834
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1005
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    .line 1006
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->u:La/a/a/a/a/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 1008
    new-instance v0, La/a/a/a/a/c;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->v:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-direct {v0, v1}, La/a/a/a/a/c;-><init>(La/a/a/a/a/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->u:La/a/a/a/a/c;

    .line 1009
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->u:La/a/a/a/a/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 1010
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getAdUnitIdsConfiguration()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->t:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->t:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->t:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter;

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 781
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 782
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d0112

    return v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 4

    .line 106
    check-cast p1, Ljava/util/List;

    .line 4756
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->w:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;-><init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;Ljava/util/Map;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V

    .line 4757
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 5537
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->q:Z

    if-eqz p1, :cond_0

    .line 5538
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->getCurrentFilter()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->g:Landroidx/b/e;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5539
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->q:Z

    .line 5540
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->getCurrentFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 5541
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5542
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f:Ljava/util/List;

    .line 5543
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5544
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c(Ljava/util/List;)V

    .line 5545
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d(Ljava/util/List;)V

    .line 4760
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 4762
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->v:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    .line 4764
    new-instance v0, La/a/a/a/a/c;

    invoke-direct {v0, p1}, La/a/a/a/a/c;-><init>(La/a/a/a/a/b;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->u:La/a/a/a/a/c;

    .line 4765
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->u:La/a/a/a/a/c;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 4766
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->v:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    return-object p1
.end method

.method public initEmptyView()V
    .locals 9

    .line 425
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060026

    .line 426
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f0a037d

    .line 427
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->i:Landroid/view/View;

    .line 428
    new-instance v3, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$3;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$3;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 442
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->i:Landroid/view/View;

    const v2, 0x7f0a038b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 443
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->i:Landroid/view/View;

    const v3, 0x7f0a0388

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 444
    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->p:Z

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    invoke-interface {v4}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->shouldSkipEmptyView()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->p:Z

    if-nez v3, :cond_0

    .line 446
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->i:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    new-instance v3, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;

    invoke-direct {v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;-><init>()V

    .line 451
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v6, "RecorderTestTutorial"

    invoke-virtual {v3, v4, v6}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_3

    .line 455
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f120592

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    :cond_2
    const v3, 0x7f1202db

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f1202da

    .line 456
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2470
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2472
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v6, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->m:I

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v8, 0x12

    invoke-virtual {v4, v3, v7, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2473
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2474
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->B:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2475
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->C:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v3, v4

    :goto_0
    const v4, 0x7f0601ec

    .line 457
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v2, :cond_5

    .line 461
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0800b6

    goto :goto_1

    :cond_4
    const v1, 0x7f08047e

    .line 462
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    const v1, 0x7f0a0595

    .line 2496
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->j:Landroid/view/View;

    const v1, 0x7f060088

    .line 2498
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f0a0701

    .line 2499
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pnikosis/materialishprogress/ProgressWheel;

    const v3, 0x7f0a0596

    .line 2500
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2502
    invoke-virtual {v2, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setBarColor(I)V

    const v2, 0x7f120705

    .line 2503
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2504
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a062b

    .line 2506
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->h:Landroid/widget/TextView;

    .line 2507
    iget v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onAttach(Landroid/content/Context;)V

    .line 192
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->w:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    .line 198
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/interfaces/KeypadParamsChanged;

    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/KeypadParamsChanged;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->x:Lcom/callapp/contacts/activity/interfaces/KeypadParamsChanged;

    .line 205
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;

    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->y:Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;

    .line 211
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    .line 214
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->registerFilteredEvents(Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;)V

    return-void

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement SearchContactsEvents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement ContactScrollEvent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Paren activity must implement KeypadParamsChanged"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement ContactsClickEvents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 229
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 230
    sput-boolean v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->r:Z

    .line 231
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Search Screen"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    const v1, 0x7f060088

    .line 234
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->l:I

    const v1, 0x7f0601cc

    .line 235
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->m:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "shouldPutPlacesIntoAdapter"

    .line 238
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->q:Z

    const-string v2, "lastIsFilterFromKeypad"

    .line 239
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->o:Z

    const-string v2, "prevFilteredConstraint"

    const-string v3, ""

    .line 240
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->e:Ljava/lang/String;

    const-string v2, "KEY_SHOULD_SHOW_EMPTY_VIEW"

    .line 241
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->p:Z

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/model/SectionData;

    const v3, 0x7f1206f5

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->l:I

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/model/SectionData;

    const v2, 0x7f1206f7

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->m:I

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/model/SectionData;

    const v2, 0x7f1206fd

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->l:I

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a:Ljava/util/Map;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/model/SectionData;

    const v2, 0x7f12070a

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->m:I

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->H:Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 250
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->F:Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 251
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->G:Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 253
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->isLocationPermissionDenied()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 254
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 261
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Search Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 513
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->H:Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 514
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->F:Lcom/callapp/contacts/manager/permission/PermissionDeniedEvent;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 515
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->G:Lcom/callapp/contacts/manager/permission/PermissionAllowedEvent;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 517
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->s:Lcom/callapp/contacts/manager/task/Task;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    .line 521
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/LocationManager;->get()Lcom/callapp/contacts/manager/LocationManager;

    move-result-object v0

    .line 3065
    iget-object v1, v0, Lcom/callapp/contacts/manager/LocationManager;->a:Lcom/google/android/gms/location/b;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/callapp/contacts/manager/LocationManager;->b:Lcom/google/android/gms/location/d;

    if-eqz v1, :cond_1

    .line 3066
    iget-object v1, v0, Lcom/callapp/contacts/manager/LocationManager;->a:Lcom/google/android/gms/location/b;

    iget-object v0, v0, Lcom/callapp/contacts/manager/LocationManager;->b:Lcom/google/android/gms/location/d;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/location/d;)Lcom/google/android/gms/tasks/h;

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->e(Ljava/util/List;)V

    .line 525
    sget-boolean v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->r:Z

    if-eqz v0, :cond_2

    .line 526
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->g:Landroidx/b/e;

    invoke-virtual {v0}, Landroidx/b/e;->evictAll()V

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 530
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 533
    :cond_3
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->z:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->unRegisterFilteredEvents(Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;)V

    .line 224
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->x:Lcom/callapp/contacts/activity/interfaces/KeypadParamsChanged;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/interfaces/KeypadParamsChanged;->b(Lcom/callapp/contacts/activity/interfaces/KeypadLayoutChanges;)V

    .line 1030
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1016
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onResume()V

    .line 1017
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->x:Lcom/callapp/contacts/activity/interfaces/KeypadParamsChanged;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/interfaces/KeypadParamsChanged;->a(Lcom/callapp/contacts/activity/interfaces/KeypadLayoutChanges;)V

    .line 1019
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->A:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 1020
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1021
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->A:Z

    .line 1022
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->refreshData()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 392
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 393
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->refreshData()V

    .line 395
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 396
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$2;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    const p2, 0x7f0a07ae

    .line 412
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a0898

    .line 413
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    const p1, 0x7f060026

    .line 415
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 416
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 418
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->initEmptyView()V

    .line 1840
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->isLocationPermissionDenied()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->D:Z

    if-nez p1, :cond_0

    .line 1841
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 1842
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1843
    new-instance p1, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;-><init>(Landroid/content/Context;)V

    .line 1844
    new-instance p2, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/callapp/contacts/widget/sticky/StickyPermissionViewExpanded;-><init>(Landroid/content/Context;)V

    .line 1845
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->LOCATION:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->setPermissionToRequest(Lcom/callapp/contacts/manager/permission/PermissionManager;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    .line 1846
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->LOCATION:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-virtual {p2, v1, v2}, Lcom/callapp/contacts/widget/sticky/StickyPermissionView;->setPermissionToRequest(Lcom/callapp/contacts/manager/permission/PermissionManager;Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    .line 1847
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1848
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1849
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->E:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1850
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->D:Z

    :cond_0
    return-void
.end method

.method public refreshData()V
    .locals 2

    const/4 v0, 0x0

    .line 787
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d:Z

    .line 788
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$SlA90MidhMceno8BlhY6YMYAyTA;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/search/-$$Lambda$SearchContactsFragment$SlA90MidhMceno8BlhY6YMYAyTA;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method
