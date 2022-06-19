.class public final synthetic Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

.field public final synthetic f$4:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$3:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iput-object p5, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$4:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$3:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iget-object v4, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$M-md9rI9uugZ2gTCusDsjNTiAD8;->f$4:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->lambda$lookupResultsForPhoneNumber$3$PhoneNumberLookupManager(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    return-void
.end method
