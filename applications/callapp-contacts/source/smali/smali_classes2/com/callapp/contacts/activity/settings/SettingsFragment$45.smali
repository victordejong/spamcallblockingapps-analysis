.class Lcom/callapp/contacts/activity/settings/SettingsFragment$45;
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

    .line 1763
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$45;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 1767
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1768
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$45;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 1769
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$45;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/LocaleUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1770
    check-cast p2, Ljava/lang/String;

    .line 1771
    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 1775
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$45;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/LocaleUtils;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return v0
.end method
