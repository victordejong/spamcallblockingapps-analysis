.class Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/Task$DoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a([Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->setResult(I)V

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$tSKPjDOdp5Lmp5BGUzmi6ar_tUQ(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;->a()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;->a:Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    new-instance v1, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$1$1$tSKPjDOdp5Lmp5BGUzmi6ar_tUQ;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$1$1$tSKPjDOdp5Lmp5BGUzmi6ar_tUQ;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
