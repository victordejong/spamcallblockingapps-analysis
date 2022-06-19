.class public final synthetic Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$kmkUIikSDFWynPCRFzu3eAofEno;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/settings/SettingsFragment;

.field public final synthetic f$1:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$kmkUIikSDFWynPCRFzu3eAofEno;->f$0:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$kmkUIikSDFWynPCRFzu3eAofEno;->f$1:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$kmkUIikSDFWynPCRFzu3eAofEno;->f$0:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$kmkUIikSDFWynPCRFzu3eAofEno;->f$1:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-static {v0, v1, p1, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->lambda$kmkUIikSDFWynPCRFzu3eAofEno(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
