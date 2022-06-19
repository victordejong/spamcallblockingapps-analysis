.class final Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 5

    .line 47
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fn:Lcom/callapp/contacts/manager/preferences/prefs/LongSetPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongSetPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 48
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 49
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fq:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 51
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ai:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_1

    .line 53
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 57
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fq:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;->a(Landroid/content/Context;)V

    :cond_0
    return-void

    .line 62
    :cond_1
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 63
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0, v4}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 66
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fq:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
