.class Lcom/unknownphone/callblocker/activity/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/facebook/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/h",
        "<",
        "Lcom/facebook/login/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity$1;->a:Lcom/unknownphone/callblocker/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public a(Lcom/facebook/FacebookException;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity$1;->a:Lcom/unknownphone/callblocker/activity/SettingsActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->a(Lcom/unknownphone/callblocker/activity/SettingsActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10002d

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    .line 161
    return-void
.end method

.method public a(Lcom/facebook/login/o;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity$1;->a:Lcom/unknownphone/callblocker/activity/SettingsActivity;

    invoke-static {v0, p1}, Lcom/unknownphone/callblocker/activity/SettingsActivity;->a(Lcom/unknownphone/callblocker/activity/SettingsActivity;Lcom/facebook/login/o;)V

    .line 152
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Lcom/facebook/login/o;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/activity/SettingsActivity$1;->a(Lcom/facebook/login/o;)V

    return-void
.end method
