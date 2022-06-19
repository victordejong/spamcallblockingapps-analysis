.class public final Lcom/google/android/gms/internal/ads/cyf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cxp;

.field final b:I

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/ads/cym;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/cym;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/cxt;->a:Lcom/google/android/gms/internal/ads/cxt;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 3
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/cyf;-><init>(Lcom/google/android/gms/internal/ads/cym;ZLcom/google/android/gms/internal/ads/cxp;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/cym;ZLcom/google/android/gms/internal/ads/cxp;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cyf;->d:Lcom/google/android/gms/internal/ads/cym;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cyf;->c:Z

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cyf;->a:Lcom/google/android/gms/internal/ads/cxp;

    const p1, 0x7fffffff

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/cyf;->b:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cxp;)Lcom/google/android/gms/internal/ads/cyf;
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/cyf;

    new-instance v1, Lcom/google/android/gms/internal/ads/cyi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cyi;-><init>(Lcom/google/android/gms/internal/ads/cxp;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cyf;-><init>(Lcom/google/android/gms/internal/ads/cym;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/cyk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cyk;-><init>(Lcom/google/android/gms/internal/ads/cyf;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method final b(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyf;->d:Lcom/google/android/gms/internal/ads/cym;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cym;->a(Lcom/google/android/gms/internal/ads/cyf;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
