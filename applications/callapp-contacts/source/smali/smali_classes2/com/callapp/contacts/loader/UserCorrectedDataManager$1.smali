.class final Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/objectbox/a;

.field final synthetic b:Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

.field final synthetic c:Lio/objectbox/a;

.field final synthetic d:Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;


# direct methods
.method constructor <init>(Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserCorrectedData;Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;->a:Lio/objectbox/a;

    iput-object p2, p0, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;->b:Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    iput-object p3, p0, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;->c:Lio/objectbox/a;

    iput-object p4, p0, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;->d:Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;->a:Lio/objectbox/a;

    iget-object v1, p0, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;->b:Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;->c:Lio/objectbox/a;

    iget-object v1, p0, Lcom/callapp/contacts/loader/UserCorrectedDataManager$1;->d:Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    invoke-virtual {v0, v1}, Lio/objectbox/a;->b(Ljava/lang/Object;)Z

    return-void
.end method
