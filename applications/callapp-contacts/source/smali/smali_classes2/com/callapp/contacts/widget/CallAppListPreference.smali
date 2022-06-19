.class public Lcom/callapp/contacts/widget/CallAppListPreference;
.super Landroid/preference/ListPreference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/CallAppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .line 23
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-virtual {v0, v2, v1, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CallAppListPreference;->notifyChanged()V

    return-void
.end method
