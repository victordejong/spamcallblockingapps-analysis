.class public final Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$onBindViewHolder$$inlined$apply$lambda$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/callapp/contacts/activity/contact/cards/RecorderTestHintCard$onBindViewHolder$1$1",
        "Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;",
        "onViewClicked",
        "",
        "v",
        "Landroid/view/View;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$onBindViewHolder$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;

    .line 126
    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 128
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CallRecording"

    const-string v1, "ClickRecTestSupport"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$onBindViewHolder$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->contactUsByMail()V

    return-void
.end method
