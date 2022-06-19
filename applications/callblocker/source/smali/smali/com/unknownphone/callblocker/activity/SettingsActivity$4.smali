.class Lcom/unknownphone/callblocker/activity/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/SettingsActivity;->a(Lcom/facebook/login/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/a;

.field final synthetic b:Lcom/unknownphone/callblocker/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/SettingsActivity;Lcom/google/android/material/bottomsheet/a;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity$4;->b:Lcom/unknownphone/callblocker/activity/SettingsActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity$4;->a:Lcom/google/android/material/bottomsheet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/SettingsActivity$4;->a:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    goto :goto_0
.end method
