.class Lcom/telguarder/features/settings/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 162
    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$4;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->setMessageBoxOnSettingsScreensNotNeeded()V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/16 p2, 0x8

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$4;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-virtual {p1, p2, v0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->openCustomSettingsPage(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    const p2, 0x3f333333    # 0.7f

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return v0
.end method
