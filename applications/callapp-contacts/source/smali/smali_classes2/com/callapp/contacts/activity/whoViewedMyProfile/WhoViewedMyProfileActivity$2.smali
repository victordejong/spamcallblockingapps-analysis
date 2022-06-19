.class Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$2;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 311
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$2;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "PLAN_PAGE_SOURCE"

    const-string v1, "whoViewedMyProfile"

    .line 312
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$2;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
