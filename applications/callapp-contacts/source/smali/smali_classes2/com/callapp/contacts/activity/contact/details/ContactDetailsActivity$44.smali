.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 2796
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$44;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2799
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$44;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/manager/MainThreadTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    return-void
.end method
