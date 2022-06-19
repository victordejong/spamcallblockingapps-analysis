.class final synthetic Lcom/google/android/gms/internal/ads/ejd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ejd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ejd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ejd;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ejb;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
