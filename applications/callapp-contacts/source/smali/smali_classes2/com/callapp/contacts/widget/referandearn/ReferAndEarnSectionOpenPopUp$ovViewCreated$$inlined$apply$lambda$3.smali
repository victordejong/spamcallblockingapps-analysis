.class final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$1$3"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;

.field final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ZLcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;->b:Z

    iput-object p3, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;->c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;

    iput-object p4, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 79
    iget-boolean p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;->b:Z

    if-eqz p1, :cond_0

    .line 80
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120537

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;->c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;->c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 85
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "ReferAndEarn"

    const-string v1, "ClickInviteInstallPopUp"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$3;->c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;->dismiss()V

    return-void
.end method
