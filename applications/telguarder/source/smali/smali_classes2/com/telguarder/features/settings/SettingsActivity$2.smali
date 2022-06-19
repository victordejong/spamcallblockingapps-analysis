.class Lcom/telguarder/features/settings/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/settings/SettingsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/settings/SettingsActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$2;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 127
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$2;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    const-class v1, Lcom/telguarder/features/settings/AppInfoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$2;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-virtual {v0, p1}, Lcom/telguarder/features/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
