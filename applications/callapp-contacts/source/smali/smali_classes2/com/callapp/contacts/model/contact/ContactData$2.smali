.class Lcom/callapp/contacts/model/contact/ContactData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/contact/ContactData;->updateLatLng()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback<",
        "Landroid/util/Pair<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData$2;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Landroid/util/Pair;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")V"
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData$2;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->access$002(Lcom/callapp/contacts/model/contact/ContactData;D)D

    .line 1045
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/ContactData$2;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->access$102(Lcom/callapp/contacts/model/contact/ContactData;D)D

    .line 1046
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData$2;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setDataSource(Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 1047
    iget-object p1, p0, Lcom/callapp/contacts/model/contact/ContactData$2;->this$0:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public bridge synthetic valueChanged(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 1040
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData$2;->valueChanged(Landroid/util/Pair;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method
