.class final Lcom/google/android/gms/internal/ads/cxt;
.super Lcom/google/android/gms/internal/ads/cxq;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cxt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/cxt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cxt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cxt;->a:Lcom/google/android/gms/internal/ads/cxt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cxq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-string v0, "index"

    .line 6
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/ads/cyg;->a(IILjava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public final b(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
