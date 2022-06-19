.class Lcom/callapp/contacts/activity/settings/SettingsFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field final synthetic c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field final synthetic d:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->d:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 1

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 1

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    const/4 p0, 0x1

    .line 372
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private static synthetic b(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 1

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$-jWbjdqUvScsWMyi8JPUI_Vs0FY(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    return-void
.end method

.method public static synthetic lambda$KvbgJ8lbr8q3LK1YTx777mvd-2M(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->b(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    return-void
.end method

.method public static synthetic lambda$VTIfSDQe0tRPwZC17J5lekJ_flw(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 369
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 370
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    new-instance v3, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$-jWbjdqUvScsWMyi8JPUI_Vs0FY;

    invoke-direct {v3, v1, v2}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$-jWbjdqUvScsWMyi8JPUI_Vs0FY;-><init>(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 378
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-ne p1, v0, :cond_0

    .line 379
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 381
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$KvbgJ8lbr8q3LK1YTx777mvd-2M;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$KvbgJ8lbr8q3LK1YTx777mvd-2M;-><init>(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 386
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->DROP_BOX:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-ne p1, v0, :cond_0

    .line 387
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 389
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$VTIfSDQe0tRPwZC17J5lekJ_flw;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$VTIfSDQe0tRPwZC17J5lekJ_flw;-><init>(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
