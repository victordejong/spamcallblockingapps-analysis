.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$10;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$10;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$10;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 582
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity$10$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$10$1;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$10;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
