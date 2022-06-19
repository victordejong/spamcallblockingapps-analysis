.class Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->f:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;

    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->a:Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    iput-boolean p3, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->b:Z

    iput-object p4, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->d:Z

    iput-object p6, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->f:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->a:Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->a(Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->b:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->f:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->c(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->d:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->f:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->d(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1449
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 2371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 216
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    :cond_1
    return-void
.end method
