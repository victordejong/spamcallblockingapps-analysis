.class public abstract Lcom/callapp/contacts/manager/preferences/BasePref;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/manager/preferences/BasePref;->key:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/callapp/contacts/manager/preferences/BasePref;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPrefsStore()Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/preferences/BasePref;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/BasePref;->defaultValue:Ljava/lang/Object;

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/BasePref;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/BasePref;->defaultValue:Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final isNotNull()Z
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/BasePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isNull()Z
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/BasePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPrefsStore()Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/preferences/BasePref;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
