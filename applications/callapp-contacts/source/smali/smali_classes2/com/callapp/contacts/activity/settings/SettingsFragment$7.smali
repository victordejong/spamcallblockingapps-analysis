.class Lcom/callapp/contacts/activity/settings/SettingsFragment$7;
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

    .line 329
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->d:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 1

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    const/4 p0, 0x1

    .line 335
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private static synthetic b(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$GxqrGX_7w2NdKoKJKBeiFS4CU2I(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    return-void
.end method

.method public static synthetic lambda$I72JbC3R1K4UBmNCnOs9V1_PRn4(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->b(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    return-void
.end method

.method public static synthetic lambda$RrjtO-YHMyHlNccT2fHZs6_o_ds(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 332
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->GOOGLE_DRIVE:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 333
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->b:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    new-instance v3, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$7$GxqrGX_7w2NdKoKJKBeiFS4CU2I;

    invoke-direct {v3, v1, v2}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$7$GxqrGX_7w2NdKoKJKBeiFS4CU2I;-><init>(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 342
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->GOOGLE_DRIVE:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-ne p1, v0, :cond_0

    .line 343
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 345
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$7$I72JbC3R1K4UBmNCnOs9V1_PRn4;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$7$I72JbC3R1K4UBmNCnOs9V1_PRn4;-><init>(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 350
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->GOOGLE_DRIVE:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-ne p1, v0, :cond_0

    .line 351
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 353
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$7;->c:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$7$RrjtO-YHMyHlNccT2fHZs6_o_ds;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$7$RrjtO-YHMyHlNccT2fHZs6_o_ds;-><init>(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
