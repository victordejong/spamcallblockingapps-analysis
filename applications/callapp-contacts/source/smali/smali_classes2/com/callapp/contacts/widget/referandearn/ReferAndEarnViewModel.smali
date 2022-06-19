.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;
.super Landroidx/lifecycle/aa;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "referAndEarnLiveData",
        "Lio/objectbox/android/ObjectBoxLiveData;",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
        "getReferAndEarnLiveData",
        "referAndEarnDataBox",
        "Lio/objectbox/Box;",
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
.field private a:Lio/objectbox/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a/a<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/lifecycle/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/objectbox/a;)Lio/objectbox/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/a<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
            ">;)",
            "Lio/objectbox/a/a<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
            ">;"
        }
    .end annotation

    const-string v0, "referAndEarnDataBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;->a:Lio/objectbox/a/a;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lio/objectbox/a/a;

    invoke-virtual {p1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/objectbox/a/a;-><init>(Lio/objectbox/query/Query;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;->a:Lio/objectbox/a/a;

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;->a:Lio/objectbox/a/a;

    const-string v0, "null cannot be cast to non-null type io.objectbox.android.ObjectBoxLiveData<com.callapp.contacts.model.invites.ReferAndEarnData>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method
