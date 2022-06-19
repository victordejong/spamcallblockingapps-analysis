.class Lcom/callapp/contacts/CallAppApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/exception/DbExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$2;->this$0:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDbException(Ljava/lang/Exception;)V
    .locals 6

    .line 344
    invoke-static {}, Lio/objectbox/exception/DbExceptionListener$-CC;->cancelCurrentException()V

    .line 346
    instance-of v0, p1, Lio/objectbox/exception/DbFullException;

    if-eqz v0, :cond_1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$2;->this$0:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v1}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;)Lio/objectbox/BoxStore;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/BoxStore;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/callapp/contacts/CallAppApplication$2;->this$0:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v4}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;)Lio/objectbox/BoxStore;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v2

    .line 1280
    invoke-virtual {v2}, Lio/objectbox/a;->b()J

    move-result-wide v4

    .line 349
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 352
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Diagnose: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/CallAppApplication$2;->this$0:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v2}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;)Lio/objectbox/BoxStore;

    move-result-object v2

    .line 2007
    iget-wide v2, v2, Lio/objectbox/BoxStore;->b:J

    invoke-static {v2, v3}, Lio/objectbox/BoxStore;->nativeDiagnose(J)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    new-instance v1, Lio/objectbox/exception/DbException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    const-class p1, Lcom/callapp/contacts/CallAppApplication;

    .line 356
    invoke-static {v1}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    return-void

    .line 358
    :cond_1
    const-class v0, Lcom/callapp/contacts/CallAppApplication;

    .line 359
    invoke-static {p1}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    return-void
.end method
