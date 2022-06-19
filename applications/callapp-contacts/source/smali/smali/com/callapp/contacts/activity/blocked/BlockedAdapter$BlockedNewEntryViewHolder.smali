.class Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/blocked/BlockedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockedNewEntryViewHolder"
.end annotation


# instance fields
.field final synthetic s:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter;Landroid/view/View;)V
    .locals 5

    .line 102
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;->s:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

    .line 103
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f060088

    .line 104
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0a00be

    .line 106
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f120238

    .line 108
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0185

    .line 111
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 112
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802bd

    invoke-direct {v2, v1, v4, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 113
    invoke-virtual {v2, v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0600f3

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1354
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 115
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 1466
    iput v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->i:F

    const/4 v1, 0x1

    .line 2371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 117
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 120
    new-instance v0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder$1;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;Lcom/callapp/contacts/activity/blocked/BlockedAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
