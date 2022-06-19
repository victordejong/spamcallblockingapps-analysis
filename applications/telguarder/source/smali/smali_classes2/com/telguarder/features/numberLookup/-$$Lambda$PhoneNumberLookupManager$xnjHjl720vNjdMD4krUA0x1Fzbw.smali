.class public final synthetic Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

.field public final synthetic f$1:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$1:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$0:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$1:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw;->f$4:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->lambda$getContactLookupData$4$PhoneNumberLookupManager(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
