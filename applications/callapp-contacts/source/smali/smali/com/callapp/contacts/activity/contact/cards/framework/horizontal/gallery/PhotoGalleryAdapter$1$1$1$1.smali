.class Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1$1;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1$1;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PhotoGalleryAdapter$1;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    return-void
.end method
