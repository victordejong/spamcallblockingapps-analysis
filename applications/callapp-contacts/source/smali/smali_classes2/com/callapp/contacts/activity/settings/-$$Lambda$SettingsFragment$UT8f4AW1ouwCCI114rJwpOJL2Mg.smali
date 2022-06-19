.class public final synthetic Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/settings/SettingsFragment;

.field public final synthetic f$1:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field public final synthetic f$2:Landroid/preference/CheckBoxPreference;

.field public final synthetic f$3:Landroid/preference/CheckBoxPreference;

.field public final synthetic f$4:Landroid/preference/PreferenceCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$0:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$1:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$2:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$3:Landroid/preference/CheckBoxPreference;

    iput-object p5, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$4:Landroid/preference/PreferenceCategory;

    return-void
.end method


# virtual methods
.method public final popupDone(Z)V
    .locals 6

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$0:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$1:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$2:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$3:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$UT8f4AW1ouwCCI114rJwpOJL2Mg;->f$4:Landroid/preference/PreferenceCategory;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->lambda$UT8f4AW1ouwCCI114rJwpOJL2Mg(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceCategory;Z)V

    return-void
.end method
