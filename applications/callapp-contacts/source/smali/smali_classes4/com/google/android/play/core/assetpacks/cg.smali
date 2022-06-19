.class final synthetic Lcom/google/android/play/core/assetpacks/cg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/tasks/b;


# static fields
.field static final a:Lcom/google/android/play/core/tasks/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/cg;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/cg;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/cg;->a:Lcom/google/android/play/core/tasks/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/ch;->a(Ljava/lang/Exception;)V

    return-void
.end method
