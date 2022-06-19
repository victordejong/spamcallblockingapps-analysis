.class public final synthetic Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$QKlbrIheJpw06JzkfyMln3Zols4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/telguarder/features/numberLookup/PhoneEventLogManager$LastNumberCheckCompletionHandler;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$QKlbrIheJpw06JzkfyMln3Zols4;->f$0:Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$QKlbrIheJpw06JzkfyMln3Zols4;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/String;Ljava/lang/Long;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$QKlbrIheJpw06JzkfyMln3Zols4;->f$0:Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$QKlbrIheJpw06JzkfyMln3Zols4;->f$1:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->lambda$checkForFirmwareSpecificBlockers$0$LookupBlockerCheckManager(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;IJ)V

    return-void
.end method
