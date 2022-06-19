.class public final synthetic Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Lcom/telguarder/features/numberLookup/NumberLookupResponse;

.field public final synthetic f$4:Lcom/telguarder/helpers/backend/BackendCallbackListener;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$3:Lcom/telguarder/features/numberLookup/NumberLookupResponse;

    iput-object p5, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$4:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    iput p6, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$3:Lcom/telguarder/features/numberLookup/NumberLookupResponse;

    iget-object v4, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$4:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    iget v5, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;->lambda$onSuccess$0$PhoneEventLogManager$1(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V

    return-void
.end method
