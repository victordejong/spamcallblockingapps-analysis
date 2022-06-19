.class Lcom/callapp/contacts/activity/select/MutualFriendsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/MutualFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/select/MutualFriendsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/MutualFriendsActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/MutualFriendsActivity$1;->a:Lcom/callapp/contacts/activity/select/MutualFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/PersonData;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "Open profile from mutual"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/MutualFriendsActivity$1;->a:Lcom/callapp/contacts/activity/select/MutualFriendsActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/select/MutualFriendsActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/PersonData;)V

    :cond_0
    return-void
.end method
