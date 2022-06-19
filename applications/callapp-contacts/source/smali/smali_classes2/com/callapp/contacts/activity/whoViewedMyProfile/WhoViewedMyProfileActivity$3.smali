.class Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$3;
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

    .line 317
    iput-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$3;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 320
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$3;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Landroid/app/Activity;Z)V

    return-void
.end method
