.class public final Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;
.super Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;
.source "SourceFile"


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/amazonaws/services/s3/model/inventory/InventoryPredicateVisitor;)V
    .locals 0

    .line 42
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/inventory/InventoryPredicateVisitor;->visit(Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;)V

    return-void
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;->prefix:Ljava/lang/String;

    return-object v0
.end method
