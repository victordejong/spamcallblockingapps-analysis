.class final Lcom/android/billingclient/api/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/android/billingclient/api/g;

.field static final b:Lcom/android/billingclient/api/g;

.field static final c:Lcom/android/billingclient/api/g;

.field static final d:Lcom/android/billingclient/api/g;

.field static final e:Lcom/android/billingclient/api/g;

.field static final f:Lcom/android/billingclient/api/g;

.field static final g:Lcom/android/billingclient/api/g;

.field static final h:Lcom/android/billingclient/api/g;

.field static final i:Lcom/android/billingclient/api/g;

.field static final j:Lcom/android/billingclient/api/g;

.field static final k:Lcom/android/billingclient/api/g;

.field static final l:Lcom/android/billingclient/api/g;

.field static final m:Lcom/android/billingclient/api/g;

.field static final n:Lcom/android/billingclient/api/g;

.field static final o:Lcom/android/billingclient/api/g;

.field static final p:Lcom/android/billingclient/api/g;

.field static final q:Lcom/android/billingclient/api/g;

.field static final r:Lcom/android/billingclient/api/g;

.field static final s:Lcom/android/billingclient/api/g;

.field static final t:Lcom/android/billingclient/api/g;

.field static final u:Lcom/android/billingclient/api/g;

.field static final v:Lcom/android/billingclient/api/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v1, 0x3

    .line 1000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v2, "Google Play In-app Billing API version is less than 3"

    .line 2000
    iput-object v2, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->a:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 3000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v2, "Google Play In-app Billing API version is less than 9"

    .line 4000
    iput-object v2, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->b:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 5000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v2, "Billing service unavailable on device."

    .line 6000
    iput-object v2, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->c:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v2, 0x5

    .line 7000
    iput v2, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Client is already in the process of connecting to billing service."

    .line 8000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->d:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 9000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v1, "Play Store version installed does not support cross selling products."

    .line 10000
    iput-object v1, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->e:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 11000
    iput v2, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v1, "The list of SKUs can\'t be empty."

    .line 12000
    iput-object v1, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->f:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 13000
    iput v2, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v1, "SKU type can\'t be empty."

    .line 14000
    iput-object v1, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->g:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v1, -0x2

    .line 15000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Client does not support extra params."

    .line 16000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->h:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 17000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Client does not support the feature."

    .line 18000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->i:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 19000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Client does not support get purchase history."

    .line 20000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->j:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 21000
    iput v2, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Invalid purchase token."

    .line 22000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->k:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, 0x6

    .line 23000
    iput v3, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "An internal error occurred."

    .line 24000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->l:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, 0x4

    .line 25000
    iput v3, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Item is unavailable for purchase."

    .line 26000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->m:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 27000
    iput v2, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "SKU can\'t be null."

    .line 28000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->n:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 29000
    iput v2, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "SKU type can\'t be null."

    .line 30000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->o:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, 0x0

    .line 31000
    iput v3, v0, Lcom/android/billingclient/api/g$a;->a:I

    .line 46
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->p:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, -0x1

    .line 32000
    iput v3, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Service connection is disconnected."

    .line 33000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->q:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    const/4 v3, -0x3

    .line 34000
    iput v3, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Timeout communicating with service."

    .line 35000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->r:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 36000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Client doesn\'t support subscriptions."

    .line 37000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->s:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 38000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v3, "Client doesn\'t support subscriptions update."

    .line 39000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->t:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 40000
    iput v1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v1, "Client doesn\'t support multi-item purchases."

    .line 41000
    iput-object v1, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->u:Lcom/android/billingclient/api/g;

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 42000
    iput v2, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string v1, "Unknown feature"

    .line 43000
    iput-object v1, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/y;->v:Lcom/android/billingclient/api/g;

    return-void
.end method
