.class Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishViewContainer(Z)V

    return-void
.end method
