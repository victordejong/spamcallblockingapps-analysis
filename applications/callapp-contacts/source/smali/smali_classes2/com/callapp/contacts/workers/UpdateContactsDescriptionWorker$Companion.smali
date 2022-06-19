.class public final Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "scheduleJob",
        "",
        "minDelay",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;->a(J)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    .line 82
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 84
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/u;->a(Ljava/lang/String;)Landroidx/work/n;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(\u2026).cancelAllWorkByTag(TAG)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/work/n;->a()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    const-class v1, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 99
    :goto_0
    new-instance v0, Landroidx/work/m$a;

    const-class v1, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;

    invoke-direct {v0, v1}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 89
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object v0

    const-string v1, "OneTimeWorkRequestBuilde\u2026tionWorker>().addTag(TAG)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/m$a;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 91
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/work/m$a;->a(JLjava/util/concurrent/TimeUnit;)Landroidx/work/v$a;

    move-result-object p1

    const-string p2, "workRequestBuilder.setIn\u2026nDelay, TimeUnit.MINUTES)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/work/m$a;

    .line 94
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2184
    invoke-static {p1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object p1

    .line 94
    invoke-virtual {v0}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    :cond_1
    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-static {}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
