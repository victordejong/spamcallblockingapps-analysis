.class public final Lcom/google/android/gms/wearable/internal/dr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/wearable/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/c;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/wearable/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/wearable/c;->getNodes()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/wearable/internal/dr;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/wearable/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/dr;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/dr;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/dr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getNodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/wearable/n;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/dr;->b:Ljava/util/Set;

    return-object v0
.end method
