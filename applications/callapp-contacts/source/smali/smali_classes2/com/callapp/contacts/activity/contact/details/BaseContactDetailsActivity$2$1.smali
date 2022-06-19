.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->access$000(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$p8sSlJD0GacdNlctZCrmpWMxrOc(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 199
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1208
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;

    iget-object p3, p3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-object p3, p3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x14

    .line 1209
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1210
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    new-instance p3, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$2$1$p8sSlJD0GacdNlctZCrmpWMxrOc;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$2$1$p8sSlJD0GacdNlctZCrmpWMxrOc;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2$1;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
