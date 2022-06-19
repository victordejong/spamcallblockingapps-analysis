.class final synthetic Lcom/google/android/gms/measurement/internal/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/cy;


# static fields
.field static final a:Lcom/google/android/gms/measurement/internal/cy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/cb;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/cb;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/cb;->a:Lcom/google/android/gms/measurement/internal/cy;

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

    sget-object v0, Lcom/google/android/gms/measurement/internal/dc;->a:Lcom/google/android/gms/measurement/internal/da;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/mf;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
