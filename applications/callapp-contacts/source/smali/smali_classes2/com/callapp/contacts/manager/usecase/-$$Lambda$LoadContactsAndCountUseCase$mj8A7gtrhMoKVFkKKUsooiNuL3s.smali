.class public final synthetic Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$mj8A7gtrhMoKVFkKKUsooiNuL3s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/usecase/UseCase$Callback;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$mj8A7gtrhMoKVFkKKUsooiNuL3s;->f$0:Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;

    return-void
.end method


# virtual methods
.method public final onResponseReady(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$mj8A7gtrhMoKVFkKKUsooiNuL3s;->f$0:Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->lambda$mj8A7gtrhMoKVFkKKUsooiNuL3s(Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;Ljava/lang/Integer;)V

    return-void
.end method
