.class final synthetic Lcom/google/android/gms/measurement/internal/k0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/y2;


# static fields
.field static final a:Lcom/google/android/gms/measurement/internal/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/k0;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/k0;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/k0;->a:Lcom/google/android/gms/measurement/internal/y2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/c3;->c:Lcom/google/android/gms/measurement/internal/a3;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d9;->E()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
