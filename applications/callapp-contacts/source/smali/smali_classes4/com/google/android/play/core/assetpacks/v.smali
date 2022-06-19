.class final synthetic Lcom/google/android/play/core/assetpacks/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/assetpacks/u;


# static fields
.field static final a:Lcom/google/android/play/core/assetpacks/u;

.field static final b:Lcom/google/android/play/core/assetpacks/u;


# instance fields
.field private final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/assetpacks/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/v;-><init>([B)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/v;->b:Lcom/google/android/play/core/assetpacks/u;

    new-instance v0, Lcom/google/android/play/core/assetpacks/v;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/v;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/v;->a:Lcom/google/android/play/core/assetpacks/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/v;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/play/core/assetpacks/v;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    return p1
.end method
