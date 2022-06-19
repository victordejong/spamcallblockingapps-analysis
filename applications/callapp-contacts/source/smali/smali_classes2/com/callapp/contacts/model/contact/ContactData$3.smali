.class Lcom/callapp/contacts/model/contact/ContactData$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/contact/ContactData;->updateRating()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 1082
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData$3;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Double;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 1086
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 0

    .line 1082
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData$3;->isValid(Ljava/lang/Double;)Z

    move-result p1

    return p1
.end method
