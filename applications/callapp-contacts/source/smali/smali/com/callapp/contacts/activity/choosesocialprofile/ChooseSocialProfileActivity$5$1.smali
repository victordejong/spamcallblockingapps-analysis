.class Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$000(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5$1;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;->a:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->access$000(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->setCheckedImagePosition(I)V

    :cond_0
    return-void
.end method
