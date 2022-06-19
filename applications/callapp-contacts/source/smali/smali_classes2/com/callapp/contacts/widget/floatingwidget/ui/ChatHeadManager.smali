.class public interface abstract Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(FF)D
.end method

.method public abstract a(DD)V
.end method

.method public abstract a(II)V
.end method

.method public abstract a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;)V
.end method

.method public abstract a(Ljava/lang/Class;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/Serializable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract b(FF)D
.end method

.method public abstract b(I)I
.end method

.method public abstract b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract c(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I
.end method

.method public abstract d(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract getActiveArrangement()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;
.end method

.method public abstract getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;
.end method

.method public abstract getChatHeads()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method public abstract getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;
.end method

.method public abstract getMaxHeight()I
.end method

.method public abstract getMaxWidth()I
.end method

.method public abstract getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;
.end method

.method public abstract h()V
.end method

.method public abstract i()Z
.end method

.method public abstract j()Z
.end method

.method public abstract setViewAdapter(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;)V
.end method
