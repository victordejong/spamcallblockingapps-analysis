.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;
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

    .line 840
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V
    .locals 2

    .line 843
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->b:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 856
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {p1, v0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->animateBottomActionBar(ZZ)V

    goto :goto_1

    .line 845
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isOrientationLandscape()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->isTopSheetClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 846
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->animateBottomActionBar(ZZ)V

    goto :goto_0

    .line 848
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->animateBottomActionBar(ZZ)V

    .line 850
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroidx/cardview/widget/CardView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 852
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroidx/cardview/widget/CardView;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    :cond_3
    :goto_1
    return-void
.end method
