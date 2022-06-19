.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

.field final synthetic b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    iput-object p3, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$scrollToNextTest$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->a(I)V

    return-void
.end method
