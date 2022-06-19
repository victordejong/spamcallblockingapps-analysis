.class Lcom/callapp/contacts/CallAppApplication$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/query/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication$19;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/query/c<",
        "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/CallAppApplication$19;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication$19;Ljava/util/List;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$19$1;->b:Lcom/callapp/contacts/CallAppApplication$19;

    iput-object p2, p0, Lcom/callapp/contacts/CallAppApplication$19$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 1

    .line 973
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 1976
    iget-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    .line 1977
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$19$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
