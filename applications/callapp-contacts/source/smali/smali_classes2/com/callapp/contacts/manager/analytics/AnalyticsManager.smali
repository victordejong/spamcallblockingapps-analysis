.class public Lcom/callapp/contacts/manager/analytics/AnalyticsManager;
.super Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;
.source "SourceFile"


# instance fields
.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager$1;->a:[I

    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "Contact Details"

    return-object p0

    :cond_1
    const-string p0, "Contact Details Overlay"

    return-object p0

    :cond_2
    const-string p0, "Clipboard Auto Search Overlay"

    return-object p0

    :cond_3
    const-string p0, "Incoming Sms Overlay"

    return-object p0
.end method

.method public static get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;
    .locals 1

    .line 33
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getAnalyticsManager()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 207
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V
    .locals 8

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 228
    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 10

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 104
    invoke-virtual/range {v3 .. v8}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    new-array v9, v2, [Ljava/lang/String;

    .line 105
    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    const-class v0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "REPORTING ANALYTICS EVENT EXPLICIT: category=%s, action=%s, label=%s, value=%f"

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    .line 95
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    const-class v0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x4

    aput-object p6, v1, p1

    const-string p1, "REPORTING ANALYTICS PURCHASE: action=%s, sku=%s, type=%s, price=%f, currencyCode=%s"

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    .locals 9

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    .line 72
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    array-length v0, p6

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, p6, v3

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 80
    :cond_1
    const-class p6, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "REPORTING ANALYTICS EVENT: category=%s, action=%s, label=%s, value=%f, extras: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {p6, v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 3

    .line 112
    sget-object v0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager$1;->a:[I

    invoke-interface {p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    const-string v1, "Long Click"

    const-string v2, "Clicked"

    if-eq p3, v0, :cond_6

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string p2, "Contact Details"

    .line 123
    invoke-virtual {p0, p2, p1, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string p2, "Contact Details Overlay"

    .line 120
    invoke-virtual {p0, p2, p1, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    const-string p2, "Clipboard Auto Search Overlay"

    .line 117
    invoke-virtual {p0, p2, p1, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v2

    :goto_4
    const-string p2, "Incoming Sms Overlay"

    .line 114
    invoke-virtual {p0, p2, p1, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    new-instance v1, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 167
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (unique)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    long-to-double v7, p4

    new-array v9, v2, [Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 170
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public final b()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 200
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 86
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    const-class v0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "REPORTING ANALYTICS VIEW: view=%s"

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    new-instance v1, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 153
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " u"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 156
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 214
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 221
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 58
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 235
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "analytics_view_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_unique"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 184
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 242
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 249
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 263
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final i()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;-><init>()V

    .line 43
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->init()V

    .line 44
    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/callapp/contacts/manager/analytics/AppsFlyerAnalyticsManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/analytics/AppsFlyerAnalyticsManager;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/analytics/AppsFlyerAnalyticsManager;->init()V

    .line 48
    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;-><init>()V

    .line 51
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->init()V

    .line 52
    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;

    .line 65
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method
