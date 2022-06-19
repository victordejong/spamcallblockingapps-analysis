.class public final Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "CONTACT_THRESHOLD",
        "",
        "HALF_DAY",
        "",
        "ROUNDED_FORMAT",
        "",
        "contactsWithOrganizationData",
        "",
        "Lcom/callapp/contacts/model/UpdateContactItem;",
        "ratio",
        "",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "hasValidDataInDb",
        "",
        "onInvalidDataInDB",
        "",
        "onValidDataInDB",
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
.field public static final a:Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

.field private static final g:Ljava/lang/String;


# instance fields
.field private final b:D

.field private final c:Ljava/lang/String;

.field private final d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/UpdateContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

    const-string v0, "job_update_contacts_description_tag"

    .line 79
    sput-object v0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const-wide p1, 0x3feccccccccccccdL    # 0.9

    .line 22
    iput-wide p1, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->b:D

    const-string p1, "%.2f"

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->c:Ljava/lang/String;

    const-wide/16 p1, 0x2d0

    .line 24
    iput-wide p1, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->d:J

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->e:Ljava/util/List;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    iput p1, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->f:F

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->g:Ljava/lang/String;

    return-object v0
.end method

.method private final b()V
    .locals 4

    .line 58
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contactLookup Description Data Ratio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->f:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Migration process"

    const-string v3, "UpdateContactsDescriptionWorker completed"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final c()V
    .locals 4

    .line 63
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contactLookup Description Data Ratio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->f:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Migration process"

    const-string v3, "UpdateContactsDescriptionWorker invalid data "

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final d()Z
    .locals 6

    .line 67
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->getAllContactsWithOrganizationData()Ljava/util/List;

    move-result-object v0

    const-string v1, "MigrationUtils.getAllCon\u2026ctsWithOrganizationData()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->e:Ljava/util/List;

    .line 68
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 69
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v2, "CallAppApplication.get()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v2, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {v0, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->descriptionMap:Lio/objectbox/g;

    invoke-virtual {v0, v2}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    const-string v2, "CallAppApplication.get()\u2026iptionMap).build().find()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 100
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    .line 69
    iget-object v4, v4, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->descriptionMap:Ljava/util/Map;

    const-string v5, "it.descriptionMap"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 99
    check-cast v2, Ljava/util/Collection;

    .line 69
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-float v0, v0

    .line 70
    iget-object v2, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->f:F

    float-to-double v2, v0

    .line 71
    iget-wide v4, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->b:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_3
    const-class v0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;

    const-string v2, "no contacts with organization data"

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 5

    .line 30
    const-class v0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;

    const-string v1, "UpdateContactsDescriptionWorker doWork"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 32
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->b()V

    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->c()V

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/util/MigrationUtils;->a(Ljava/util/List;)V

    .line 38
    invoke-direct {p0}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->b()V

    goto :goto_0

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->c()V

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->f:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(this, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->hf:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 44
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hf:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

    iget-wide v1, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Migration process"

    const-string v2, "Error UpdateContactsDescriptionWorker"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

    iget-wide v1, p0, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;->a(J)V

    .line 1334
    :cond_2
    :goto_0
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 54
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
