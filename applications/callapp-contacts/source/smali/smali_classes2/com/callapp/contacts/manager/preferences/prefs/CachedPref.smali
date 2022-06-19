.class public Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;
.super Lcom/callapp/contacts/manager/preferences/BasePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/manager/preferences/BasePref<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/manager/preferences/BasePref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/manager/preferences/BasePref<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/preferences/BasePref;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/preferences/BasePref<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p1, Lcom/callapp/contacts/manager/preferences/BasePref;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/manager/preferences/BasePref;->defaultValue:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/manager/preferences/BasePref;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->a:Lcom/callapp/contacts/manager/preferences/BasePref;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->a:Lcom/callapp/contacts/manager/preferences/BasePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/BasePref;->get()Ljava/lang/Object;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->b:Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->a:Lcom/callapp/contacts/manager/preferences/BasePref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->a:Lcom/callapp/contacts/manager/preferences/BasePref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->a:Lcom/callapp/contacts/manager/preferences/BasePref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/BasePref;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
