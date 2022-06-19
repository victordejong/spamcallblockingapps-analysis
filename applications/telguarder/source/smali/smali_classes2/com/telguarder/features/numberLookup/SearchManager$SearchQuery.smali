.class public Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;
.super Ljava/lang/Object;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/SearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchQuery"
.end annotation


# instance fields
.field public location:Lcom/google/android/gms/maps/model/LatLng;

.field public page:I

.field public pageSize:I

.field public place:Ljava/lang/String;

.field public sortType:Lcom/telguarder/features/numberLookup/SortType;

.field public text:Ljava/lang/String;

.field public type:Lcom/telguarder/features/numberLookup/ActorType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 88
    iput v0, p0, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->pageSize:I

    const/4 v0, 0x1

    .line 89
    iput v0, p0, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->page:I

    .line 90
    sget-object v0, Lcom/telguarder/features/numberLookup/SortType;->RELEVANCE:Lcom/telguarder/features/numberLookup/SortType;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->sortType:Lcom/telguarder/features/numberLookup/SortType;

    return-void
.end method

.method public static searchQueryOf(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;
    .locals 1

    .line 94
    invoke-static {p0}, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->validateSearchKeyword(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;

    invoke-direct {v0}, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;-><init>()V

    .line 96
    iput-object p0, v0, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static searchQueryOf(Ljava/lang/String;Lcom/telguarder/features/numberLookup/ActorType;I)Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;
    .locals 1

    .line 107
    invoke-static {p0, p1, p2}, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->validateSearchArguments(Ljava/lang/String;Lcom/telguarder/features/numberLookup/ActorType;I)V

    .line 108
    new-instance v0, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;

    invoke-direct {v0}, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;-><init>()V

    .line 109
    iput-object p0, v0, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->text:Ljava/lang/String;

    .line 110
    iput-object p1, v0, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->type:Lcom/telguarder/features/numberLookup/ActorType;

    .line 111
    iput p2, v0, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->page:I

    return-object v0
.end method

.method private static validateSearchArguments(Ljava/lang/String;Lcom/telguarder/features/numberLookup/ActorType;I)V
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->validateSearchKeyword(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-lt p2, p0, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid search results page!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid search actorType!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateSearchKeyword(Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid search keyword!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
