.class Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$4;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$4;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;->dismiss()V

    .line 124
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 p1, 0x0

    new-array v6, p1, [Ljava/lang/String;

    const-string v1, "Optimize contacts"

    const-string v2, "Optimize contacts popup shown"

    const-string v3, "Decline"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method
