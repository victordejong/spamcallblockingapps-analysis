.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showNoteBannerLayout()V
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

    .line 1470
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1473
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const v1, 0x7f0a0637

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2202(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroidx/cardview/widget/CardView;)Landroidx/cardview/widget/CardView;

    .line 1475
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const v1, 0x7f0a063a

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f060026

    .line 1476
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1477
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const v1, 0x7f0a0634

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0601ec

    .line 1478
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f120084

    .line 1479
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    const v2, 0x7f0a0169

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1481
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v2

    const v3, 0x7f0a0176

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1482
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1483
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$2;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    return-void
.end method
