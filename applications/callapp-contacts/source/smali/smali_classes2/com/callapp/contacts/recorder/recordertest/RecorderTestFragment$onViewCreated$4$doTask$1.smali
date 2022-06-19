.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4$doTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->doTask()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4$doTask$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4$doTask$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    new-instance v1, Landroidx/lifecycle/ab;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4$doTask$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;

    iget-object v2, v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    check-cast v2, Landroidx/lifecycle/ad;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ad;)V

    const-class v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ab;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object v1

    const-string v2, "ViewModelProvider(this@R\u2026estViewModel::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;

    invoke-static {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;)V

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4$doTask$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->c(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->getRecorderTestBox()Lio/objectbox/a;

    move-result-object v1

    const-string v2, "recorderTestDataBox"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    iget-object v2, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;->a:Lio/objectbox/a/a;

    if-nez v2, :cond_0

    .line 1013
    new-instance v2, Lio/objectbox/a/a;

    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-direct {v2, v1}, Lio/objectbox/a/a;-><init>(Lio/objectbox/query/Query;)V

    iput-object v2, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;->a:Lio/objectbox/a/a;

    .line 1015
    :cond_0
    iget-object v0, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestViewModel;->a:Lio/objectbox/a/a;

    const-string v1, "null cannot be cast to non-null type io.objectbox.android.ObjectBoxLiveData<com.callapp.contacts.recorder.recordertest.RecorderTestData>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4$doTask$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;

    iget-object v1, v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getViewLifecycleOwner()Landroidx/lifecycle/p;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4$doTask$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;

    iget-object v2, v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    check-cast v2, Landroidx/lifecycle/u;

    invoke-virtual {v0, v1, v2}, Lio/objectbox/a/a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    return-void
.end method
