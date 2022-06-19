.class final synthetic Lcom/google/android/gms/wearable/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/n$a;


# static fields
.field static final a:Lcom/google/android/gms/common/internal/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/c;->a:Lcom/google/android/gms/common/internal/n$a;

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

    check-cast p1, Lcom/google/android/gms/wearable/a$b;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/a$b;->a()Lcom/google/android/gms/wearable/c;

    move-result-object p1

    return-object p1
.end method
