.class Lcom/callapp/contacts/manager/ContactLoaderManager$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;Z)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/Pair;

.field final synthetic b:Lcom/callapp/contacts/manager/ContactLoaderManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/ContactLoaderManager;Landroid/util/Pair;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$3;->b:Lcom/callapp/contacts/manager/ContactLoaderManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$3;->a:Landroid/util/Pair;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$3;->b:Lcom/callapp/contacts/manager/ContactLoaderManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$3;->a:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager$3;->a:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-void
.end method
