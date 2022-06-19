.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/OutcomeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;->c:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iput-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x7

    .line 980
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;->c:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;->c:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object p1, p1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->a:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz p1, :cond_0

    .line 981
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;->c:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    iget-object p1, p1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->d:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6$2;->b:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$1900(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
