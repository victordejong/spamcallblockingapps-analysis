.class final synthetic Lcom/google/android/gms/internal/measurement/bm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/by;


# static fields
.field static final a:Lcom/google/android/gms/internal/measurement/by;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/bm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/bm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/bm;->a:Lcom/google/android/gms/internal/measurement/by;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/bj;->d()Lcom/google/android/gms/internal/measurement/bx;

    move-result-object v0

    return-object v0
.end method
