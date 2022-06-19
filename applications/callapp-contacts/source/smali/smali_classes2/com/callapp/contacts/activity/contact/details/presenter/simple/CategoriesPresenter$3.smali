.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;[Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 172
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iput-object v2, v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->text:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->text:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->text:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getAvgRating()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;Lcom/callapp/contacts/model/contact/ContactData;D)V

    goto/16 :goto_0

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 195
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 200
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    aget-object v2, v3, v2

    iput-object v2, v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->text:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 202
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 205
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getMenuUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPriceRange()I

    move-result v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->shouldShowDescrptionAsBizMenu(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->text:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_8
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->text:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_9
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->setText(Ljava/lang/String;)V

    return-void
.end method
