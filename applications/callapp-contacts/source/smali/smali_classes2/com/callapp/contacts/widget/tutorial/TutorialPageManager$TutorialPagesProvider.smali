.class public interface abstract Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TutorialPagesProvider"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)I
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract getBeginningTutorialPageModel()Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;
.end method

.method public abstract getCapacity()I
.end method

.method public abstract getCurrentPageName()Ljava/lang/String;
.end method

.method public abstract getEndingTutorialPageModel()Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;
.end method

.method public abstract getTutorialPages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCurrentPagePosition(Ljava/lang/String;)V
.end method
