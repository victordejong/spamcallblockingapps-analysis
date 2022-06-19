.class final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$onCreate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->onCreate(Landroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$onCreate$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$onCreate$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 90
    sget-object p1, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->g:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;

    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$onCreate$3;->b:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;->a(Lcom/callapp/contacts/model/contact/ContactData;ILjava/lang/String;I)Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$onCreate$3;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->g:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "ReferAndEarn"

    const-string v1, "ClickMoreGifts"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
