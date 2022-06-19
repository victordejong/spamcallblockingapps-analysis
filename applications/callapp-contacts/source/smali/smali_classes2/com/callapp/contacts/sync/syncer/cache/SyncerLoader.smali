.class public abstract Lcom/callapp/contacts/sync/syncer/cache/SyncerLoader;
.super Lcom/callapp/contacts/loader/BaseCompoundLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 2

    .line 28
    iget-object v0, p2, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    iget-boolean v0, p0, Lcom/callapp/contacts/sync/syncer/cache/SyncerLoader;->d:Z

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/loader/SimpleContactLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Z)V

    return-void
.end method
