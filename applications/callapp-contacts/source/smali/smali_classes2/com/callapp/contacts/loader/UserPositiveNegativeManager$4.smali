.class final Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLjava/lang/String;ILjava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/objectbox/a;

.field final synthetic b:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

.field final synthetic c:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

.field final synthetic d:Lio/objectbox/a;


# direct methods
.method constructor <init>(Lio/objectbox/a;Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;Lio/objectbox/a;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;->a:Lio/objectbox/a;

    iput-object p2, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;->b:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    iput-object p3, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;->c:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    iput-object p4, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;->d:Lio/objectbox/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;->a:Lio/objectbox/a;

    iget-object v1, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;->b:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;->c:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/callapp/contacts/loader/UserPositiveNegativeManager$4;->d:Lio/objectbox/a;

    invoke-virtual {v1, v0}, Lio/objectbox/a;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
