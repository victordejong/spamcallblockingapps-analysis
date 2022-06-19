.class Lcom/callapp/contacts/widget/tutorial/TutorialViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->a(Landroid/app/Activity;Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$2;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Widget clicked"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$2;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->a(Landroid/app/Activity;)V

    return-void
.end method
