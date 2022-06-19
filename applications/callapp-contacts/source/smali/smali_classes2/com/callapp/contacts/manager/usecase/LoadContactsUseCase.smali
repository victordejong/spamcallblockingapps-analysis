.class public Lcom/callapp/contacts/manager/usecase/LoadContactsUseCase;
.super Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/usecase/BaseLoadContactsUseCase<",
        "Landroid/database/Cursor;",
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
.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

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

    const/4 v0, 0x1

    return v0
.end method

.method getProjection()[Ljava/lang/String;
    .locals 9

    const-string v0, "contact_id"

    const-string v1, "display_name"

    const-string v2, "data1"

    const-string v3, "photo_uri"

    const-string v4, "data2"

    const-string v5, "lookup"

    const-string v6, "data1"

    const-string v7, "mimetype"

    const-string v8, "starred"

    .line 20
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

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
