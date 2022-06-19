.class public Lcom/callapp/contacts/manager/usecase/LoadContactsCountUseCase;
.super Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/h/a/a;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;-><init>(Landroid/content/Context;Landroidx/h/a/a;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 1030
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Landroidx/h/b/c;Landroid/database/Cursor;)V
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->a(Landroidx/h/b/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/callapp/contacts/manager/usecase/UseCase$Callback;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->a(Lcom/callapp/contacts/manager/usecase/UseCase$Callback;)V

    return-void
.end method

.method protected getLoaderId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method getProjection()[Ljava/lang/String;
    .locals 1

    const-string v0, "contact_id"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isReady()Z
    .locals 1

    .line 12
    invoke-super {p0}, Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;->isReady()Z

    move-result v0

    return v0
.end method
