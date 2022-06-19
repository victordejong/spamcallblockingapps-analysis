.class Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "Preferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastCancelAllLiveData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MutableLiveData<",
        "Ljava/lang/Long;",
        ">;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private mLastCancelAllTimeMillis:J

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 117
    iput-object p1, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "last_cancel_all_time_ms"

    const-wide/16 v1, 0x0

    .line 118
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroidx/lifecycle/MutableLiveData;->onActive()V

    .line 136
    iget-object v0, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method protected onInactive()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroidx/lifecycle/MutableLiveData;->onInactive()V

    .line 142
    iget-object v0, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "last_cancel_all_time_ms"

    .line 124
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 125
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 126
    iget-wide v0, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 127
    iput-wide p1, p0, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->mLastCancelAllTimeMillis:J

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/Preferences$LastCancelAllLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
