.class Lcom/callapp/contacts/activity/fragments/ImageFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/fragments/ImageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/activity/fragments/ImageFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fragments/ImageFragment;Landroid/view/View;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/ImageFragment$1;->b:Lcom/callapp/contacts/activity/fragments/ImageFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/fragments/ImageFragment$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/ImageFragment$1;->b:Lcom/callapp/contacts/activity/fragments/ImageFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/fragments/ImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 66
    new-instance p2, Lcom/callapp/contacts/activity/fragments/ImageFragment$1$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/fragments/ImageFragment$1$1;-><init>(Lcom/callapp/contacts/activity/fragments/ImageFragment$1;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
