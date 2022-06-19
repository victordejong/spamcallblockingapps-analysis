.class Lcom/callapp/contacts/activity/settings/SettingsFragment$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    .line 1288
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$29;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const-string p1, "rec_settings"

    .line 1291
    invoke-static {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
