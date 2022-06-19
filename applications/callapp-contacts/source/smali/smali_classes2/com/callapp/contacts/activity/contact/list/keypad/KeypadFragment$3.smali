.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$3;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$3;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$3;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$3;->a:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/widget/ImageView;)V

    return-void
.end method
