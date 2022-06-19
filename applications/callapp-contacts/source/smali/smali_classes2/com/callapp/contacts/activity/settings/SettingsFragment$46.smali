.class Lcom/callapp/contacts/activity/settings/SettingsFragment$46;
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

    .line 1784
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$46;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1787
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1788
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$46;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/app/Activity;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
