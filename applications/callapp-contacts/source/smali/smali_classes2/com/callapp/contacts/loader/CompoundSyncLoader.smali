.class public Lcom/callapp/contacts/loader/CompoundSyncLoader;
.super Lcom/callapp/contacts/loader/BaseCompoundLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 5

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    iget-boolean v2, p0, Lcom/callapp/contacts/loader/CompoundSyncLoader;->d:Z

    invoke-virtual {p1, p2, v2}, Lcom/callapp/contacts/loader/SimpleContactLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Z)V

    .line 12
    const-class p2, Lcom/callapp/contacts/loader/CompoundSyncLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".load() took "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
