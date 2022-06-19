.class public final Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
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
.field public static final a:Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;

.field private static final b:Ljava/lang/String;

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->a:Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;

    const-string v0, "job_not_answered_tag"

    .line 30
    sput-object v0, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->b:Ljava/lang/String;

    const/16 v0, 0xf

    .line 31
    sput v0, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 25
    sget v0, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->c:I

    return v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 6

    .line 50
    sget v0, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->c:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    .line 51
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gC:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Prefs.enableAutomationTestFlow.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0xea60

    .line 55
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/16 v0, 0x28

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->af:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const-string v2, "lastFifteenMinList"

    .line 59
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    .line 59
    iget-object v4, v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {v4, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 61
    invoke-static {v2}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;)V

    .line 1334
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
