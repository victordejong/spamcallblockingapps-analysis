.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$6;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 490
    iget-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$6;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    .line 1169
    iget-object p1, p1, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c()V

    const/4 p1, 0x0

    return p1
.end method
