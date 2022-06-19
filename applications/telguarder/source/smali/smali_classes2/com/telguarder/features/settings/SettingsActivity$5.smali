.class Lcom/telguarder/features/settings/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/settings/SettingsActivity;
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

    .line 184
    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$5;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 1

    .line 187
    iget-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$5;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    new-instance v0, Lcom/telguarder/features/settings/SettingsActivity$5$1;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/settings/SettingsActivity$5$1;-><init>(Lcom/telguarder/features/settings/SettingsActivity$5;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;)V

    invoke-virtual {p2, v0}, Lcom/telguarder/features/settings/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
