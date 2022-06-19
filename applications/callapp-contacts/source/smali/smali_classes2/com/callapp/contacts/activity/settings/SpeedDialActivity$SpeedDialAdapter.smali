.class final Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SpeedDialAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/LayoutInflater;

.field final b:I

.field final synthetic c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    .line 148
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p1, 0x7f060088

    .line 145
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->b:I

    const-string p1, "layout_inflater"

    .line 149
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->a:Landroid/view/LayoutInflater;

    const p1, 0x7f120682

    .line 150
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 156
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 159
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f0d017d

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 160
    new-instance p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-direct {p3, v2, p2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;-><init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;Landroid/view/View;)V

    .line 161
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;

    .line 167
    :goto_0
    iget-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->c:Lcom/callapp/contacts/manager/task/Task;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->c:Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    :cond_1
    if-eqz v0, :cond_3

    .line 172
    iget-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->c(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->d:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    iget-object v1, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->d:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v3, 0x7f0802b9

    invoke-direct {v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    iget v3, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->b:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1371
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 2307
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 177
    iget-object v1, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->d:Lcom/callapp/contacts/widget/ProfilePictureView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->b(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setBackgroundColor(I)V

    .line 179
    iget-object v1, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->e:Landroid/widget/TextView;

    iget v2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v1, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v1, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 184
    :cond_2
    new-instance v2, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;-><init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)V

    .line 205
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    move-result-object v2

    iput-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->c:Lcom/callapp/contacts/manager/task/Task;

    .line 207
    iget-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->b(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->c(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v2, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    :cond_3
    :goto_1
    iget-object v1, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->g:Landroid/widget/ImageView;

    new-instance v2, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$2;-><init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p1, p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->a:Landroid/view/View;

    new-instance p3, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;

    invoke-direct {p3, p0, v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;-><init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
