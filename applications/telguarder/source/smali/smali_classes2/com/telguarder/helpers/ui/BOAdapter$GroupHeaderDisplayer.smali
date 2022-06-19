.class public interface abstract Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;
.super Ljava/lang/Object;
.source "BOAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/BOAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GroupHeaderDisplayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getHeaderDisplayed(Landroid/view/View;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TE;I)V"
        }
    .end annotation
.end method

.method public abstract getHeaderLayoutId()I
.end method

.method public abstract isHeaderDisplayed(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation
.end method
