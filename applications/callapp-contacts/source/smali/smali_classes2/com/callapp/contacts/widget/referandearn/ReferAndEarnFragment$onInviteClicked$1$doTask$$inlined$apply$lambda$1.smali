.class final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1$doTask$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1$doTask$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1$doTask$$inlined$apply$lambda$1;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1$doTask$$inlined$apply$lambda$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 94
    sget-object v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->g:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1$doTask$$inlined$apply$lambda$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x0

    const-string v2, "ref"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;->a(Lcom/callapp/contacts/model/contact/ContactData;ILjava/lang/String;I)Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1$doTask$$inlined$apply$lambda$1;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->g:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
