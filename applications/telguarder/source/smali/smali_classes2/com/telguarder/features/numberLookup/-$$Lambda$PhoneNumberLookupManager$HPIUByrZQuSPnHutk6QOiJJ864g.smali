.class public final synthetic Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

.field public final synthetic f$1:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;ZLandroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$1:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iput-boolean p3, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$2:Z

    iput-object p4, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$3:Landroid/content/Context;

    iput-object p5, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$5:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$1:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iget-boolean v2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$2:Z

    iget-object v3, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$3:Landroid/content/Context;

    iget-object v4, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g;->f$5:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-virtual/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->lambda$lookupResultsForPhoneNumber$1$PhoneNumberLookupManager(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;ZLandroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    return-void
.end method
