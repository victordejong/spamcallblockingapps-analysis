.class Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpeedDialViewHolder"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Lcom/callapp/contacts/manager/task/Task;

.field d:Lcom/callapp/contacts/widget/ProfilePictureView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field final synthetic h:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;Landroid/view/View;)V
    .locals 3

    .line 328
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->h:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0533

    .line 329
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->a:Landroid/view/View;

    const v0, 0x7f0a0324

    .line 331
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0614

    .line 333
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->e:Landroid/widget/TextView;

    .line 334
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->c(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0648

    .line 336
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->f:Landroid/widget/TextView;

    .line 337
    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->d(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a02f3

    .line 339
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->g:Landroid/widget/ImageView;

    .line 340
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->d(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const p1, 0x7f080390

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    const p1, 0x7f0a06ed

    .line 342
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->d:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-void
.end method
