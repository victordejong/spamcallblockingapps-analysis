.class final synthetic Lcom/google/android/gms/internal/ads/ct1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# static fields
.field static final a:Lcom/google/android/gms/tasks/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ct1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ct1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ct1;->a:Lcom/google/android/gms/tasks/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->o()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
