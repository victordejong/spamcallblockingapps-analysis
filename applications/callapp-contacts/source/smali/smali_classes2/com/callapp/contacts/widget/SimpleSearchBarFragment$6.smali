.class Lcom/callapp/contacts/widget/SimpleSearchBarFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SimpleSearchBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$6;->b:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1251
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1253
    iget-wide v2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$6;->a:J

    sub-long v2, v0, v2

    const/4 p1, 0x0

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1256
    :goto_0
    iput-wide v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$6;->a:J

    if-nez v2, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_2

    .line 235
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_2

    .line 236
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$6;->b:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c()V

    .line 237
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$6;->b:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p2}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 238
    iget-object p2, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$6;->b:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p2}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;->b()V

    :cond_2
    return p1
.end method
