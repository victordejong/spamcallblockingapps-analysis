.class Lcom/telguarder/features/settings/SettingsActivity$3;
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

    .line 139
    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$3;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 143
    iget-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$3;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "https://api.advista.no/docs/%s/privacy_policy"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/telguarder/features/settings/SettingsActivity;->access$102(Lcom/telguarder/features/settings/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$3;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {p2}, Lcom/telguarder/features/settings/SettingsActivity;->access$100(Lcom/telguarder/features/settings/SettingsActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 145
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 146
    iget-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$3;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {p1}, Lcom/telguarder/features/settings/SettingsActivity;->access$200(Lcom/telguarder/features/settings/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$3;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    const v0, 0x7f050127

    invoke-static {p2, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$3;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {p2}, Lcom/telguarder/features/settings/SettingsActivity;->access$100(Lcom/telguarder/features/settings/SettingsActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/settings/SettingsActivity$3;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {v1}, Lcom/telguarder/features/settings/SettingsActivity;->access$300(Lcom/telguarder/features/settings/SettingsActivity;)Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->preloadWebView(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_1

    .line 150
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object p2

    iget-object p2, p2, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    sget-object v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->LOADING:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    if-eq p2, v0, :cond_1

    .line 151
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 152
    iget-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$3;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {p1}, Lcom/telguarder/features/settings/SettingsActivity;->access$200(Lcom/telguarder/features/settings/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$3;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    const v0, 0x7f050041

    invoke-static {p2, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return v2
.end method
