.class Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x4

    .line 343
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 347
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->e(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->a()[I

    move-result-object v1

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 350
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity$4;->c:Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->e(Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;->a()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
