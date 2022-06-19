.class public Lcom/telguarder/features/numberLookup/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/telguarder/features/numberLookup/SearchManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addGeneralParamsToBackendRequestFromSearchQuery(Lcom/telguarder/helpers/backend/BackendRequest;Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;)V
    .locals 2

    .line 39
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->text:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->place:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->location:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->location:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/Number;)V

    .line 43
    iget-object p2, p2, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->location:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "longitude"

    invoke-virtual {p1, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p2, p2, Lcom/telguarder/features/numberLookup/SearchManager$SearchQuery;->place:Ljava/lang/String;

    const-string v0, "place"

    invoke-virtual {p1, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/numberLookup/SearchManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/numberLookup/SearchManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/telguarder/features/numberLookup/SearchManager;->mInstance:Lcom/telguarder/features/numberLookup/SearchManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/telguarder/features/numberLookup/SearchManager;

    invoke-direct {v1}, Lcom/telguarder/features/numberLookup/SearchManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/numberLookup/SearchManager;->mInstance:Lcom/telguarder/features/numberLookup/SearchManager;

    .line 34
    :cond_0
    sget-object v1, Lcom/telguarder/features/numberLookup/SearchManager;->mInstance:Lcom/telguarder/features/numberLookup/SearchManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addLogoParamToRequest(Lcom/telguarder/helpers/backend/BackendRequest;ZZI)V
    .locals 1

    const-string v0, "resizeLogo"

    .line 52
    invoke-virtual {p1, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Z)V

    const-string p2, "keepProportions"

    .line 53
    invoke-virtual {p1, p2, p3}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Z)V

    .line 54
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "logoWidth"

    invoke-virtual {p1, p3, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/Number;)V

    .line 55
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "logoHeight"

    invoke-virtual {p1, p3, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public getNumberLookupResultsForCallWidget(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Lcom/telguarder/features/numberLookup/NumberLookupResponse;",
            ">;",
            "Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/telguarder/helpers/contact/ContactUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    sget-object v0, Lcom/telguarder/features/numberLookup/SearchManager$1;->$SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupManager$CallType:[I

    invoke-virtual {p4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v1, 0x2

    const v2, 0x7f1001af

    if-eq p4, v1, :cond_2

    const/4 v1, 0x3

    if-eq p4, v1, :cond_1

    const-string p4, ""

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_3
    const p4, 0x7f1001b0

    .line 65
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 69
    :goto_0
    sget-object v1, Lcom/telguarder/helpers/backend/BackendRequest$Method;->POST:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const-string v2, "https://tgedgeapi.telguarder.com/v2/Search/NumberLookup/Mobile"

    invoke-static {p1, v2, v1, p4}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;Ljava/lang/String;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object p4

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "numbers"

    .line 72
    invoke-virtual {p4, p2, v1}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/util/List;)V

    const/high16 p2, 0x42400000    # 48.0f

    .line 73
    invoke-static {p1, p2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p4, v0, v0, p1}, Lcom/telguarder/features/numberLookup/SearchManager;->addLogoParamToRequest(Lcom/telguarder/helpers/backend/BackendRequest;ZZI)V

    .line 74
    const-class p1, Lcom/telguarder/features/numberLookup/NumberLookupResponse;

    invoke-virtual {p4, p1, p3}, Lcom/telguarder/helpers/backend/BackendRequest;->executeImmediate(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    :cond_4
    :goto_1
    return-void
.end method
