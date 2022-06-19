.class public final Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/select/BasePersonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ViewHolder"
.end annotation


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field protected g:Lcom/callapp/contacts/widget/ProfilePictureView;

.field protected h:Lcom/callapp/contacts/widget/ContactItemView;

.field final synthetic i:Lcom/callapp/contacts/activity/select/BasePersonAdapter;


# direct methods
.method protected constructor <init>(Lcom/callapp/contacts/activity/select/BasePersonAdapter;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->i:Lcom/callapp/contacts/activity/select/BasePersonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 144
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->c:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->f:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->g:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1449
    iput-boolean p1, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 2371
    iput-boolean p1, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 147
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder;->g:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    return-void
.end method
