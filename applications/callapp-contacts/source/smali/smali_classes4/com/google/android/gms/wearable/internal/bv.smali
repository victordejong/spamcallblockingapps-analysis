.class final synthetic Lcom/google/android/gms/wearable/internal/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/n$a;


# static fields
.field static final a:Lcom/google/android/gms/common/internal/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/bv;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/bv;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/bv;->a:Lcom/google/android/gms/common/internal/n$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/m;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/k$b;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/k$b;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
