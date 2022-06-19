.class abstract Lcom/google/android/gms/internal/measurement/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/hd;

.field private static final b:Lcom/google/android/gms/internal/measurement/hd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/hb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/hb;-><init>(Lcom/google/android/gms/internal/measurement/ha;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hd;->a:Lcom/google/android/gms/internal/measurement/hd;

    new-instance v0, Lcom/google/android/gms/internal/measurement/hc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/hc;-><init>(Lcom/google/android/gms/internal/measurement/ha;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hd;->b:Lcom/google/android/gms/internal/measurement/hd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/measurement/hd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->a:Lcom/google/android/gms/internal/measurement/hd;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/measurement/hd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->b:Lcom/google/android/gms/internal/measurement/hd;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)V
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
