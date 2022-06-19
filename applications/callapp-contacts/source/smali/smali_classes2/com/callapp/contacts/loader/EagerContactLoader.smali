.class public abstract Lcom/callapp/contacts/loader/EagerContactLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/EagerContactLoader;->e:Z

    return v0
.end method

.method public final c(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/callapp/contacts/loader/EagerContactLoader;->e:Z

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/loader/EagerContactLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Z)V

    return-void
.end method

.method public final d(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/callapp/contacts/loader/EagerContactLoader;->e:Z

    .line 20
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/EagerContactLoader;->e(Lcom/callapp/contacts/loader/api/LoadContext;)V

    return-void
.end method

.method public abstract e(Lcom/callapp/contacts/loader/api/LoadContext;)V
.end method
