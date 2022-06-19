.class final Lcom/callapp/contacts/manager/SuggestContactManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/query/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/SuggestContactManager;->a(J)Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/query/c<",
        "Lcom/callapp/contacts/model/objectbox/SuggestContactData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/callapp/contacts/manager/SuggestContactManager$2;->a:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 2

    .line 100
    check-cast p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;

    .line 1103
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->getSocialNetworkId()I

    move-result v0

    .line 1104
    iget-object v1, p0, Lcom/callapp/contacts/manager/SuggestContactManager$2;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/callapp/contacts/manager/SuggestContactManager$2;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->getProfileId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
