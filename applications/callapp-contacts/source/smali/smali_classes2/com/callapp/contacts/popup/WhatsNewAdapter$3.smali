.class Lcom/callapp/contacts/popup/WhatsNewAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/WhatsNewAdapter;->a(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

.field final synthetic b:Lcom/callapp/contacts/popup/WhatsNewAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/WhatsNewAdapter;Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$3;->b:Lcom/callapp/contacts/popup/WhatsNewAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$3;->a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$3;->a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->a(Z)V

    return-void
.end method
