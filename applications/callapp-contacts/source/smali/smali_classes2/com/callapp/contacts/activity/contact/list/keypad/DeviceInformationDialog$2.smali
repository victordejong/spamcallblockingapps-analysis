.class Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;->c:Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;->a:Landroid/widget/ImageView;

    .line 166
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
