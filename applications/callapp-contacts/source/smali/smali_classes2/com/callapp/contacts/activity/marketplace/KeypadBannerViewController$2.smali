.class Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$2;->a:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$2;->a:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->getListener()Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 53
    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;->e()V

    :cond_0
    return-void
.end method
