.class public final Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008!\u0018\u0000 02\u00020\u0001:\u00010B\u0005\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0013\u001a\u00020\u000eJ\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0018\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0018\u0010!\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0004H\u0002J \u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\t2\u0006\u0010\"\u001a\u00020\u0004JH\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\t2\u0006\u0010\"\u001a\u00020\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u001e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\nH\u0002J\u001e\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010)\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\nH\u0002J\u001e\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010 \u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\nH\u0002J*\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0008\u0002\u0010\'\u001a\u00020\n2\u0008\u0008\u0002\u0010,\u001a\u00020\nH\u0002J \u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0015\u001a\u00020\u00042\u0008\u0008\u0002\u0010,\u001a\u00020\nH\u0002J\u0010\u0010.\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006*\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;",
        "",
        "()V",
        "contactPrevSearchTerm",
        "",
        "searchResults",
        "",
        "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
        "aggregateResults",
        "Landroid/util/Pair;",
        "",
        "contactsResults",
        "callLogResults",
        "clearMarkedDescription",
        "",
        "item",
        "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
        "clearMarkedName",
        "clearMarkedPhone",
        "clearSearch",
        "formatSearchTerm",
        "searchTerm",
        "hasAnyValidPhoneNumber",
        "hasSpecialChars",
        "str",
        "isBasedOnPrevSearch",
        "currSearchTerm",
        "markDescriptionIfFound",
        "desc",
        "markNameByT9IfFound",
        "numbers",
        "markNameIfFound",
        "subString",
        "markPhoneIfFound",
        "search",
        "prevSearchTerm",
        "allContacts",
        "prevResults",
        "searchDbContainsNumbers",
        "includeCallPlus",
        "searchDbContainsPhone",
        "phone",
        "searchDbContainsText",
        "searchInDB",
        "includeT9",
        "searchInList",
        "shouldSearchList",
        "splitToWords",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final c:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$Companion;

