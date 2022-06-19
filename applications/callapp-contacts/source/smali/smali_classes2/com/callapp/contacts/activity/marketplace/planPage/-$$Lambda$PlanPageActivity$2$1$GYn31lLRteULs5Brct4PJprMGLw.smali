.class public final synthetic Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$2$1$GYn31lLRteULs5Brct4PJprMGLw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$2$1$GYn31lLRteULs5Brct4PJprMGLw;->f$0:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$2$1$GYn31lLRteULs5Brct4PJprMGLw;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$2$1$GYn31lLRteULs5Brct4PJprMGLw;->f$0:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$2$1$GYn31lLRteULs5Brct4PJprMGLw;->f$1:Ljava/util/List;

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->lambda$GYn31lLRteULs5Brct4PJprMGLw(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V

    return-void
.end method
