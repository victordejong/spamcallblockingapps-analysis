.class public final synthetic Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$2$Vo6ST29GSkk2WLQ6MThoAWGM-xs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/numberLookup/NumberLookupResponse;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/numberLookup/NumberLookupResponse;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$2$Vo6ST29GSkk2WLQ6MThoAWGM-xs;->f$0:Lcom/telguarder/features/numberLookup/NumberLookupResponse;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$2$Vo6ST29GSkk2WLQ6MThoAWGM-xs;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$2$Vo6ST29GSkk2WLQ6MThoAWGM-xs;->f$0:Lcom/telguarder/features/numberLookup/NumberLookupResponse;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$2$Vo6ST29GSkk2WLQ6MThoAWGM-xs;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$2;->lambda$onSuccess$0(Lcom/telguarder/features/numberLookup/NumberLookupResponse;Landroid/content/Context;)V

    return-void
.end method
