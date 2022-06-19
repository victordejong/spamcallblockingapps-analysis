.class public interface abstract Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCallFabActionListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0016\u0010\u0007\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;",
        "",
        "onCallFabActionClicked",
        "",
        "action",
        "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
        "onCallFabActionsHidden",
        "onCallFabActionsShown",
        "actions",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract onCallFabActionClicked(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V
.end method

.method public abstract onCallFabActionsHidden()V
.end method

.method public abstract onCallFabActionsShown(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
            ">;)V"
        }
    .end annotation
.end method
