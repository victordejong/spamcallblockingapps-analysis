.class Lcom/callapp/contacts/activity/settings/SettingsFragment$61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V
    .locals 0

    .line 2125
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$61;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 2128
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->C:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
