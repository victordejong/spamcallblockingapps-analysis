.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5$1;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/e/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/e/b/d<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 315
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5$1;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
