.class final Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/objectbox/a;

.field final synthetic b:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

.field final synthetic c:Lio/objectbox/a;

.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;Lio/objectbox/a;Ljava/util/List;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;->a:Lio/objectbox/a;

    iput-object p2, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;->b:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    iput-object p3, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;->c:Lio/objectbox/a;

    iput-object p4, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;->a:Lio/objectbox/a;

    iget-object v1, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;->b:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;->c:Lio/objectbox/a;

    iget-object v1, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$2;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    return-void
.end method
