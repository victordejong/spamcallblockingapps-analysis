.class public Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# instance fields
.field s:Lcom/callapp/contacts/activity/base/CallAppRow;

.field t:Lcom/callapp/contacts/widget/ProfilePictureView;

.field u:Landroid/widget/TextView;

.field v:Lcom/callapp/contacts/widget/CallAppRadioButton;

.field w:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 5

    .line 31
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f060088

    .line 33
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->s:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v1, 0x7f0a06ed

    .line 36
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->t:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v1, 0x7f0a0922

    .line 37
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->u:Landroid/widget/TextView;

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a0717

    .line 39
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/CallAppRadioButton;

    iput-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->v:Lcom/callapp/contacts/widget/CallAppRadioButton;

    const v1, 0x7f0a0332

    .line 40
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0331

    .line 41
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0330

    .line 42
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->w:Landroid/view/View;

    .line 43
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v2, 0x7f1202ba

    .line 44
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f060026

    .line 47
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setBackgroundColor(I)V

    return-void
.end method
