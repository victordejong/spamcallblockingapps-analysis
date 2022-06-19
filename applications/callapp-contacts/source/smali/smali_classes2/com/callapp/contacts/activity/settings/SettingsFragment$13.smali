.class Lcom/callapp/contacts/activity/settings/SettingsFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 679
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$13;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 682
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$13;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 685
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$13;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$13;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget v4, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 686
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$13;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    const/4 v1, -0x1

    iput v1, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c:I

    :cond_0
    return-void
.end method
