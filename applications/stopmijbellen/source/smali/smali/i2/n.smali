.class public final Li2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li2/c;

.field public static final b:Li2/c;

.field public static final c:Li2/c;

.field public static final d:Li2/c;

.field public static final e:Li2/c;

.field public static final f:Li2/c;

.field public static final g:Li2/c;

.field public static final h:Li2/c;

.field public static final i:Li2/c;

.field public static final j:Li2/c;

.field public static final k:Li2/c;

.field public static final l:Li2/c;

.field public static final m:Li2/c;

.field public static final n:Li2/c;

.field public static final o:Li2/c;

.field public static final p:Li2/c;

.field public static final q:Li2/c;

.field public static final r:Li2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    const/4 v1, 0x3

    .line 2
    iput v1, v0, Li2/c;->a:I

    const-string v2, "Google Play In-app Billing API version is less than 3"

    .line 3
    iput-object v2, v0, Li2/c;->b:Ljava/lang/String;

    .line 4
    sput-object v0, Li2/n;->a:Li2/c;

    .line 5
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 6
    iput v1, v0, Li2/c;->a:I

    const-string v2, "Google Play In-app Billing API version is less than 9"

    .line 7
    iput-object v2, v0, Li2/c;->b:Ljava/lang/String;

    .line 8
    sput-object v0, Li2/n;->b:Li2/c;

    .line 9
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 10
    iput v1, v0, Li2/c;->a:I

    const-string v1, "Billing service unavailable on device."

    .line 11
    iput-object v1, v0, Li2/c;->b:Ljava/lang/String;

    .line 12
    sput-object v0, Li2/n;->c:Li2/c;

    .line 13
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    const/4 v1, 0x5

    .line 14
    iput v1, v0, Li2/c;->a:I

    const-string v2, "Client is already in the process of connecting to billing service."

    .line 15
    iput-object v2, v0, Li2/c;->b:Ljava/lang/String;

    .line 16
    sput-object v0, Li2/n;->d:Li2/c;

    .line 17
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 18
    iput v1, v0, Li2/c;->a:I

    const-string v2, "The list of SKUs can\'t be empty."

    .line 19
    iput-object v2, v0, Li2/c;->b:Ljava/lang/String;

    .line 20
    sput-object v0, Li2/n;->e:Li2/c;

    .line 21
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 22
    iput v1, v0, Li2/c;->a:I

    const-string v2, "SKU type can\'t be empty."

    .line 23
    iput-object v2, v0, Li2/c;->b:Ljava/lang/String;

    .line 24
    sput-object v0, Li2/n;->f:Li2/c;

    .line 25
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 26
    iput v1, v0, Li2/c;->a:I

    const-string v2, "Product type can\'t be empty."

    .line 27
    iput-object v2, v0, Li2/c;->b:Ljava/lang/String;

    .line 28
    sput-object v0, Li2/n;->g:Li2/c;

    .line 29
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    const/4 v2, -0x2

    .line 30
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support extra params."

    .line 31
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 32
    sput-object v0, Li2/n;->h:Li2/c;

    .line 33
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 34
    iput v1, v0, Li2/c;->a:I

    const-string v3, "Invalid purchase token."

    .line 35
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 36
    sput-object v0, Li2/n;->i:Li2/c;

    const/4 v0, 0x6

    .line 37
    new-instance v3, Li2/c;

    invoke-direct {v3}, Li2/c;-><init>()V

    .line 38
    iput v0, v3, Li2/c;->a:I

    const-string v0, "An internal error occurred."

    .line 39
    iput-object v0, v3, Li2/c;->b:Ljava/lang/String;

    .line 40
    sput-object v3, Li2/n;->j:Li2/c;

    .line 41
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 42
    iput v1, v0, Li2/c;->a:I

    const-string v3, "SKU can\'t be null."

    .line 43
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    new-instance v3, Li2/c;

    invoke-direct {v3}, Li2/c;-><init>()V

    .line 45
    iput v0, v3, Li2/c;->a:I

    const-string v0, ""

    .line 46
    iput-object v0, v3, Li2/c;->b:Ljava/lang/String;

    .line 47
    sput-object v3, Li2/n;->k:Li2/c;

    const/4 v0, -0x1

    .line 48
    new-instance v3, Li2/c;

    invoke-direct {v3}, Li2/c;-><init>()V

    .line 49
    iput v0, v3, Li2/c;->a:I

    const-string v0, "Service connection is disconnected."

    .line 50
    iput-object v0, v3, Li2/c;->b:Ljava/lang/String;

    .line 51
    sput-object v3, Li2/n;->l:Li2/c;

    const/4 v0, -0x3

    .line 52
    new-instance v3, Li2/c;

    invoke-direct {v3}, Li2/c;-><init>()V

    .line 53
    iput v0, v3, Li2/c;->a:I

    const-string v0, "Timeout communicating with service."

    .line 54
    iput-object v0, v3, Li2/c;->b:Ljava/lang/String;

    .line 55
    sput-object v3, Li2/n;->m:Li2/c;

    .line 56
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 57
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support subscriptions."

    .line 58
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 59
    sput-object v0, Li2/n;->n:Li2/c;

    .line 60
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 61
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support subscriptions update."

    .line 62
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 63
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 64
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support get purchase history."

    .line 65
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 66
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 67
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support price change confirmation."

    .line 68
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 69
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 70
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support billing on VR."

    .line 71
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 72
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 73
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Play Store version installed does not support cross selling products."

    .line 74
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 75
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 76
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support multi-item purchases."

    .line 77
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 78
    sput-object v0, Li2/n;->o:Li2/c;

    .line 79
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 80
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support offer_id_token."

    .line 81
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 82
    sput-object v0, Li2/n;->p:Li2/c;

    .line 83
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 84
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support ProductDetails."

    .line 85
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 86
    sput-object v0, Li2/n;->q:Li2/c;

    .line 87
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 88
    iput v2, v0, Li2/c;->a:I

    const-string v3, "Client does not support in-app messages."

    .line 89
    iput-object v3, v0, Li2/c;->b:Ljava/lang/String;

    .line 90
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 91
    iput v2, v0, Li2/c;->a:I

    const-string v2, "Client does not support alternative billing."

    .line 92
    iput-object v2, v0, Li2/c;->b:Ljava/lang/String;

    .line 93
    sput-object v0, Li2/n;->r:Li2/c;

    .line 94
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 95
    iput v1, v0, Li2/c;->a:I

    const-string v1, "Unknown feature"

    .line 96
    iput-object v1, v0, Li2/c;->b:Ljava/lang/String;

    return-void
.end method
