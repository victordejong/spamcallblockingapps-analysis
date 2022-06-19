.class Lcom/telguarder/features/settings/SettingsActivity$8;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/settings/SettingsActivity;->setSettingsOptionListener(Landroidx/appcompat/widget/SwitchCompat;Lcom/telguarder/features/settings/SettingsOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/settings/SettingsActivity;

.field final synthetic val$item:Lcom/telguarder/features/settings/SettingsOption;

.field final synthetic val$switcher:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method constructor <init>(Lcom/telguarder/features/settings/SettingsActivity;Lcom/telguarder/features/settings/SettingsOption;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$8;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    iput-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$8;->val$item:Lcom/telguarder/features/settings/SettingsOption;

    iput-object p3, p0, Lcom/telguarder/features/settings/SettingsActivity$8;->val$switcher:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 356
    iget-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$8;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {p1}, Lcom/telguarder/features/settings/SettingsActivity;->access$500(Lcom/telguarder/features/settings/SettingsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/settings/SettingsOption;

    .line 357
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$8;->val$item:Lcom/telguarder/features/settings/SettingsOption;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-boolean v0, p2, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p2, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    .line 359
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$8;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    iget-object v1, p0, Lcom/telguarder/features/settings/SettingsActivity$8;->val$item:Lcom/telguarder/features/settings/SettingsOption;

    iget-object v1, v1, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/settings/SettingsActivity;->access$600(Lcom/telguarder/features/settings/SettingsActivity;Ljava/lang/String;Z)V

    .line 360
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$8;->val$switcher:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, p2, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 361
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$8;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {v0, p2}, Lcom/telguarder/features/settings/SettingsActivity;->access$700(Lcom/telguarder/features/settings/SettingsActivity;Lcom/telguarder/features/settings/SettingsOption;)V

    goto :goto_0

    :cond_1
    return-void
.end method
