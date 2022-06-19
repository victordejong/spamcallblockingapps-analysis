.class Lcom/telguarder/features/settings/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 78
    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$1;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 81
    iget-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$1;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {p2}, Lcom/telguarder/features/settings/SettingsActivity;->access$000(Lcom/telguarder/features/settings/SettingsActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x41700000    # 15.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    return-void
.end method
