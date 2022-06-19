.class Lcom/callapp/contacts/activity/settings/SettingsFragment$67$1;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment$67;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsFragment$67;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$67;Landroid/preference/Preference;)V
    .locals 0

    .line 2222
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$67$1;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment$67;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$67$1;->a:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Z)V
    .locals 0

    .line 2226
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bi:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    iget-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$67$1;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment$67;

    iget p3, p3, Lcom/callapp/contacts/activity/settings/SettingsFragment$67;->a:I

    aget-object p1, p1, p3

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 2227
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$67$1;->a:Landroid/preference/Preference;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
