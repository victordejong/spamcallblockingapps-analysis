.class final synthetic Lcom/google/android/gms/measurement/internal/h1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/measurement/internal/y2;


# static fields
.field static final a:Lcom/google/android/gms/measurement/internal/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/h1;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/h1;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/h1;->a:Lcom/google/android/gms/measurement/internal/y2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/c3;->b:Lcom/google/android/gms/measurement/internal/a3;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/k9;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