.field private static final d:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->c:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$Companion;

    .line 429
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->d:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a:Ljava/util/List;

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 107
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 439
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, p1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 108
    instance-of v4, v3, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz v4, :cond_8

    .line 111
    sget-object v4, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 112
    move-object v4, v3

    check-cast v4, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    const/4 v5, -0x1

    .line 4232
    invoke-virtual {v4, v5, v5}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->a(II)V

    .line 114
    invoke-static {v4, p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result v5

    .line 115
    invoke-static {v4, p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result v4

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    .line 117
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v4, "(this as java.lang.String).substring(startIndex)"

    const/4 v5, 0x1

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    const/4 v7, 0x0

    const-string v8, "0"

    if-eqz p2, :cond_6

    .line 120
    sget-object v9, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 6405
    :cond_3
    invoke-static {p1, v8, v7}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 133
    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    :cond_4
    move-object v4, v3

    check-cast v4, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-static {v4, v2}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->d(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result v5

    .line 136
    invoke-static {v4, p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->c(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result v4

    if-nez v5, :cond_5

    if-eqz v4, :cond_0

    .line 138
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_6
    :goto_1
    move-object v9, v3

    check-cast v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 5224
    iget-object v10, v9, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->clear()V

    .line 5405
    invoke-static {p1, v8, v7}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 124
    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_7
    invoke-static {v9, v2}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->d(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 109
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "list must be type MemoryContactItem"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_9
    return-object v0
.end method

.method private final a(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1284
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1286
    new-instance v1, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 1288
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsText$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsText$1;-><init>(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;Ljava/util/List;)V

    check-cast v2, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    if-eqz p2, :cond_0

    .line 1306
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsText$2;

    invoke-direct {p2, p0, p1, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsText$2;-><init>(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;Ljava/util/List;)V

    check-cast p2, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1323
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    .line 1324
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p3

    :cond_1
    const-string v0, "(this as java.lang.String).substring(startIndex)"

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    const/4 v2, 0x0

    const-string v3, "0"

    const/4 v4, 0x1

    if-eqz p3, :cond_6

    .line 95
    sget-object p3, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;->a(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    .line 2376
    :cond_2
    new-instance p3, Lkotlin/jvm/internal/ab$e;

    invoke-direct {p3}, Lkotlin/jvm/internal/ab$e;-><init>()V

    iput-object p1, p3, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 3405
    invoke-static {p1, v3, v2}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 4071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 2381
    :cond_3
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p3, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 2383
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 2384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 2385
    new-instance v1, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 2387
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsNumbers$1;

    invoke-direct {v2, p0, p3, p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsNumbers$1;-><init>(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lkotlin/jvm/internal/ab$e;Ljava/util/List;)V

    check-cast v2, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    if-eqz p2, :cond_5

    .line 2405
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsNumbers$2;

    invoke-direct {p2, p0, p3, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsNumbers$2;-><init>(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lkotlin/jvm/internal/ab$e;Ljava/util/List;)V

    check-cast p2, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 2423
    :cond_5
    invoke-virtual {v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    .line 2424
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 1329
    :cond_6
    :goto_0
    new-instance p3, Lkotlin/jvm/internal/ab$e;

    invoke-direct {p3}, Lkotlin/jvm/internal/ab$e;-><init>()V

    iput-object p1, p3, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 1405
    invoke-static {p1, v3, v2}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 2071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 1334
    :cond_7
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p3, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 1336
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 1337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1338
    new-instance v1, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 1340
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;

    invoke-direct {v2, p0, p3, p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;-><init>(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lkotlin/jvm/internal/ab$e;Ljava/util/List;)V

    check-cast v2, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    if-eqz p2, :cond_9

    .line 1355
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$2;

    invoke-direct {p2, p0, p3, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$2;-><init>(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lkotlin/jvm/internal/ab$e;Ljava/util/List;)V

    check-cast p2, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1370
    :cond_9
    invoke-virtual {v1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    .line 1371
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/util/List;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)Z
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)Z

    move-result p0

    return p0
.end method

.method private static a(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z
    .locals 8

    .line 8224
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->namesMap:Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 164
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 165
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 166
    check-cast p1, Ljava/lang/Iterable;

    .line 443
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->namesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 444
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const-string v7, "name"

    .line 168
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8405
    invoke-static {v6, v0, v2}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_5
    move-object v4, v5

    .line 445
    :goto_2
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 170
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->namesMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v3, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->b(II)V

    .line 172
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    :cond_6
    if-nez v5, :cond_3

    .line 9224
    :cond_7
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return v2

    :cond_8
    return v1

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentName:Ljava/lang/String;

    const-string v3, "item.unaccentName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x6

    invoke-static {v0, p1, v2, v2, v3}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->b(II)V

    return v1

    :cond_a
    return v2
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z
    .locals 0

    .line 18
    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 280
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/h/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegexUtils.deAccent(sear\u2026ase(Locale.getDefault()))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic b(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)Z
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z
    .locals 8

    .line 9228
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionMap:Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentDescription:Ljava/lang/String;

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 198
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 199
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 200
    check-cast p1, Ljava/lang/Iterable;

    .line 447
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 448
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const-string v7, "description"

    .line 202
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9405
    invoke-static {v6, v0, v2}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_5
    move-object v4, v5

    .line 449
    :goto_2
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 204
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v3, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c(II)V

    .line 206
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    :cond_6
    if-nez v5, :cond_3

    .line 10228
    :cond_7
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->descriptionHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return v2

    :cond_8
    return v1

    .line 214
    :cond_9
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->unaccentDescription:Ljava/lang/String;

    const-string v3, "item.unaccentDescription"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x6

    invoke-static {v0, p1, v2, v2, v3}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->c(II)V

    return v1

    :cond_a
    :goto_3
    return v2
.end method

.method public static final synthetic b(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z
    .locals 0

    .line 18
    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z
    .locals 6

    .line 11224
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9NoZero:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->t9Indexes:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_6

    goto/16 :goto_6

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9:Ljava/lang/String;

    const-string v3, "item.nameT9"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v0, v3, v2, v2, v4}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->b(II)V

    return v1

    .line 245
    :cond_7
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->nameT9NoZero:Ljava/lang/String;

    const-string v5, "item.nameT9NoZero"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2, v2, v4}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    if-eq v0, v3, :cond_9

    if-eqz v0, :cond_8

    .line 247
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->t9Indexes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->t9Indexes:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "item.t9Indexes[pos - 1]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v3, v1, :cond_9

    .line 248
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->t9Indexes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 249
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->t9Indexes:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-string v0, "start"

    .line 250
    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "end"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->b(II)V

    return v1

    :cond_9
    :goto_6
    return v2
.end method

.method public static final synthetic c(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z
    .locals 0

    .line 18
    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->d(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Z
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, -0x1

    .line 11232
    invoke-virtual {p0, v0, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->a(II)V

    .line 263
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->normalNumbers:Ljava/util/List;

    const-string v3, "item.normalNumbers"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 451
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const-string v7, "it"

    .line 265
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6, p1, v2, v2, v5}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v6

    if-eq v6, v0, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 264
    :goto_1
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 268
    iput-object v3, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->g:Ljava/lang/String;

    .line 269
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, p1, v2, v2, v5}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->a(II)V

    return v4

    .line 12232
    :cond_4
    invoke-virtual {p0, v0, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->a(II)V

    const-string p1, ""

    .line 274
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->g:Ljava/lang/String;

    return v2
.end method

.method public static final synthetic d(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z
    .locals 0

    .line 18
    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->c(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b:Ljava/lang/String;

    .line 7405
    invoke-static {p1, v0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public static final synthetic e(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1, v0, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 5

    .line 154
    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 441
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 155
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static f(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$splitToWords"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    check-cast p0, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/h/l;

    const-string v1, "\\s+"

    invoke-direct {v0, v1}, Lkotlin/h/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lkotlin/h/l;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->b:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a:Ljava/util/List;

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
