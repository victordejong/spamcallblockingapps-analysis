.class final Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->setActionBarView(Z)V
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
        "com/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

.field final synthetic b:Landroidx/appcompat/app/ActionBar;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;Landroidx/appcompat/app/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2;->b:Landroidx/appcompat/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/ProgressCardView;->a()V

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/ProgressCardView;->getUpperView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
