.class Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$3;
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

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$3;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$3;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;->dismiss()V

    .line 112
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/String;

    const-string v2, "Optimize contacts"

    const-string v3, "Optimize contacts popup shown"

    const-string v4, "Accept"

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a(Landroid/content/Context;)V

    return-void
.end method
