.class public interface abstract Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addToMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z
.end method

.method public abstract getData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
.end method

.method public abstract isInExpandMode()Z
.end method

.method public abstract onAnimatorEndListener()V
.end method

.method public abstract removeFromMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
.end method

.method public abstract shouldShowCardBackground()Z
.end method

.method public abstract updateHeaderTitle(Ljava/lang/String;)V
.end method
