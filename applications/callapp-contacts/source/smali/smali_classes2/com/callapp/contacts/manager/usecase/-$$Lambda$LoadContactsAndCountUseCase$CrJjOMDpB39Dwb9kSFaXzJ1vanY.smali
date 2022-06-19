.class public final synthetic Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$CrJjOMDpB39Dwb9kSFaXzJ1vanY;
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

    iput-object p1, p0, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$CrJjOMDpB39Dwb9kSFaXzJ1vanY;->f$0:Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;

    return-void
.end method


# virtual methods
.method public final onResponseReady(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/manager/usecase/-$$Lambda$LoadContactsAndCountUseCase$CrJjOMDpB39Dwb9kSFaXzJ1vanY;->f$0:Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;->lambda$CrJjOMDpB39Dwb9kSFaXzJ1vanY(Lcom/callapp/contacts/manager/usecase/LoadContactsAndCountUseCase;Landroid/database/Cursor;)V

    return-void
.end method
