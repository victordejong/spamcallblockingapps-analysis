.class Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;JLjava/util/Set;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    iput-wide p2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->a:J

    iput-object p4, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 173
    iget-wide v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->a:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-wide/16 v4, 0x2

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->b(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->c(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->d(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    invoke-static {}, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager;->a()V

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->b:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->b(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->d(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->c(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->b:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->a(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;Ljava/util/Set;)V

    .line 190
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-double v8, v0

    new-array v10, v3, [Ljava/lang/String;

    const-string v5, "Optimize contacts"

    const-string v6, "Identify contacts screen shown"

    const-string v7, "Number of contacts to optimize"

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void

    .line 182
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$3;->c:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;->e(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity;)V

    .line 183
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const-wide/16 v8, 0x0

    new-array v10, v3, [Ljava/lang/String;

    const-string v5, "Optimize contacts"

    const-string v6, "Identify contacts screen shown"

    const-string v7, "Number of contacts to optimize"

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method
