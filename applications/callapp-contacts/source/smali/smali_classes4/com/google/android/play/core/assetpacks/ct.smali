.class final synthetic Lcom/google/android/play/core/assetpacks/ct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/n;


# static fields
.field static final a:Lcom/google/android/play/core/internal/n;

.field static final b:Lcom/google/android/play/core/internal/n;


# instance fields
.field private final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/assetpacks/ct;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/ct;-><init>([B)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/ct;->b:Lcom/google/android/play/core/internal/n;

    new-instance v0, Lcom/google/android/play/core/assetpacks/ct;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/ct;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/ct;->a:Lcom/google/android/play/core/internal/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/ct;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/play/core/assetpacks/ct;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/assetpacks/ct;->c:I

    invoke-static {p1}, Lcom/google/android/play/core/internal/bw;->a(Landroid/os/IBinder;)Lcom/google/android/play/core/internal/bx;

    move-result-object p1

    return-object p1
.end method
