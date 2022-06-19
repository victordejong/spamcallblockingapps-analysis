.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 318
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$7;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$000(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
