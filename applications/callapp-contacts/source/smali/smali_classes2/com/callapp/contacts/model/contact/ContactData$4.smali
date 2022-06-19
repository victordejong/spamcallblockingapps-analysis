.class Lcom/callapp/contacts/model/contact/ContactData$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback;


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
        "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData$4;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljava/lang/Double;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData$4;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->access$202(Lcom/callapp/contacts/model/contact/ContactData;D)D

    .line 1100
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData$4;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->rating:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setDataSource(Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1101
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData$4;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->rating:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public bridge synthetic valueChanged(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 1095
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData$4;->valueChanged(Ljava/lang/Double;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method
