.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/AudioRouteSelectorDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 1317
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$23;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1320
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$23;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->d()Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3202(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;)Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    .line 1321
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$23;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$23;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
