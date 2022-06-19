.class Lcom/callapp/contacts/widget/SimpleSearchBarFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SimpleSearchBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$7;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$7;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
