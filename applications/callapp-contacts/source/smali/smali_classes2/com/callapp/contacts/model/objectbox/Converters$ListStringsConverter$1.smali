.class Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;->convertToEntityProperty(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter$1;->this$0:Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
